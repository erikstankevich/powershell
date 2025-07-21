$outlook = New-Object -ComObject Outlook.Application
$namespace = $outlook.GetNamespace("MAPI")
$inbox = $namespace.GetDefaultFolder([Microsoft.Office.Interop.Outlook.OlDefaultFolders]::olFolderInbox)
$items = $inbox.items 

$krank = $items | Where-Object {
    $_.Subject -like "*krank*" 
}

foreach ($email in $krank) {
    Write-Output $email.Subject
    Write-Output $email.SenderName
}