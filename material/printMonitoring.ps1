$outlook = New-Object -ComObject Outlook.Application
$namespace = $outlook.GetNamespace("MAPI")
$publicRoot = $namespace.Folders | Where-Object {$_.Name -like "*Öffentliche Ordner*"}
$AlleOO = $publicRoot.Folders | Where-Object {$_.Name -like "*Alle Öffentlichen Ordner*"}
$Technik = $AlleOO.Folders | Where-Object {$_.Name -like "*Technik*"}
$Monitoring = $Technik.Folders | Where-Object {$_.Name -like "*Monitoring*"}
foreach ($item in $Monitoring.items) {
    Write-Output $item.Subject
}
