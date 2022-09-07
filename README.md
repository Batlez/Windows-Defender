# Windows-Defender

This script explicitly disables Windows Defender in Windows 10. This can occasionally be useful when wishing to avoid overhead during benchmarking or for low-latency applications like audio hosts. Many antivirus programs will flag it as potentially malicious, presumably because some batch script malware disables Windows defenders without the user's knowledge.

Before you download, make sure you understand this. Use Menu Start.bat to enable and disable Windows Defender automatically. If you do it manually, please use NSudoLG.exe to run either Disable Defender.bat or Enable Defender.bat as administrator, or right-click on the file and select Run as Administrator.

#                            ⚠️ Warnings

◉ You must disable tamper protection before running this script!

◉ You will not be able to enable Defender on systems that have Defender stripped/removed; you can only revert Defender's disabling with this script.

◉ Disabling Windows Defender will expose your computer to malicious software; I will not be held liable for any damage caused by this action.

◉ Even though I use this script personally and have not encountered any problems, there may be issues with Windows Update and other services.



The code was initially written by https://github.com/AndyFul/ConfigureDefender with the help of https://privacy.sexy/
