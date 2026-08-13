return {
	{    "williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		'williamboman/mason-lspconfig.nvim',
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "jdtls", "clangd", "pylsp", 'ts_ls', 'csharp_ls', 'html', 'gopls', 'omnisharp'
				}
			})

		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.csharp_ls.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.pylsp.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.html.setup({})
			lspconfig.gopls.setup({})
			lspconfig.omnisharp.setup({})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {})

		end
	}
}
