编译步骤:
1. 在pjproject-2.10\pjlib\include\pj\config_site.h

#define PJ_CONFIG_ANDROID 1
#include <pj/config_site_sample.h>

2. 
APP_PLATFORM=android-16 NDK_TOOLCHAIN_VERSION=4.9 TARGET_ABI=arm64-v8a ./configure-android --use-ndk-cflags
APP_PLATFORM=android-16 NDK_TOOLCHAIN_VERSION=4.9 TARGET_ABI=armeabi-v7a ./configure-android --use-ndk-cflags
APP_PLATFORM=android-16 NDK_TOOLCHAIN_VERSION=4.9 TARGET_ABI=x86 ./configure-android --use-ndk-cflags
APP_PLATFORM=android-16 NDK_TOOLCHAIN_VERSION=4.9 TARGET_ABI=x86_64 ./configure-android --use-ndk-cflags

3. make dep && make clean && make

4. cd pjsip_apps/src/swig && make clean && make

5. cd java && make clean && make

done
