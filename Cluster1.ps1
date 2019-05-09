
$nodes = ("SQL1","SQL2");
Invoke-Command  $nodes {Install-WindowsFeature Failover-Clustering -IncludeAllSubFeature -IncludeManagementTools};


$user = "testdomain\isshukla";
$pwd1 = "Password12345";
$pwd = ($pwd1 | ConvertTo-SecureString);
$Credential = New-Object System.Management.Automation.PSCredential $user, $pwd;
Start-Process powershell.exe -Credential $Credential; 

New-Cluster -Name AzClu -Node ("SQL1","SQL2") -NoStorage;
