Write-Host "Git: add customisations"
& git config --global include.path $pwd\git\.gitconfig

Write-Host "Powershell: get modules"
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Install-Module `
    -Name @('Terminal-Icons') `
    -Repository PSGallery 

Write-Host  "Windows Terminal: Updating PWSH profile"
$runCmd = ". `"$pwd\\pwsh\\run.ps1`"";
pwsh -Command {
    If((Select-String -Path $PROFILE -Pattern $runCmd -SimpleMatch).length -eq 0)
    {
        Write-Host 'Adding bootstrap script to $PROFILE'
        Add-Content -Path $PROFILE -Value $([Environment]::NewLine) -NoNewline
        Add-Content -Path $PROFILE -Value $runCmd
    }
}

# replace notepad with notepadplusplus
Write-Host  "Notepad++: replacing notepad"
$nppPath = $(which notepad++) -replace "~", $env:USERPROFILE
sudo New-ItemProperty `
    -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\notepad.exe" `
    -Name "Debugger" `
    -Value "`"$nppPath`" -notepadStyleCmdline -z" `
    -PropertyType String -Force | Out-Null
