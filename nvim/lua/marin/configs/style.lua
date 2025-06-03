local function setup(theme)
	if theme == "default" then
		require("marin.configs.themes.default")
		Default()
		return
	end
	if theme == "onedark" then
		require("marin.configs.themes.onedark")
		OneDark()
		return
	end
	if theme == "tokyonight" then
		require("marin.configs.themes.tokyonight")
		TokyoNight()
		return
	end
	if theme == "github" then
		require("marin.configs.themes.github")
		GitHub()
		return
	end
	if theme == "vscode" then
		require("marin.configs.themes.vscode")
		VSCode()
		return
	end
	if theme == "moonfly" then
		require("marin.configs.themes.moonfly")
		Moonfly()
		return
	end
	if theme == "adwaita" then
		require("marin.configs.themes.adwaita")
		Adwaita()
		return
	end
end

setup("adwaita")
