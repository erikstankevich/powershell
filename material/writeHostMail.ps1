$outlook = New-Object -ComObject Outlook.Application
$namespace = $outlook.GetNamespace("MAPI")
$inbox = $namespace.GetDefaultFolder([Microsoft.Office.Interop.Outlook.OlDefaultFolders]::olFolderInbox)
$items = $inbox.Items
$FirstMail = $items.GetFirst()

Write-Output $FirstMail.Subject
Write-Output $FirstMail.SenderName
Write-Output $FirstMail.ReceivedTime

