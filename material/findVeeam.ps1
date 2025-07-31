$outlook = New-Object -ComObject Outlook.Application
$namespace = $outlook.GetNamespace("MAPI")
$OO = $namespace.folders | Where-Object {$_.Name -like "*ffentliche Ordner*"}
$Fav = $OO.folders | Where-Object {$_.Name -like "*Favoriten*"}
$Monitoring = $Fav.folders | Where-Object {$_.Name -like "*Monitoring*"}
$Items = $Monitoring.Items
$Veeam = $Items | Where-Object {$_.Subject -like "*[Failed]*"} 
$Body = $Veeam | Where-Object {$_.Body -like "*veeam*"}
$Unlike = $Body | Where-Object {$_.Subject -notlike "*success*"}


foreach ($item in $Unlike){
    Write-Host $item.Subject
}