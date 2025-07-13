$note = Read-Host "Write Note"
$date = Get-Date
$newLine = "`n"

$note | Add-Content -Path "C:\notes\text.txt"
$date | Add-Content -Path "C:\notes\text.txt"
$newLine * 2 |Add-Content -Path "C:\notes\text.txt"

