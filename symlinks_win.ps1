# Remove existing config folder if present
Remove-Item "$env:LOCALAPPDATA\nvim" -Recurse -Force

# Create symlink
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim" -Target "$env:USERPROFILE\dotfiles\.config\nvim"

Remove-Item "$env:USERPROFILE\wezterm.lua" -Force

New-Item -ItemType SymbolicLink  -Path "$env:USERPROFILE\.wezterm.lua" -Target "$env:USERPROFILE\dotfiles\.wezterm.lua"

