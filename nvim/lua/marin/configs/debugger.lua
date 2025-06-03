local dap = require("dap")
local dapui = require("dapui")

require("mason-nvim-dap").setup({
	automatic_setup = true,
	handlers = {},
})

-- Basic debugging keymaps, feel free to change to your liking!
-- vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debug: Start/Continue" })
-- vim.keymap.set("n", "<F1>", dap.step_into, { desc = "Debug: Step Into" })
-- vim.keymap.set("n", "<F2>", dap.step_over, { desc = "Debug: Step Over" })
-- vim.keymap.set("n", "<F4>", dap.step_out, { desc = "Debug: Step Out" })
-- vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Debug: Toggle Breakpoint" })
-- vim.keymap.set("n", "<leader>B", function()
-- 	dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
-- end, { desc = "Debug: Set Breakpoint" })
-- vim.keymap.set("n", "<F7>", dapui.toggle, { desc = "Debug: See last session result." })

dapui.setup({
	icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
	controls = {
		icons = {
			pause = "⏸",
			play = "▶",
			step_into = "⏎",
			step_over = "⏭",
			step_out = "⏮",
			step_back = "b",
			run_last = "▶▶",
			terminate = "⏹",
			disconnect = "⏏",
		},
	},
})
-- dap.adapters.dart = {
-- 	type = "executable",
-- 	command = "/home/marianguceanu/development/flutter/bin/flutter",
-- 	args = { "debug_adapter" },
-- }
--
-- dap.configurations.dart = {
-- 	{
-- 		type = "dart",
-- 		request = "launch",
-- 		name = "Launch Flutter Program",
-- 		dartSdkPath = "/home/marianguceanu/development/bin/cache/dart-sdk",
-- 		flutterSdkPath = "/home/marianguceanu/development/flutter/",
-- 		program = "${file}",
-- 		-- The nvim-dap plugin populates this variable with the editor's current working directory
-- 		cwd = "${workspaceFolder}",
-- 		-- This gets forwarded to the Flutter CLI tool, substitute `linux` for whatever device you wish to launch
-- 		toolArgs = { "-d", "android-x64" },
-- 	},
-- }
require("dap").configurations.dart = {}
require("dap.ext.vscode").load_launchjs()
require("dap-python").setup("~/AppData/Local/Programs/Python/Python312/python.exe")
