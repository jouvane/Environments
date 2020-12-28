
If(-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent() ).IsInRole( [Security.Principal.WindowsBuiltInRole] “Administrator”))
{
     throw "Run command in Administrator PowerShell Prompt"
}

Set-ItemProperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' Hidden 0
Set-ItemProperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' HideFileExt 0
Set-ItemProperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' ShowSuperHidden 1

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco feature enable -n allowGlobalConfirmation

##################
# Dev
##################
choco install git
choco install git-credential-manager-for-windows
choco install delta
choco install tortoisesvn

choco install visualstudio2019enterprise --package-parameters "--locale en-US"
choco install vscode
choco install arduino

choco install stylecop
choco install ilspy
choco install winmerge
choco install openjdk

choco install nuget.commandline
choco install microsoft-windows-terminal

choco install docker-desktop
choco install docker-cli
choco install docker-compose
	
##################
# Tools
##################		
choco install googlechrome	
choco install adobereader
choco install winrar
choco install expresso
choco install postman
choco install azure-data-studio
choco install sql-server-management-studio
choco install paint.net
choco install soapui

choco install sublimetext3
choco install notepadplusplus

choco install filezilla
choco install fiddler
choco install selenium-chrome-driver
choco install selenium

choco install spotify
choco install vlc

choco install skype	
    
choco install cpu-z
choco install gpu-z
choco install procexp
choco install crystaldiskmark

##################
# Games
##################	
choco install msiafterburner
choco install geforce-experience
choco install geforce-game-ready-driver
choco install razer-synapse-2
choco install steam
choco install origin

##################
# Add-AppxPackage
##################	
#Add-AppxPackage -Path "CanonicalGroupLimited.UbuntuonWindows_1804.2019.521.0_x64__79rhkp1fndgsc"

##################
# Enable-WindowsOptionalFeature
##################	
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --set-default-version 2


