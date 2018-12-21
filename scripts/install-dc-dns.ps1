$password = ConvertTo-SecureString "P@ssW0rD!" -AsPlainText -Force
Install-windowsfeature AD-domain-services
Add-WindowsFeature RSAT-ADDS-Tools
Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath "C:\Windows\NTDS" -DomainMode "WinThreshold" -DomainName "valis2.local" -DomainNetbiosName "VALIS2" -ForestMode "WinThreshold" -InstallDns:$true -LogPath "C:\Windows\NTDS" -NoRebootOnCompletion:$false -SysvolPath "C:\Windows\SYSVOL" -Force:$true -SafeModeAdministratorPassword $password