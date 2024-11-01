#!/bin/bash -e

export ANDROID_NDK_ROOT=/mnt/d/ndk/linux/android-ndk-r21e

work_path=$(dirname $(readlink -f $0))

arrays=()

input_abi=$1

if [[ $input_abi == 'arm32' ]]
then
	echo "arm32"
	arrays=("armeabi-v7a")
elif [[ $input_abi == 'all' ]]
then
	echo "all arch"
    arrays=("arm64-v8a" "armeabi-v7a" "x86" "x86_64")
elif [[ $input_abi == 'x86' ]]
then
    echo "x86 arch"
    arrays=("x86")
elif [[ $input_abi == 'x86_64' ]]
then
    echo "x86_64 arch"
    arrays=("x86_64")
else
	echo "arm64"
	arrays=("arm64-v8a")
fi

for abi_name in ${arrays[*]} 
do
    cd $work_path
	echo "开始编译android-pjsip 库($abi_name)..."

    APP_PLATFORM=android-16 NDK_TOOLCHAIN_VERSION=4.9 TARGET_ABI="$abi_name" ./configure-android --use-ndk-cflags

    echo "make dep"
    make dep

    echo "clean"
    make clean

    echo "make"
    make

    echo "cd swig"
    cd pjsip-apps/src/swig

    echo "swig clean"
    make clean

    echo "make swig"
    make 

    cd java

    echo "make clean"
    make clean

    echo "make android library..."
    make

    echo ">_< 编译成功 请在 pjsip-apps/src/swig/java/android/app/src/main/jniLibs"
done



