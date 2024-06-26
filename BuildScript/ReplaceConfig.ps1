Param( 
[string]$DropLocation,
[string]$FileName,
[string]$Env,
[string]$SQLCmdVariable4=""

)

[string] $DeploySilentLog =$DropLocation+"\"+$FileName
If(Test-Path  $DeploySilentLog )
{
  Remove-Item $DeploySilentLog
}

Write-Output "Env:$Env" | Out-File -Encoding ascii $DeploySilentLog -append
