!macro RegisterOpenCCContextMenu EXT
  WriteRegStr HKCU "Software\Classes\SystemFileAssociations\${EXT}\shell\OpenCCS2TWP" "" "簡體轉臺灣常用詞"
  WriteRegStr HKCU "Software\Classes\SystemFileAssociations\${EXT}\shell\OpenCCS2TWP" "Icon" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  WriteRegStr HKCU "Software\Classes\SystemFileAssociations\${EXT}\shell\OpenCCS2TWP\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" --convert-file-s2twp "%1"'
!macroend

!macro UnregisterOpenCCContextMenu EXT
  DeleteRegKey HKCU "Software\Classes\SystemFileAssociations\${EXT}\shell\OpenCCS2TWP"
!macroend

!macro customInstall
  !insertmacro RegisterOpenCCContextMenu ".txt"
  !insertmacro RegisterOpenCCContextMenu ".aas"
  !insertmacro RegisterOpenCCContextMenu ".ass"
  !insertmacro RegisterOpenCCContextMenu ".srt"
!macroend

!macro customUnInstall
  !insertmacro UnregisterOpenCCContextMenu ".txt"
  !insertmacro UnregisterOpenCCContextMenu ".aas"
  !insertmacro UnregisterOpenCCContextMenu ".ass"
  !insertmacro UnregisterOpenCCContextMenu ".srt"
!macroend
