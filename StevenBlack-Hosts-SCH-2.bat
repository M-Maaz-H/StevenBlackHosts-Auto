@Echo off


:DownloadingScript
	Echo Downloading Script
	Echo.
	Echo.
		powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/M-Maaz-H/StevenBlackHosts-Auto/main/StevenBlack-Hosts-UNI.bat -OutFile $env:USERPROFILE\Hosts.bat"
	Echo  Downloaded --  %USERPROFILE%\Hosts.bat
	Echo.
	Echo.

:CreatingSCHT
	Echo Creating Schedule Task
	Echo.
	Echo.
		SCHTASKS /CREATE /SC WEEKLY /D SUN /TN "Modifing-Hosts" /TR "%USERPROFILE%\Hosts.bat" /ST 11:00
	Echo  Schedule Task of --  %USERPROFILE%\Hosts.bat Created On Weekly Basis
	Echo.
	Echo.

:CallingBat
		CLS
		Call "%USERPROFILE%\Hosts.bat"


