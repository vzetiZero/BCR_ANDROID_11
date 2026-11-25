@echo off
REM Cài APK đã build lên thiết bị/emulator đang kết nối (adb)
setlocal
set "ANDROID_HOME=C:\dev\android-sdk"
set "PATH=%ANDROID_HOME%\platform-tools;%PATH%"
cd /d "%~dp0"

adb devices
adb install -r -d "build\BCRAndroid-mod.apk"
if errorlevel 1 (
  echo Thu go ban cu truoc:
  adb uninstall com.bcr.android
  adb install "build\BCRAndroid-mod.apk"
)
echo.
echo Xem log:  adb logcat -s BCR:D chromium:D
