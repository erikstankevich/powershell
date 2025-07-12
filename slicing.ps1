$rRay = @(1,2,3,4,5)

while ($rRay.Length -gt 0) {
    Write-Host $rRay
    $rRay = $rRay[0..($rRay.Length - 2)]
}