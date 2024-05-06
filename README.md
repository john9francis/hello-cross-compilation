# C++ cross compilation with zig

- date: 5/6/2024

This is a simple hello world application being cross compiled using zig.

# How to compile:
```
make -f windows.Makefile windows
make -f windows.Makefile macOS
```

# CPU architectures and operating systems

These are the cpu architectures and operating systems available with zig c++ compiler: (from [zig guide cross compilation](https://zig.guide/build-system/cross-compilation/))

Some CPU architectures that you can cross-compile for:

    - x86_64
    - arm
    - aarch64
    - i386
    - riscv64
    - wasm32

Some operating systems you can cross-compile for:

    - linux
    - macos
    - windows
    - freebsd
    - netbsd
    - dragonfly
    - UEFI
