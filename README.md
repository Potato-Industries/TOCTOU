# TOCTOU

Template script to modify files based on any file event (e.g. append to temporary script).

Usage: 
1. Set a 'watcher' for a file event (ahead of time). 
2. Set action to be executed (e.g. append code to temporary script).
3. Wait (or cause) vulnerable app to execute file event (e.g. download and execute temporary script).
4. Profit. 

Ref:

https://cwe.mitre.org/data/definitions/367.html
https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/register-objectevent
https://docs.microsoft.com/en-us/dotnet/api/system.io.filesystemwatcher
