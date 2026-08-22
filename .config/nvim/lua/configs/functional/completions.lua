function Completions()
	vim.opt.completeopt = { "menu", "menuone", "noselect", "popup" }
	vim.opt.autocomplete = true
	vim.opt.complete = { "o", "kspell" }

	vim.api.nvim_create_autocmd("LspAttach", {
    		callback = function(ev)
        		local client = vim.lsp.get_client_by_id(ev.data.client_id)
        		if client and client:supports_method("textDocument/completion") then
            			local chars = {}

            			for i = 32, 126 do
            			    table.insert(chars, string.char(i))
            			end
            			client.server_capabilities.completionProvider.triggerCharacters = chars
            			vim.lsp.completion.enable(true, client.id, ev.buf, {
            			    autotrigger = true,
            			})
        		end
    		end,
	})

end
