$outlook = New-Object -ComObject Outlook.Application
$mail = $outlook.CreateItem(0) 
$mail.To = "21estankevich@gmail.com"
$mail.Subject = "Nochmal test, weils grad nicht ging"
$mail.Body = "3 3 3"
$mail.Send()