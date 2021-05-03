# setup custom hotkeys
if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine
}

# ctrl+shift+b = dotnet build
Set-PSReadLineKeyHandler -Chord Ctrl+Shift+b `
                         -BriefDescription BuildCurrentDirectory `
                         -LongDescription "dotnet Build the current directory" `
                         -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert("dotnet build")
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}

# F5 = dotnet watch run
Set-PSReadLineKeyHandler -Chord F5 `
                         -BriefDescription WatchCurrentDirectory `
                         -LongDescription "dotnet watch run the current directory" `
                         -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert("dotnet watch run")
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}