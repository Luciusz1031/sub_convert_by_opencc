# 我的簡繁轉換器

這是一個個人專用的 Windows / Mac 桌面簡繁轉換 APP，核心使用 OpenCC 詞庫相容的 [opencc-js 1.3.1](https://github.com/BYVoid/OpenCC/releases/tag/ver.1.3.1)。

## 功能

- 簡體轉繁體
- 簡體轉臺灣正體
- 簡體轉臺灣常用詞
- 簡體轉香港繁體
- 繁體、臺灣正體、香港繁體轉簡體
- 自動轉換、複製結果、交換文字、清除文字
- 拖曳 TXT、AAS、ASS、SRT 檔到原文方塊自動讀取
- 儲存轉換時會在原目錄備份原檔，再用原始檔名寫入轉換結果
- Windows 右鍵選單可直接把 TXT、AAS、ASS、SRT 轉成臺灣常用詞

## 拖曳讀檔與儲存

把 `.txt`、`.aas`、`.ass`、`.srt` 檔案拖到左邊的原文方塊，APP 會自動讀取並轉換。

按下「儲存轉換」後，APP 會在同一個資料夾內把原檔改名為 `原檔名.old`，再用原始檔名儲存轉換後內容。如果同目錄已經有 `.old` 備份，會自動使用 `.old.1`、`.old.2`，避免覆蓋舊備份。

## Windows 右鍵選單

安裝 Windows 版後，對 `.txt`、`.aas`、`.ass`、`.srt` 檔案按右鍵，會看到「簡體轉臺灣常用詞」。點擊後會在背景直接轉換檔案，不會開啟主視窗。

右鍵轉換會在同一個資料夾內把原檔改名為 `原檔名.old`，再用原始檔名儲存轉換後內容。如果已存在 `.old`，會自動使用 `.old.1`、`.old.2`。

## 開發執行

```bash
npm install
npm start
```

## 打包 Windows

```bash
npm run build:win
```

完成後會在 `release` 資料夾看到 Windows 安裝檔與免安裝版。
如果之前已安裝過舊版，請先移除舊版，重新安裝 `release` 裡新產生的安裝檔。

## 打包 Mac

```bash
npm run build:mac
```

Mac 版本建議在 macOS 電腦上打包，完成後會在 `release` 資料夾看到 DMG 與 ZIP。

## 同時產出 Windows 和 Mac

專案已附 GitHub Actions 工作流程。把這個資料夾推到你的 GitHub repo 後，可以在 Actions 產生 Windows 與 Mac 版本，成品會上傳在該次 workflow 的 artifacts。

## 授權與來源

OpenCC 使用 Apache License 2.0。本 APP 也以 Apache-2.0 授權設定，方便保留 OpenCC 的開源授權相容性。

## Windows 無法啟動時

新版已改用純 JavaScript 轉換核心，避免 Windows 打包後的原生模組造成閃退。若仍遇到點擊 exe 沒反應，請重新打包並安裝新版；錯誤紀錄會寫入 Windows 使用者資料夾中的 `opencc-app.log`。
