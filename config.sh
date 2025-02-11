#!/usr/bin/bash
# shellcheck disable=SC2034

# Copyright (c) 2021-2022 @grm34 Neternels Team
#
# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation
# files (the "Software"), to deal in the Software without restriction,
# including without limitation the rights to use, copy, modify, merge,
# publish, distribute, sublicense, and/or sell copies of the Software,
# and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


########################
### GENERAL SETTINGS ###
########################

# TIMEZONE (e.q. "America/NewYork")
# To set the time in your time zone
# =================================
TIMEZONE="Europe/Paris"


# DEVICE CODENAME (e.q. "X00TD")
# The question will be asked by the script
# when this option is set to:  "default"
# ========================================
CODENAME="default"


# BUILDER NAME (displayed in proc/version)
# The output of `whoami` will be used
# when this option is set to:  "default"
# ========================================
BUILDER="default"


# BUILDER HOST (displayed in proc/version)
# The output of `hostname` will be used
# when this option is set to:  "default"
# ========================================
HOST="default"


# DEFAULT TOOLCHAIN COMPILER
# "Proton-Clang" | "Eva-GCC" | "Proton-GCC"
# =========================================
DEFAULT_COMPILER="Proton-Clang"


# ANDROID KERNEL DIRECTORY
# The question will be asked by the script
# when this option is set to:  "default"
# ========================================
KERNEL_DIR="default"


# TARGET ARCHITECTURE
# "arm" | "arm64" | "x86"
# =======================
ARCH="arm64"


# ANDROID GLOBAL VERSION
# This setting is optional but it
# could be required by some kernels
# =================================
PLATFORM_VERSION="12"
ANDROID_MAJOR_VERSION="s"


# KERNEL VARIANT
# "Stable" | "CAF" | "..."
# ========================
KERNEL_VARIANT="Nethunter"


# KERNEL NAME
# Enter a name for your kernel
# ============================
TAG="Neternels"


# TELEGRAM API CONFIGURATION
# Who the F* wants to get real time kernel
# build status in Telegram group or channel?
# ==========================================
TELEGRAM_CHAT_ID=""
TELEGRAM_BOT_TOKEN=""



#########################
### ADVANCED SETTINGS ###
#########################

# DO NOT EDIT WHEN NOT SURE !

# Some required dependencies
# Be carefull adding some deps, they are checked
# with "which" bash in-built. Changes like variables
# replacement may be required in "lib/requirements.sh".
# =====================================================
DEPENDENCIES=(git zip llvm lld clang expect)


# ZenMaxBuilder repo
# Change this if you are using
# your own ZenMaxBuilder fork.
# ================================
NB_BRANCH="main"


# AnyKernel repo
# Change this if you are using
# your own AnyKernel repository.
# ==============================
ANYKERNEL_DIR="AnyKernel"
ANYKERNEL_URL="https://github.com/grm34/AnyKernel3.git"
ANYKERNEL_BRANCH="ZenMaxBuilder"


# Proton-Clang repo
# Change this if you are using
# your own Clang toolchain repository.
# ====================================
PROTON_DIR="${PWD}/toolchains/proton_clang"
PROTON_URL="https://github.com/kdrag0n/proton-clang.git"
PROTON_BRANCH="master"


# GCC-ARM64 repo
# Change this if you are using
# your own GCC ARM64 repository.
# ==============================
GCC_ARM64_DIR="${PWD}/toolchains/gcc_arm64"
GCC_ARM64_URL="https://github.com/mvaisakh/gcc-arm64.git"
GCC_ARM64_BRANCH="gcc-master"


# GCC-ARM32 repo
# Change this if you are using
# your own GCC ARM32 repository.
# ==============================
GCC_ARM_DIR="${PWD}/toolchains/gcc_arm"
GCC_ARM_URL="https://github.com/mvaisakh/gcc-arm.git"
GCC_ARM_BRANCH="gcc-master"


# Linux Stable repo
# To get latest stable tag.
# =========================
LINUX_STABLE="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git"


# LLVM Library
# Set this setting to
# "True" to export "LLVM=1".
# ==========================
LLVM=True


# Link Time Optimization (LTO)
# ============================
LTO=False
LTO_LIBRARY=ld.lld
LTO_LIBRARY_DIR=${PROTON_DIR}/lib


# Kernel init.spectrum.rc
# =======================
SPECTRUM="init.spectrum.rc"


# Proton-Clang Settings
# =====================
PROTON_CLANG_PATH=${PROTON_DIR}/bin
PROTON_CLANG_OPTIONS=(
    ARCH=arm64
    SUBARCH=arm64
    CROSS_COMPILE=aarch64-linux-gnu-
    CROSS_COMPILE_ARM32=arm-linux-gnueabi-
    CC=clang
    AR=llvm-ar
    NM=llvm-nm
    OBJCOPY=llvm-objcopy
    OBJDUMP=llvm-objdump
    STRIP=llvm-strip
)


# Eva-GCC Settings
# ================
EVA_GCC_PATH=${GCC_ARM64_DIR}/bin:${GCC_ARM_DIR}/bin
EVA_GCC_OPTIONS=(
    ARCH=arm64
    SUBARCH=arm64
    CROSS_COMPILE_ARM32=arm-eabi-
    CROSS_COMPILE=aarch64-elf-
    AR=aarch64-elf-ar
    OBJDUMP=aarch64-elf-objdump
    STRIP=aarch64-elf-strip
)


# Proton-GCC Settings
# ===================
PROTON_GCC_PATH=${PROTON_DIR}/bin:${GCC_ARM64_DIR}/bin:${GCC_ARM_DIR}/bin
PROTON_GCC_OPTIONS=(
    ARCH=arm64
    SUBARCH=arm64
    CC=clang
    CROSS_COMPILE=aarch64-linux-gnu-
    CROSS_COMPILE_ARM32=arm-linux-gnueabi-
    AR=llvm-ar
    AS=llvm-as
    NM=llvm-nm
    STRIP=llvm-strip
    OBJCOPY=llvm-objcopy
    OBJDUMP=llvm-objdump
    OBJSIZE=llvm-size
    READELF=llvm-readelf
    HOSTCC=clang
    HOSTCXX=clang++
    HOSTAR=llvm-ar
    CLANG_TRIPLE=aarch64-linux-gnu-
)


# Exclude this variables from logs
# ================================
EXCLUDE_VARS="RED=\|GREEN=\|YELL=\|BLUE=\|CYAN=\|BOLD=\|NC=\|\
TELEGRAM_CHAT_ID=\|TELEGRAM_BOT_TOKEN=\|CONFIRM=\|COUNT=\|OPT=\|\
UNWANTED=\|LENTH=\|NUMBER=\|BASH_ARGC=\|BASH_REMATCH=\|CHAR=\|\
COLUMNS=\|LINES=\|PIPESTATUS=\|TIME=\|MSG_*\|OPTION=\|ENTRY=\|\
FOLDERS=\|FOLDER=\|BASH_LINENO=\|BASH_SOURCE=\|STATUS_MSG=\|\
MSG=\|M=\|S=\|B=\|API=\|FUNCNAME=\|FILE=\|LINE=\|PACKAGE=\|\
_=\|UW=\|CMD=\|YELLOW=\|BASH_ARGV=\|OLD_PWD=\|OPTIND=\|REPLY="

