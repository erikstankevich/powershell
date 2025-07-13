$minute = 60

while ($minute -ne 0){
    Write-Host $minute 
    Start-Sleep 1
    $minute = $minute -1
}