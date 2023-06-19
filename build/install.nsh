!macro customRemoveFiles
   ExecWait `cmd /c taskkill /f /im "${APP_EXECUTABLE_FILENAME}" /fi "USERNAME eq %USERNAME%"`
   Rename "$INSTDIR\${APP_EXECUTABLE_FILENAME}" "$INSTDIR\old_${APP_EXECUTABLE_FILENAME}"
   Sleep 1000
   RMDir /r $INSTDIR
!macroend