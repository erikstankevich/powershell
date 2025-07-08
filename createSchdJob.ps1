$Trigger = New-JobTrigger -Daily -At 7am
$Scriptblock = { C:\repos\powershell\time.ps1}
Register-ScheduledJob -Name "TimeJob" -ScriptBlock $Scriptblock -Trigger $Trigger