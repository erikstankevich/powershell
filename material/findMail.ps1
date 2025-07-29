#$outlook = New-Object -ComObject Outlook.Application
#$namespace = $outlook.GetNamespace("MAPI")
#$OO = $namespace.Folders | Where-Object {$_.Name -like "*Öffentliche Ordner*"}

$outlook = New-Object -ComObject Outlook.Application
$namespace = $outlook.GetNamespace("MAPI")
$OO= $namespace.Folders | Where-Object {$_.Name -like "*Öffentliche Ordner*"}


foreach ($folder in $OO.Folders){
    Write-Output $folder.Name
}
