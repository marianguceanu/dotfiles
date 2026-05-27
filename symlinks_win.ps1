Remove-Item "$env:LOCALAPPDATA\nvim" -Recurse -Force
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim" -Target "$env:USERPROFILE\dotfiles\.config\nvim"

New-Item  -ItemType Directory  -Path "$env:USERPROFILE\.config" -Force | Out-Null
Remove-Item "$env:USERPROFILE\.config\wezterm" -Recurse -Force -ErrorAction SilentlyContinue
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.config\wezterm" -Target "$env:USERPROFILE\dotfiles\.config\wezterm"
