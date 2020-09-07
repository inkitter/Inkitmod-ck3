@echo off
chcp 65001
FOR /F "tokens=3* delims= " %%a in ('reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') do (set mydoc=%%a)
echo ----本批处理会清理mod文件夹，不需要则关闭窗口----
pause
echo ----本批处理会清理mod文件夹，不需要则关闭窗口----
pause
@echo on
del "%mydoc%\Paradox Interactive\Crusader Kings III\mod\inkit*.mod"
rmdir "%mydoc%\Paradox Interactive\Crusader Kings III\mod\_Inkitmod"
@echo off
echo ----清理完成----
pause