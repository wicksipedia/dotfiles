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
Write-Host "Windows Terminal: Setting Nerd Font"
Install-Module -Name MSTerminalSettings -AllowPrerelease
Get-MSTerminalProfile | Set-MSTerminalProfile -FontFace "CaskaydiaCove Nerd Font"