# BCR Android (bản mod)

APK gốc: `BCRAndroid-v1.16.apk` (package `com.bcr.android`, versionCode 16, versionName 1.16,
minSdk 26, targetSdk 37).

## QUY TẮC BẮT BUỘC (đọc trước khi làm bất cứ gì)

> **Sau MỖI lần cập nhật hoặc sửa chữa, BẮT BUỘC phải build lại APK và push lên
> https://github.com/vzetiZero/BCR_ANDROID_11.git**
>
> Không được coi một thay đổi là "xong" khi chưa push. Dùng:
>
> ```bat
> build-and-push.bat "mo ta thay doi"
> ```
>
> hoặc thủ công: `build-apk.bat` → `git add -A` → `git commit -m "..."` → `git push origin main`.

## Cấu trúc

| Đường dẫn | Nội dung |
|---|---|
| `bcr_apktool/` | **Source chính để sửa** (apktool decode: smali, res, assets, AndroidManifest.xml) |
| `bcr_apktool/assets/bcr_core.js` | JS inject vào WebView: đọc bàn, khay chip, ô cược, bấm chip/ô |
| `bcr_apktool/smali_classes5/com/bcr/android/core/` | `Runner`, `SitePrefs` — logic chạy/đọc sảnh |
| `bcr_apktool/smali_classes6/com/bcr/android/web/` | `Bridge` — cầu nối WebView ↔ native (WebMessageListener) |
| `bcr_apktool/smali_classes5/com/bcr/android/ui/` | `MainActivity`, `ControlPanel`, `NavBar` |
| `build/` | APK output + keystore ký |
| `build-apk.bat` | Build + zipalign + sign |
| `build-and-push.bat` | Build + push (dùng cái này) |
| `install-apk.bat` | Cài lên máy qua adb |

## Toolchain (đã cài sẵn)

| Thành phần | Đường dẫn |
|---|---|
| JDK 17 (Temurin) | `C:\dev\jdk17` |
| Android SDK (platform 37, build-tools 37.0.0, platform-tools) | `C:\dev\android-sdk` |
| Gradle 9.9.2 | `C:\dev\gradle` |
| Kotlin 2.4.21 | `C:\dev\kotlin` |
| apktool 3.0.3 | `C:\dev\tools\apktool.jar` |
| jadx 1.5.7 (đọc Java từ APK) | `C:\dev\tools\jadx\lib\jadx-1.5.7-all.jar` |

`JAVA_HOME` và `ANDROID_HOME` đã set ở mức Machine.

## Build / cài

```bat
build-apk.bat                 REM -> build\BCRAndroid-mod.apk
install-apk.bat               REM cài lên thiết bị đang nối adb
build-and-push.bat "msg"      REM build + commit + push
```

## Ký APK

Keystore: `build/bcr-release.jks`
- alias: `bcr`
- storepass / keypass: `bcr123456`

APK gốc ký bằng key khác nên **phải gỡ bản cũ trước khi cài** (`adb uninstall com.bcr.android`).

## Đọc Java từ APK

```bat
java -jar C:\dev\tools\jadx\lib\jadx-1.5.7-all.jar -d bcr_java --no-res BCRAndroid-v1.16.apk
```

## Ghi chú kỹ thuật

- APK có `debuggable=true`, `usesCleartextTraffic=true` trong manifest gốc.
- Chỉ đọc DOM của trang đang mở trong WebView (bàn, khay chip, ô cược), không đọc cookie/token.
- `bcr_core.js` chạy ở document-start, giao tiếp native qua `BcrNative.postMessage` (JSON).
- Debug: `adb logcat -s BCR:D chromium:D`
