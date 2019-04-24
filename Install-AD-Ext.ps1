
#Install AD
Install-windowsfeature AD-Domain-Services


$password = "Password12345"
$SecurePswd = ConvertTo-SecureString $password -AsPlainText -Force

$DP = “C:\Windows\NTDS”
$syspt = “C:\Windows\SYSVOL”

Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath $DP `
-DomainMode “Default” `
-DomainName “testdomain.com” `
-DomainNetbiosName “TESTDOMAIN” `
-ForestMode “Default” `
-InstallDns:$true `
-LogPath $DP `
-NoRebootOnCompletion:$false `
-SysvolPath $syspt `
-Force:$true -SafeModeAdministratorPassword $SecurePswd


