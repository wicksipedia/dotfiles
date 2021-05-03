

Set-Alias -Name d -Value dotnet
function dt { dotnet test $args }
function dw { dotnet watch run $args }

Set-Alias -Name g -Value git