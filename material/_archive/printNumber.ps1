    while ($true) {
        $random = Get-Random -Minimum 0 -Maximum 10
        Start-Sleep 1
        Write-Host $random
    }