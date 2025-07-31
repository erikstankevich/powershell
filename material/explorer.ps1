$shell = New-Object -ComObject Shell.Application


New-Item -Path "C:\PSDir" -ItemType Directory
New-Item -Path "C:\PSDir\PSItem.txt" -ItemType File
#Append foo bar baz in PSItem
Add-Content -Path "C:\PSDir\PSItem.txt" -Value "foo bar baz"

$folder = $shell.Namespace("C:\")
$items = $folder.Items()

foreach ($item in $items){
    Write-Host $item.Name
}

cat "C:\PSDir\PSitem.txt"