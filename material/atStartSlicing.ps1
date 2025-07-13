$rRay = @(1,2,3,4,5,6)
$i = 2

while ($true) {
    Write-Host $rRay[0..($rRay.Length -$i)]
    Start-Sleep -Seconds 1
    $i = $i + 1
}

Invoke-RestMethod "https://wttr.in/?format=3"