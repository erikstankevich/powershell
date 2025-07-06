$trigger = New-ScheduledTaskTrigger -At 8pm -Daily
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File `"C:\repos\time.ps1`""
$settings = New-ScheduledTaskSettingsSet
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Write-Host Time" -Description "Prints time in console" -Settings $settings