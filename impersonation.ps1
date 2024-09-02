param (
    [string]$username
)

function Get-Token {
    param (
        [string]$user
    )

    $process = Start-Process -FilePath "C:\Windows\System32\cmd.exe" -ArgumentList "/c whoami" -Credential $user -PassThru
    Start-Sleep -Seconds 2
    $process | Stop-Process
}
Get-Token -user $username
