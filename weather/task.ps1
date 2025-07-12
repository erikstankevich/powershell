$scriptPath = "C:\repos\powershell\weather\gui.ps1"

# Build the argument string with escaped quotes around the script path
$arg = "-NoProfile -ExecutionPolicy Bypass -WindowsStyle Hidden -File `"$scriptPath`""

# Create the action
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument $arg

# Define triggers
$trigger1 = New-ScheduledTaskTrigger -Daily -At "09:00AM"
$trigger2 = New-ScheduledTaskTrigger -Daily -At "02:55PM"

# Register the scheduled task as SYSTEM with highest privileges
Register-ScheduledTask -TaskName "WeatherGui" `
    -Action $action `
    -Trigger $trigger1, $trigger2 `
    -Description "Displays weather and time" `
    -User "SYSTEM" `
    -RunLevel Highest
