# build/os-auto.mak.  Generated from os-auto.mak.in by configure.

export OS_CFLAGS   := $(CC_DEF)PJ_AUTOCONF=1  -target i686-none-linux-android16 -fdata-sections -ffunction-sections -funwind-tables -no-canonical-prefixes --sysroot /mnt/d/ndk/linux/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/sysroot -Wno-invalid-command-line-argument -Wno-unused-command-line-argument -D_FORTIFY_SOURCE=2 -fPIC -I/mnt/d/ndk/linux/android-ndk-r21d/sources/cxx-stl/llvm-libc++/include -I/mnt/d/ndk/linux/android-ndk-r21d/sources/cxx-stl/llvm-libc++/../llvm-libc++abi/include -Ijni -DANDROID -nostdinc++ -Wformat -Werror=format-security -mstackrealign   -DPJ_IS_BIG_ENDIAN=0 -DPJ_IS_LITTLE_ENDIAN=1

export OS_CXXFLAGS := $(CC_DEF)PJ_AUTOCONF=1  -fno-exceptions -fno-rtti -fexceptions -frtti  

export OS_LDFLAGS  :=  -lgcc -Wl,--exclude-libs,libgcc.a -Wl,--exclude-libs,libgcc_real.a -latomic -Wl,--exclude-libs,libatomic.a -target i686-none-linux-android16 -no-canonical-prefixes -Wl,--build-id -nostdlib++ -Wl,--no-undefined -Wl,--fatal-warnings -lc -lm   -lm  /mnt/d/ndk/linux/android-ndk-r21d/sources/cxx-stl/llvm-libc++/libs/x86/libc++_shared.so -lOpenSLES -llog -lGLESv2 -lEGL -landroid

export OS_SOURCES  := 


