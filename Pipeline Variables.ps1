Get-Process | ForEach-Object -Process {$_}
Get-Process | ForEach-Object -Process {$psitem}


Get-ChildItem -Path C:\Windows\ -Directory | ForEach-Object { $_.Name  }



Get-Process | Where-Object {$_.ws -gt 100MB} 
Get-Process -PipelineVariable CurrentProcess | Where-Object {$CurrentProcess.ws -gt 100MB}