$trigger = New-ScheduledTaskTrigger -At 8am -Daily
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File `"C:\repos\time.ps1`""
$settings = New-ScheduledTaskSettingsSet
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "printTime" -Description "Prints time in console" -Settings $settings