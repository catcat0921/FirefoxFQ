%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
xcopy /Y %~dp0Firefox\defaults\pref\local-settings-go  %~dp0Firefox\defaults\pref\local-settings.js
cls
@echo off
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
echo �Ƿ�ִ��IP���£�IP���´��ƶ˸���IP�����Խ���������⣡��һ��ʹ������ȸ���IP.
echo ��3��������1ѡ��ip1���£���ip1�������ٰ�2ѡip2���£�������º��ò��ˣ��뷢�ʼ���kebi2014@gmail.com���з�����
choice /C 12345 /T 15 /D 5 /M "1��ip1����  2��ip2����  3��ip3����  4��ip4���� 5������"
if errorlevel 5 goto startfq
if errorlevel 4 goto ip4
if errorlevel 3 goto ip3
if errorlevel 2 goto ip2
if errorlevel 1 goto ip1

:ip4
start /wait "" "%~dp0Goflyway\ip_Update\ip_4.bat"
goto startfq

:ip3
start /wait "" "%~dp0Goflyway\ip_Update\ip_3.bat"
goto startfq

:ip2
start /wait "" "%~dp0Goflyway\ip_Update\ip_2.bat"
goto startfq

:ip1
start /wait "" "%~dp0Goflyway\ip_Update\ip_1.bat"
goto startfq

:startfq
start "" "%~dp0Goflyway\goflyway.bat"
start "" "%~dp0Firefox/firefox.exe" -no-remote -profile "%~dp0Firefox/Profile" https://www.bannedbook.org/bnews/fq/?utm_source=ff-Goflyway