@echo off
REM ============================================================
REM  BCR Android - build script (apktool -> zipalign -> sign)
REM  Sua code trong: bcr_apktool\  (smali)  va  assets\bcr_core.js
REM  Ket qua:        build\BCRAndroid-mod.apk
REM ============================================================
setlocal
set "JAVA_HOME=C:\dev\jdk17"
set "ANDROID_HOME=C:\dev\android-sdk"
set "ANDROID_SDK_ROOT=C:\dev\android-sdk"
set "PATH=%JAVA_HOME%\bin;C:\dev\gradle\bin;C:\dev\kotlin\bin;%ANDROID_HOME%\cmdline-tools\latest\bin;%ANDROID_HOME%\platform-tools;%PATH%"
set "BT=%ANDROID_HOME%\build-tools\37.0.0"
set "APKTOOL=C:\dev\tools\apktool.jar"

cd /d "%~dp0"

if not exist build mkdir build

echo [1/4] Building with apktool...
java -Xmx4g -jar "%APKTOOL%" b -f "bcr_apktool" -o "build\unsigned.apk"
if errorlevel 1 goto :fail

echo [2/4] Zipalign...
"%BT%\zipalign.exe" -f 4 "build\unsigned.apk" "build\aligned.apk"
if errorlevel 1 goto :fail

echo [3/4] Signing...
"%BT%\apksigner.bat" sign --ks "build\bcr-release.jks" --ks-pass pass:bcr123456 --key-pass pass:bcr123456 --ks-key-alias bcr --out "build\BCRAndroid-mod.apk" "build\aligned.apk"
if errorlevel 1 goto :fail

echo [4/4] Verify...
"%BT%\apksigner.bat" verify --print-certs "build\BCRAndroid-mod.apk"

echo.
echo DONE: build\BCRAndroid-mod.apk
dir /b "build\BCRAndroid-mod.apk"
goto :eof

:fail
echo.
echo *** BUILD FAILED ***
exit /b 1
