if ((Get-InstalledModule -Name Terminal-Icons).length -eq 0)
{
	Install-Module -Name Terminal-Icons -Repository PSGallery
}

$runCmd = ". `"$pwd\\pwsh\\run.ps1`"";
If((Select-String -Path $PROFILE -Pattern $runCmd -SimpleMatch).length -eq 0)
{
	Write-Host 'Adding bootstrap script to $PROFILE'
	Add-Content -Path $PROFILE -Value $([Environment]::NewLine) -NoNewline
	Add-Content -Path $PROFILE -Value $runCmd
}
