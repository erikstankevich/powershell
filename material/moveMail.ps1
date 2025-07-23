$outlook = New-Object -ComObject Outlook.Application
$namespace = $outlook.GetNamespace("MAPI")
$Default = $namespace.Folders | Where-Object {$_.Name -like "*schulung64@outlook.de*"}
$Posteingang = $Default.Folders | Where-Object {$_.Name -like "*Posteingang*"}
$items = $Posteingang.Items
$Copy = @($Posteingang.Items)

$foolder = $Default.Folders | Where-Object {$_.Name -like "*foolder*"}

foreach ($item in $Copy){
    $item.Move($foolder)
}