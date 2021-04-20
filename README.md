Creating a 64-bit Operating System and Printing to Screen

Special thanks to this youtube series : https://www.youtube.com/playlist?list=PLZQftyCk7_SeZRitx5MjBKzTtvk0pHMtp

Required Softwares:
IDE - Visual Studio Code.
Build Environment - Docker.
Emulating and running commands - Qemu

Languages Used: 
Assembly Language
C Programming Language

Important Commands:
1) Building Linux Image: docker build buildenv -t myos-buildenv

2) Entering the Image:
Linux or MacOS: docker run --rm -it -v "$pwd":/root/env myos-buildenv
Windows (CMD): docker run --rm -it -v "%cd%":/root/env myos-buildenv
Windows (PowerShell): docker run --rm -it -v "${pwd}:/root/env" myos-buildenv

3) Building x86_64 architecture: make build-x86_64
4) Leaving the Linux Image/build environment: exit
5) Emulating: qemu-system-x86_64 -cdrom dist/x86_64/kernel.iso
