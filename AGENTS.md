# AGENTS / Quy tắc cho AI agent & người sửa code

## QUY TẮC BẮT BUỘC — KHÔNG ĐƯỢC BỎ QUA

Sau **mỗi** lần cập nhật, sửa chữa, thêm tính năng hoặc build lại APK trong repo này:

1. Build lại APK: `build-apk.bat` (hoặc `build-and-push.bat` để làm cả hai).
2. Commit toàn bộ thay đổi.
3. **Push lên `https://github.com/vzetiZero/BCR_ANDROID_11.git`** (nhánh `main`).
4. Chỉ khi push thành công mới được báo là "đã xong".

Lệnh một bước:

```bat
build-and-push.bat "mo ta thay doi"
```

Thủ công:

```bat
build-apk.bat
git add -A
git commit -m "mo ta thay doi"
git push origin main
```

Nếu push thất bại phải báo rõ lỗi cho người dùng (auth, quyền repo, mạng) và **không**
được coi nhiệm vụ là hoàn thành.

## Phạm vi source

- Sửa trong `bcr_apktool/` (smali + res + assets). Không sửa file trong `BCRAndroid-v1.16_extracted/`
  (chỉ là bản giải nén tham khảo).
- Logic đọc/điều khiển WebView: `bcr_apktool/assets/bcr_core.js` (JS) và
  `bcr_apktool/smali_classes6/com/bcr/android/web/Bridge.smali` (native).

## Toolchain

Xem `README.md`. Tóm tắt: JDK 17 `C:\dev\jdk17`, Android SDK `C:\dev\android-sdk`,
apktool `C:\dev\tools\apktool.jar`, jadx `C:\dev\tools\jadx\lib\jadx-1.5.7-all.jar`.
