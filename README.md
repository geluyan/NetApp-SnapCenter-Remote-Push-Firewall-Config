# NetApp SnapCenter Remote Push Firewall Config

# NetApp SnapCenter
SnapCenter is a unified, scalable platform for application-consistent data protection. SnapCenter provides centralized control and oversight, while delegating the ability for users to manage application-specific backup, restore, and clone jobs. With SnapCenter, database and storage administrators learn a single tool to manage backup, restore, and cloning operations for a variety of applications and databases.
SnapCenter manages data across endpoints in the NetApp Data Fabric. You can use SnapCenter to replicate data between on-premise environments, between on-premise environments and the cloud, and between private, hybrid, or public clouds.

Source: https://library.netapp.com/ecm/ecm_download_file/ECMLP2522556

# Remote Package Installation Firewall Requirements

1. SMCore HTTP Communication Port:						TCP 8145
2. NetBios:												UDP 137
3. DCE/RPC:												TCP 135
4. Background Intelligent Transfer Service [BITS]:		Allow Service
5. SMB-In:												TCP 445

# Script NetApp_SnapCenter_Firewall_Config.ps1


Configuration:

    Change the parameter $snapcenterServer with the SnapCenter server IP address or hostname
	
Execution:
	
    Open Windows PowerShell as local administrator:
    PS C:\Windows\system32> Set-ExecutionPolicy Unrestricted
    
    Right click the PowerShell script and click 'Run with PowerShell'
    
	
