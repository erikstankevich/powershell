$outlook = New-Object -ComObject outlook.Application
$namespace = $outlook.GetNamespace("MAPI")
$ROOT = $namespace.folders()
$ees = $ROOT | Where-Object {$_.Name -like "*ees@mikroplan.com*"}
$posteingang = $ees.folders | Where-Object {$_.Name -like "*Posteingang*"}
$powermail = $posteingang.folders | Where-Object {$_.Name -like "*powermail*"}

$einteilung = $posteingang.items | Where-Object {$_.Subject -like "*Einteilung*"}

foreach ($item in $einteilung){
    $item.Move($powermail)
    Write-Host $posteingang.items.Subject
}


