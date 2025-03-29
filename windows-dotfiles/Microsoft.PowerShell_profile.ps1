# Edit at $PROFILE or ~\Documents\PowerShell

# Needs oh-my-posh for theme
oh-my-posh init pwsh --config 'C:\Users\Mickael Salvas\.posh\gruvbox.omp.json' | Invoke-Expression

# Autocompletes using tab https://techcommunity.microsoft.com/blog/itopstalkblog/autocomplete-in-powershell/2604524
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

set-alias vi nvim

