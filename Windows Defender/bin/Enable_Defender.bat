@echo off
title Credits to privacy.sexy - Batlez#3740
:: ----------------------------------------------------------
:: ------Disable Microsoft Defender Antivirus (revert)-------
:: ----------------------------------------------------------
echo --- Disable Microsoft Defender Antivirus (revert)
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /f 2>nul
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: Turn off SmartScreen App Install Control feature (revert)-
:: ----------------------------------------------------------
echo --- Turn off SmartScreen App Install Control feature (revert)
reg delete "HKLM\Software\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControl" /f 2>nul
reg delete "HKLM\Software\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /f 2>nul
:: ----------------------------------------------------------


:: Turn off SmartScreen to check web content (URLs) that apps use (revert)
echo --- Turn off SmartScreen to check web content (URLs) that apps use (revert)
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "1" /f
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /f 2>nul
:: ----------------------------------------------------------


:: Prevent Chromium Edge SmartScreen from blocking potentially unwanted apps (revert)
echo --- Prevent Chromium Edge SmartScreen from blocking potentially unwanted apps (revert)
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenPuaEnabled" /f 2>nul
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----------Disable SmartScreen in Edge (revert)-----------
:: ----------------------------------------------------------
echo --- Disable SmartScreen in Edge (revert)
reg delete "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /f 2>nul
reg delete "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "PreventOverride" /f 2>nul
reg delete "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /f 2>nul
reg delete "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "PreventOverride" /f 2>nul
:: For Microsoft Edge version 77 or later
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /f 2>nul
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PreventSmartScreenPromptOverride" /f 2>nul
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----Disable SmartScreen in Internet Explorer (revert)-----
:: ----------------------------------------------------------
echo --- Disable SmartScreen in Internet Explorer (revert)
reg delete "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0" /v "2301" /f 2>nul
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Disable SmartScreen for apps and files (revert)------
:: ----------------------------------------------------------
echo --- Disable SmartScreen for apps and files (revert)
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /f 2>nul
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------Disable SmartScreen in file explorer (revert)-------
:: ----------------------------------------------------------
echo --- Disable SmartScreen in file explorer (revert)
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /f 2>nul
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /f 2>nul
:: ----------------------------------------------------------


:: Disable SmartScreen preventing users from running applications (revert)
echo --- Disable SmartScreen preventing users from running applications (revert)
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "ShellSmartScreenLevel" /f 2>nul
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: --------Disable Firewall through registry (revert)--------
:: ----------------------------------------------------------
echo --- Disable Firewall through registry (revert)
:: Policy based
reg delete "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "EnableFirewall" /f 2>nul
reg delete "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "EnableFirewall" /f 2>nul
reg delete "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "EnableFirewall" /f 2>nul
reg delete "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "EnableFirewall" /f 2>nul
:: Non-policy based
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "EnableFirewall" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "EnableFirewall" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile" /v "EnableFirewall" /t REG_DWORD /d 1 /f
:: ----------------------------------------------------------
goto :EOF