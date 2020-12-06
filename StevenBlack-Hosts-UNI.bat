@Echo off

CLS
echo.
echo.
echo.
Echo -Edit This File For Options
echo.

::Enter Link Here
	SET FTD=https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-social/hosts

:RenameandDownloadLatestStevenBlackHostsFile

	Echo		-Creating Backup Of Current Hosts File
	ren "%homedrive%\Windows\System32\drivers\etc\hosts" "Backup - hosts - [%random%].file" >nul
	echo.
	Echo		-Backup Created
	echo.
	echo.

	Echo  -Downloading Hosts File To  "%homedrive%\Windows\System32\drivers\etc\"
	powershell -Command "Invoke-WebRequest %FTD% -OutFile C:\Windows\System32\drivers\etc\hosts"
	


:StevenBlackHostsFiles
::  This Script Downloads 'Unified hosts + fakenews + gambling + p*rn + social' By Default
::  If Needed Edit The Line No 11, With The Link Stated in Front Of The Particular Hosts File
::  https://github.com/StevenBlack/hosts
::	Unified hosts = (adware + malware)                   ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
::	Unified hosts + fakenews                             ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews/hosts
::      Unified hosts + gambling                             ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling/hosts
::	Unified hosts + p*rn                                 ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn/hosts
::	Unified hosts + social                               ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/social/hosts
::	Unified hosts + fakenews + gambling                  ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts
::	Unified hosts + fakenews + p*rn                      ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-porn/hosts
::	Unified hosts + fakenews + social                    ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-social/hosts
::	Unified hosts + gambling + p*rn                      ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-porn/hosts
::	Unified hosts + gambling + social                    ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-social/hosts
::	Unified hosts + p*rn + social                        ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn-social/hosts
::	Unified hosts + fakenews + gambling + p*rn           ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts
::	Unified hosts + fakenews + gambling + social         ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-social/hosts
::	Unified hosts + fakenews + p*rn + social             ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-porn-social/hosts
::	Unified hosts + gambling + p*rn + social             ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-porn-social/hosts
::	Unified hosts + fakenews + gambling + p*rn + social  ::  https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts
                                                                                                                                                                   

	echo.
	echo.
	echo.
	Echo -Hosts Downloaded - SECURED.
	echo.

	Echo Press any key to Exit.
	pause >nul