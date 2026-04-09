---@diagnostic disable: undefined-global
local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
	formatting = {
		fields = { "abbr", "icon", "menu" },
		format = lspkind.cmp_format({
			mode = "symbol",
			preset = "codicons",
			menu = {
				nvim_lsp = "[LSP]",
				buffer = "[BUF]",
				path = "[PATH]",
			},
			maxwidth = 40,
			ellipsis_char = "...",
			show_labelDetails = false,
			before = function(entry, vim_item)
				vim_item.menu = entry.source.name
				return vim_item
			end,
		}),
	},
	snippet = {
		expand = function(args)
			vim.snippet.expand(args.body)
		end,
	},
	window = {
		completion = { border = "single" },
		documentation = { border = "single" },
	},
	completion = {
		completeopt = "menu,menuone,noinsert",
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
		["<C-n>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif vim.snippet.expand_or_locally_jumpable() then
				vim.snippet.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<C-p>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif vim.snippet.locally_jumpable(-1) then
				vim.snippet.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),

	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
	}, {
		-- { name = "buffer" },
		{ name = "path" },
	}),
})
