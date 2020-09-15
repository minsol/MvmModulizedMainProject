#!/bin/bash
# MvmFramework 自动编译

# echo util
COLOR_Cyan='\033[0;36m'
COLOR_Red='\033[41;37m'
COLOR_Default='\033[0;m'

function echo_log() {
echo "${COLOR_Cyan}$1${COLOR_Default}"
}

function echo_error() {
echo "${COLOR_Red}$1${COLOR_Default}"
}

# 计时
SECONDS=0
NOW=$(date +"%Y_%m_%d_%H_%M_%S")

SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
echo_log "${SHELL_FOLDER}"

MvmFrameworkDIR="${SHELL_FOLDER}/MvmFramework"
MvmFrameworkBuildDIR="${SHELL_FOLDER}/MvmFramework/MVMBuild"

MvmFrameworkBuildIphoneosDIR="${MvmFrameworkBuildDIR}/Release-iphoneos/MvmFramework.framework"
MvmFrameworkBuildIphonesimulatorDIR="${MvmFrameworkBuildDIR}/Release-iphonesimulator/MvmFramework.framework"

MvmHomeModuleDIR="${SHELL_FOLDER}/MvmHomeModule/MvmHome"


rm -rf "${MvmFrameworkBuildDIR}"



cd "${MvmFrameworkDIR}"

xcodebuild -target MvmFramework ONLY_ACTIVE_ARCH=NO -sdk iphonesimulator BUILD_DIR="${MvmFrameworkBuildDIR}"
xcodebuild -target MvmFramework ONLY_ACTIVE_ARCH=NO -sdk iphoneos BUILD_DIR="${MvmFrameworkBuildDIR}"

lipo -create "${MvmFrameworkBuildIphoneosDIR}/MvmFramework" "${MvmFrameworkBuildIphonesimulatorDIR}/MvmFramework" -output "${MvmFrameworkBuildIphoneosDIR}/MvmFramework"
cp -R "${MvmFrameworkBuildIphoneosDIR}" "${MvmHomeModuleDIR}"
