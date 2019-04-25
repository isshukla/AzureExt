   $VMLocalAdminUser = 'isshukla'
   $password = 'Password12345'
   $VMLocalAdminSecurePassword = ConvertTo-SecureString $password -AsPlainText -Force
   $cred = New-Object System.Management.Automation.PSCredential ($VMLocalAdminUser, $VMLocalAdminSecurePassword)
   Add-Computer -DomainName testdomain.com -Credential $cred -Restart -Force
   
   
