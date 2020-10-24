@Echo off


:DownloadingScript
	Echo Downloading Script
		powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/M-Maaz-H/StevenBlackHosts-Auto/main/StevenBlack-Hosts-SCH-2.bat -OutFile $env:USERPROFILE\Hosts.bat"
	Echo  Downloaded --  %USERPROFILE%\Hosts.bat

:CreatingSCHT
	Echo Creating Schedule Task
		SCHTASKS /CREATE /SC WEEKLY /D SUN /TN "Modifing-Hosts" /TR "%USERPROFILE%\Hosts.bat" /ST 11:00

:CallingBat
		Call "%USERPROFILE%\Hosts.bat"


