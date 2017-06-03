@echo on
  SETLOCAL
  
  For /f "delims=. " %%a in ('wmic os get localdatetime ^|find "20"') Do set mydate=%%a
  set datetimef=%mydate:~0,8%_%mydate:~8,6%
  echo %datetimef%
