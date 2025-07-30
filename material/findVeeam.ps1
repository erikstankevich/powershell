$outlook = New-Object -ComObject Outlook.Application
$namespace = $outlook.GetNamespace("MAPI")
$OO = $namespace.folders | Where-Object {$_.Name -like "*ffentliche Ordner*"}
$Alle = $OO.folder | Where-Object {$_.Name -like "*ffentliche Ordner*"}

foreach ($item in $OO.folders){
    Write-Host $item.name
}