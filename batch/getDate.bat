@echo on
  SETLOCAL
  
  For /f "tokens=1-4 delims=/:.,abdehijlmnorstuvwy " %%a in ("%date%") Do (set mydate=%%c%%b%%a)
  For /f "tokens=1-3 delims=/:.,abdehijlmnorstuvwy " %%a in ("%TIME%") Do (
      Set HH=%%a
      Set mm=%%b
      Set ss=%%c
  )

  if 1%HH% LSS 20 Set HH=0%HH%
  Echo The date is: %mydate%_%HH%%mm%%ss%
