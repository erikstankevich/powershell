$trigger = New-ScheduledTaskTrigger -At 8:59AM -Daily
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File "C:\repos\minutetimer.ps1""
$settings = New-ScheduledTaskSettingsSet 
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "CountMinuteDown" -Settings $settings