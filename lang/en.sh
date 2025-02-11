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

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# lib/main.sh
# ===========
MSG_ERR_LINUX="you must run this script on Linux"
MSG_ERR_PWD="run this script from ZenMaxBuilder directory"
MSG_ERR_KDIR="invalid kernel directory (see config.sh)"
MSG_ERR_EOPT="you must specify an option (use --help)"
MSG_ERR_MARG="missing argument for"
MSG_ERR_IOPT="invalid option"
MSG_ERR_KBOARD="keyboard interrupt"
MSG_NOTE_START="Starting new Android Kernel build"
MSG_NOTE_LINUXVER="Make kernel version"
MSG_NOTE_CANCEL="Build cancelled"
MSG_NOTE_SUCCESS="Successfully compiled after"
MSG_NOTE_ZIPPED="Successfully zipped, take a look at builds folder"

# lib/manager.sh
# ==============
MSG_HELP_H="show this message and exit"
MSG_HELP_S="start new kernel compilation"
MSG_HELP_U="update script and toolchains"
MSG_HELP_L="show list of your kernels"
MSG_HELP_T="show the latest Linux tag"
MSG_HELP_M="send message on Telegram"
MSG_HELP_F="send file on Telegram"
MSG_HELP_Z="create flashable zip"
MSG_HELP_INFO="More information at"
MSG_ERR_CONFIRM="enter yes or no"
MSG_ERROR="Error"
MSG_ERR_LINE="Line"
MSG_ERR_FROM="From"
MSG_EXIT="Exiting ZenMaxBuilder"
MSG_NOTE_CLEAN_AK3="Cleaning AnyKernel repository"
MSG_NOTE_LISTKERNEL="List of Android Kernels"
MSG_ERR_LISTKERNEL="no kernel found in out folder"
MSG_NOTE_LTAG="Scanning Linux Stable (this could take a while)"
MSG_SUCCESS_LTAG="Latest Linux Stable"
MSG_ERR_LTAG="invalid Linux Stable tag"

# lib/flasher.sh
# ==============
MSG_NOTE_ZIP="Started zip creation"
MSG_ERR_DIR="dir not found"
MSG_NOTE_SIGN="Signing Zip file with AOSP keys"
MSG_ERR_IMG="invalid kernel image"

# lib/maker.sh
# ============
MSG_NOTE_MAKE_CLEAN="Make clean (this could take a while)"
MSG_NOTE_MRPROPER="Make mrproper (this could take a while)"
MSG_NOTE_DEFCONFIG="Make config"
MSG_NOTE_MENUCONFIG="Make menuconfig"
MSG_NOTE_SAVE="Saving config"
MSG_NOTE_MAKE="Starting new build for"

# lib/requirements.sh
# ===================
MSG_ERR_OS="OS not found, some dependencies may be required"

# lib/telegram.sh
# ===============
MSG_NOTE_SEND="Sending message on Telegram"
MSG_ERR_API="you must configure Telegram API settings first"
MSG_NOTE_UPLOAD="Uploading on Telegram"
MSG_ERR_FILE="file not found"
MSG_TG_NEW="Android Kernel Build Triggered"
MSG_TG_FAILED="Build failed to compile after"
MSG_TG_CAPTION="Build took"
MSG_HTML_A="Android Device"
MSG_HTML_B="Kernel Version"
MSG_HTML_C="Kernel Variant"
MSG_HTML_D="Host Builder"
MSG_HTML_E="Host Core Count"
MSG_HTML_F="Compiler Used"
MSG_HTML_G="Operating System"
MSG_HTML_H="Build Tag"
MSG_HTML_I="Android"

# lib/updater.sh
# ==============
MSG_UP_NB="Updating ZenMaxBuilder"
MSG_UP_AK3="Updating AnyKernel"
MSG_UP_CLANG="Updating Proton Clang"
MSG_UP_GCC64="Updating GCC ARM64"
MSG_UP_GCC32="Updating GCC ARM"

# lib/prompter.sh
# ===============
MSG_ASK_KDIR="Enter kernel path (use TAB for autocompletion)"
MSG_ERR_KDIR="invalid kernel directory"
MSG_ASK_TC="Do you wish to use compiler"
MSG_SELECT_TC="Select Toolchain Compiler to use"
MSG_ERR_SELECT="invalid selection (use number)"
MSG_ASK_DEV="Enter android device codename (e.q. X00TD)"
MSG_ERR_DEV="invalid device codename"
MSG_ASK_DEF="Select the defconfig file to use"
MSG_ASK_CONF="Do you wish to edit Kernel with menuconfig"
MSG_ASK_CPU="Do you wish to use all available CPU Cores"
MSG_ASK_CORES="Enter the amount of CPU Cores to use"
MSG_ERR_CORES="invalid amount of cores"
MSG_ERR_TOTAL="total"
MSG_ASK_TG="Do you wish to send build status on Telegram"
MSG_ASK_MCLEAN="Do you wish to make clean build"
MSG_ASK_SAVE_DEF="Do you wish to save and use"
MSG_ASK_USE_DEF="Do you wish to use original defconfig"
MSG_START="Do you wish to start"
MSG_RUN_AGAIN="Do you wish to try again"
MSG_ASK_ZIP="Do you wish to zip"
MSG_ASK_IMG="Enter kernel image to use (e.q. Image.gz-dtb)"
MSG_ASK_PKG="Package not found, do you wish to install"
MSG_ERR_DEP="missing dependency"
MSG_ERR_MFAIL="compilation may fail"
MSG_ASK_CLONE_TC="Toolchain not found, do you wish to clone"
MSG_ERR_TCDIR="invalid toolchain path"
MSG_ERR_SEE_CONF="(see config.sh)"
MSG_ASK_CLONE_AK3="Anykernel not found, do you wish to clone"
MSG_ERR_PATH="invalid path for"
MSG_SAVE_USER_CONFIG="Do you wish to save your config.sh"

