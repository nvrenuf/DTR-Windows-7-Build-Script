#===============================================================================================
# AUTHOR:  Lee Cuevas
# DATE:    09/16/2010
# Version 1.1
# COMMENT: Windows 2008 Server Build Automated script - Adding computer to domain

Add-Computer -domainname wtden -cred wtden\lcuevas -passthru 
# -OUPath Build
#Remove Scripts
Write-Host "Removing Install Scripts"
Remove-Item c:\scripts -Recurse
#Restart
Write-Host "Rebooting"
shutdown -r
#set-Executionpolicy back