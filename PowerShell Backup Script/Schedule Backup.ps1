$action = New-ScheduledTaskAction -Execute "C:\Users\sywin\OneDrive\Desktop\scripts\PowerShell Backup Script\Backup.ps1"
$trigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Friday -At 12am
Register-ScheduledTask -TaskName "Weekly Backup" -Action $action -Trigger $trigger -Description "Backup Desktop to E:\" -RunLevel Highest
