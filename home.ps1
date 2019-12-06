
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
choco install tortoisesvn

choco install visualstudio2019enterprise --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"
choco install vscode
choco install vscode-csharp	
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
choco install redis
choco install mongodb
	
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

choco install teamviewer
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
choco install leagueoflegends

##################
# Add-AppxPackage
##################	
#Add-AppxPackage -Path "CanonicalGroupLimited.UbuntuonWindows_1804.2019.521.0_x64__79rhkp1fndgsc"

##################
# Enable-WindowsOptionalFeature
##################	

Enable-WindowsOptionalFeature -Online -FeatureName Containers
Enable-WindowsOptionalFeature -Online -FeatureName FaxServicesClientPackage
Enable-WindowsOptionalFeature -Online -FeatureName HypervisorPlatform
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationDevelopment
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45
Enable-WindowsOptionalFeature -Online -FeatureName IIS-BasicAuthentication
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CertProvider
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ClientCertificateMappingAuthentication
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CommonHttpFeatures
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CustomLogging
Enable-WindowsOptionalFeature -Online -FeatureName IIS-DefaultDocument
Enable-WindowsOptionalFeature -Online -FeatureName IIS-DigestAuthentication
Enable-WindowsOptionalFeature -Online -FeatureName IIS-DirectoryBrowsing
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HealthAndDiagnostics
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HostableWebCore
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionDynamic
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionStatic
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpErrors
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpLogging
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpRedirect
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpTracing
Enable-WindowsOptionalFeature -Online -FeatureName IIS-IISCertificateMappingAuthentication
Enable-WindowsOptionalFeature -Online -FeatureName IIS-IPSecurity
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIExtensions
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIFilter
Enable-WindowsOptionalFeature -Online -FeatureName IIS-LoggingLibraries
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ManagementConsole
Enable-WindowsOptionalFeature -Online -FeatureName IIS-NetFxExtensibility
Enable-WindowsOptionalFeature -Online -FeatureName IIS-NetFxExtensibility45
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Performance
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestFiltering
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestMonitor
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Security
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ServerSideIncludes
Enable-WindowsOptionalFeature -Online -FeatureName IIS-StaticContent
Enable-WindowsOptionalFeature -Online -FeatureName IIS-URLAuthorization
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebDAV
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServer
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerManagementTools
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebSockets
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WindowsAuthentication
Enable-WindowsOptionalFeature -Online -FeatureName Internet-Explorer-Optional-amd64
Enable-WindowsOptionalFeature -Online -FeatureName MediaPlayback
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Hypervisor
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Management-Clients
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Management-PowerShell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Services
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Tools-All
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Client-EmbeddedExp-Package
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-NetFx3-OC-Package
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-NetFx3-WCF-OC-Package
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-NetFx4-US-OC-Package
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-NetFx4-WCF-US-OC-Package
Enable-WindowsOptionalFeature -Online -FeatureName MicrosoftWindowsPowerShellV2
Enable-WindowsOptionalFeature -Online -FeatureName MicrosoftWindowsPowerShellV2Root
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName MSMQ-Container
Enable-WindowsOptionalFeature -Online -FeatureName MSMQ-Server
Enable-WindowsOptionalFeature -Online -FeatureName MSRDC-Infrastructure
Enable-WindowsOptionalFeature -Online -FeatureName NetFx3
Enable-WindowsOptionalFeature -Online -FeatureName NetFx4-AdvSrvs
Enable-WindowsOptionalFeature -Online -FeatureName NetFx4Extended-ASPNET45
Enable-WindowsOptionalFeature -Online -FeatureName Printing-Foundation-Features
Enable-WindowsOptionalFeature -Online -FeatureName Printing-Foundation-InternetPrinting-Client
Enable-WindowsOptionalFeature -Online -FeatureName Printing-PrintToPDFServices-Features
Enable-WindowsOptionalFeature -Online -FeatureName Printing-XPSServices-Features
Enable-WindowsOptionalFeature -Online -FeatureName SearchEngine-Client-Package
Enable-WindowsOptionalFeature -Online -FeatureName SimpleTCP
Enable-WindowsOptionalFeature -Online -FeatureName SmbDirect
Enable-WindowsOptionalFeature -Online -FeatureName TelnetClient
Enable-WindowsOptionalFeature -Online -FeatureName TFTP
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
Enable-WindowsOptionalFeature -Online -FeatureName WAS-ConfigurationAPI
Enable-WindowsOptionalFeature -Online -FeatureName WAS-NetFxEnvironment
Enable-WindowsOptionalFeature -Online -FeatureName WAS-ProcessModel
Enable-WindowsOptionalFeature -Online -FeatureName WAS-WindowsActivationService
Enable-WindowsOptionalFeature -Online -FeatureName WCF-HTTP-Activation
Enable-WindowsOptionalFeature -Online -FeatureName WCF-HTTP-Activation45
Enable-WindowsOptionalFeature -Online -FeatureName WCF-MSMQ-Activation45
Enable-WindowsOptionalFeature -Online -FeatureName WCF-NonHTTP-Activation
Enable-WindowsOptionalFeature -Online -FeatureName WCF-Pipe-Activation45
Enable-WindowsOptionalFeature -Online -FeatureName WCF-Services45
Enable-WindowsOptionalFeature -Online -FeatureName WCF-TCP-Activation45
Enable-WindowsOptionalFeature -Online -FeatureName WCF-TCP-PortSharing45
Enable-WindowsOptionalFeature -Online -FeatureName Windows-Defender-ApplicationGuard
Enable-WindowsOptionalFeature -Online -FeatureName Windows-Identity-Foundation
Enable-WindowsOptionalFeature -Online -FeatureName WindowsMediaPlayer
Enable-WindowsOptionalFeature -Online -FeatureName WorkFolders-Client