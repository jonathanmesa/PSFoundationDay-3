function Jonathan-Function 
{
    Begin
    {
        Remove-Item .\Events.txt
        Write-Host "Start removing Events.txt" -ForegroundColor Red
    } 
    Process
    {
         $_.Message | Out-File -Filepath Events.txt -Append
         Write-Host "Start removing Events.txt" -ForegroundColor yellow
    } 
    End
    {
        Write-Host "completed  display Events.txt End" -ForegroundColor Green
        notepad.exe Events.txt
    } 
}  

Get-EventLog -LogName Application -Newest 5 | Jonathan-Function