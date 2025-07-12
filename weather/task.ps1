$scriptPath = "C:\repos\powershell\weather\gui.exe"

# Create the action (no need for powershell.exe)
$action = New-ScheduledTaskAction -Execute $scriptPath

# Define triggers
$trigger1 = New-ScheduledTaskTrigger -Daily -At "09:00AM"
$trigger2 = New-ScheduledTaskTrigger -Daily -At "02:55PM"

# Register the scheduled task
Register-ScheduledTask -TaskName "WeatherGui" `
    -Action $action `
    -Trigger $trigger1, $trigger2 `
    -Description "Displays weather and time" `
    -User "SYSTEM" `
    -RunLevel Highest
