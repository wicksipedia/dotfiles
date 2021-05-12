# Dotfiles and scripts I use on dev machines

> Based off https://github.com/haacked/dotfiles

## Setup

1. Install the tools
   ```iwr -useb https://raw.githubusercontent.com/wicksipedia/dotfiles/main/setup-choco.ps1 | iex```
2. Clone repo
   ```git clone https://github.com/wicksipedia/dotfiles.git```
3. Customise Powershell & Windows Terminal
   ```.\setup-shell.ps1```
4. Reload profile
   ```. $profile```

## Update

1. Pull latest
   ```git pull```
2. Reinstall the tools
   ```.\setup-choco.ps1```
3. Customise Powershell & Windows Terminal
   ```.\setup-shell.ps1```
4. Reload profile
   ```. $profile```

## What does this add?

If you don't want to install a particular item - feel free to comment the line out in the setup-choco script

Installs:

Free tools:

- 7zip
- Autohotkey
- Azure CLI
- Cascadia Code Nerd Font
- Chocolatey GUI
- Docker
- Eartrumpet
- Git
- GitHub CLI
- Insomnia
- oh-my-posh
- Linqpad
- Logitech Camera settings
- Logitech Options
- Microsoft Teams
- Nodejs LTS
- Notepad++
- NSwag studio
- OBS studio
- OBS virtualcam
- paint.net
- Postman
- Powershell 7
- Sudo
- SysInternals
- VSCode
- Windows Powertoys
- Windows Terminal
- Which

Paid tools: (optional)

- 1Password
- Camtasia
- Office365 ProPlus
- Snagit
- Visual Studio 2019 Enterprise

Gaming apps: (optional)

- Epic Games launcher
- Steam

Customisations:

- Terminal-Icons
- Git
  - Aliases
- Powershell
  - Aliases
  - Hotkeys/Chords

## Want more? Need somthing else?

This is a WIP - Happy to take suggestions! Submit an issue/PR!
