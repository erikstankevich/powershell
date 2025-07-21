$outlook = New-Object -ComObject Outlook.Application
$mail = $outlook.CreateItem(0) 
$mail.To = "21estankevich@gmail.com"
$mail.Subject = "Test from Powershell"
$mail.Body = "Test Test Terminal Terminal"
$mail.Send()