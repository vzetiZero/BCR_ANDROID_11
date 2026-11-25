@echo off
REM ============================================================
REM  BCR Android - build + push
REM  Bat buoc: SAU MOI LAN SUA/UPDATE phai chay script nay.
REM  No se: build APK -> ky -> commit -> push len GitHub.
REM ============================================================
setlocal
cd /d "%~dp0"

set "REPO=https://github.com/vzetiZero/BCR_ANDROID_11.git"

echo ============================================================
echo  BUOC 1/2: BUILD APK
echo ============================================================
call "%~dp0build-apk.bat"
if errorlevel 1 (
  echo *** Build that bai - khong push ***
  exit /b 1
)

echo.
echo ============================================================
echo  BUOC 2/2: COMMIT + PUSH len %REPO%
echo ============================================================
set "MSG=%~1"
if "%MSG%"=="" set "MSG=update: rebuild apk %DATE% %TIME%"

git add -A
git commit -m "%MSG%"
if errorlevel 1 (
  echo Khong co thay doi de commit - van thu push.
)

git push -u origin main
if errorlevel 1 (
  echo.
  echo *** PUSH THAT BAI ***
  echo Kiem tra: dang nhap GitHub (git credential), quyen repo, mang.
  exit /b 1
)

echo.
echo ============================================================
echo  XONG: da build va push len %REPO%
echo ============================================================
