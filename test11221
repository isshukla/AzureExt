
#Install AD
Install-windowsfeature AD-Domain-Services


$password = "Password12345"
$SecurePswd = ConvertTo-SecureString $password -AsPlainText -Force

Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath “C:\Windows\NTDS” `
-DomainMode “Win2012R2” `
-DomainName “yourdomain.com” `
-DomainNetbiosName “YOURDOMAIN” `
-ForestMode “Win2012R2” `
-InstallDns:$true `
-LogPath “C:\Windows\NTDS” `
-NoRebootOnCompletion:$false `
-SysvolPath “C:\Windows\SYSVOL” `
-Force:$true -SafeModeAdministratorPassword $SecurePswd


