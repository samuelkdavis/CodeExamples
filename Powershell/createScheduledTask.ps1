$trigger = New-ScheduledTaskTrigger -AtStartup
$trigger.Delay = "PT1M"  
$action = New-ScheduledTaskAction -Execute "C:\Program Files\Docker\Docker\Docker Desktop.exe"
#$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File `"C:\dev\servarr\qbittorrent\Bridge-WslPorts.ps1`" -WindowStyle Hidden -ExecutionPolicy Bypass"
$principal = New-ScheduledTaskPrincipal -GroupId "BUILTIN\Administrators" -RunLevel Highest
# 1 minute wait for windows to load critical services/profiles
$setting = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries

Register-ScheduledTask -TaskName "Start Docker Desktop 1 minute after login" -Action $action -Trigger $trigger -Settings $setting -Principal $principal
# This will now show up in Task Scheduler in the contents of Task Scheduler Library
Get-ScheduledTask "Start Docker Desktop 1 minute after login"
Get-ScheduledTaskInfo "Start Docker Desktop 1 minute after login" 