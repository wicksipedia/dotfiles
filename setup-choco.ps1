#install choco
Write-Host "Installing/Updating Choco"
if ((Get-Command -Name choco.exe -ErrorAction SilentlyContinue) -eq $null) {
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
} else {
    & choco update Chocolatey
}

# add tools
Write-Host  "Intstalling tools"
& choco install `
    7zip `
    autohotkey.install `
    azure-cli `
    cascadia-code-nerd-font `
    chocolateygui `
    docker-desktop `
    eartrumpet `
    git `
    gh `
    insomnia-rest-api-client `
    oh-my-posh `
    linqpad `
    logitech-camera-settings `
    logitech-options `
    microsoft-windows-terminal `
    microsoft-teams `
    nodejs-lts `
    notepadplusplus `
    nswagstudio `
    obs-studio `
    obs-virtualcam `
    paint.net `
    postman `
    powertoys `
    pwsh `
    sudo `
    sysinternals `
    vscode `
    which `
    -y

if (Read-Host "Install paid tools: (Y/N)" -eq 'y') {
    & choco install `
        1password `
        camtasia `
        office365proplus `
        snagit `
        visualstudio2019enterprise `
        -y
}

if (Read-Host "Install gaming apps: (Y/N)" -eq 'y') {
    & choco install `
        epicgameslauncher `
        steam-client `
        -y
}
