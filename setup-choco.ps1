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
Write-Host  "Scoop: intstalling tools"
& choco install `
    7zip `
    chocolateygui `
    docker-desktop `
    eartrumpet `
    git `
    gh `
    insomnia-rest-api-client `
    oh-my-posh `
    linqpad `
    microsoft-windows-terminal `
    nodejs-lts `
    notepadplusplus `
    nswagstudio `
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
        camtasia `
        snagit `
        -y
}

# add fonts
Write-Host  "Scoop: intstalling fonts"
& choco install `
    cascadia-code-nerd-font `
    -y
