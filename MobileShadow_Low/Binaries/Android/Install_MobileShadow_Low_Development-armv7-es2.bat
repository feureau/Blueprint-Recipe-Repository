setlocal
set ANDROIDHOME=%ANDROID_HOME%
if "%ANDROIDHOME%"=="" set ANDROIDHOME=E:/NVPACK/android-sdk-windows
set ADB=%ANDROIDHOME%\platform-tools\adb.exe
set DEVICE=
if not "%1"=="" set DEVICE=-s %1
for /f "delims=" %%A in ('%ADB% %DEVICE% shell "echo $EXTERNAL_STORAGE"') do @set STORAGE=%%A
@echo.
@echo Uninstalling existing application. Failures here can almost always be ignored.
%ADB% %DEVICE% uninstall com.YourCompany.MobileShadow_Low
@echo.
@echo Installing existing application. Failures here indicate a problem with the device (connection or storage permissions) and are fatal.
%ADB% %DEVICE% install MobileShadow_Low-armv7-es2.apk
@if "%ERRORLEVEL%" NEQ "0" goto Error
%ADB% %DEVICE% shell rm -r %STORAGE%/UE4Game/MobileShadow_Low
%ADB% %DEVICE% shell rm -r %STORAGE%/UE4Game/UE4CommandLine.txt
%ADB% %DEVICE% shell rm -r %STORAGE%/obb/com.YourCompany.MobileShadow_Low
%ADB% %DEVICE% shell rm -r %STORAGE%/Android/obb/com.YourCompany.MobileShadow_Low






@echo.



@echo.
@echo Installation successful
goto:eof
:Error
@echo.
@echo There was an error installing the game or the obb file. Look above for more info.
@echo.
@echo Things to try:
@echo Check that the device (and only the device) is listed with "%ADB$ devices" from a command prompt.
@echo Make sure all Developer options look normal on the device
@echo Check that the device has an SD card.
@pause
