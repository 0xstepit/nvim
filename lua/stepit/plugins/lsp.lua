return {
	"VonHeikemen/lsp-zero.nvim",
	name = "LspZero",
	branch = "v3.x",
	lazy = false,
	dependencies = {
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },

		-- LSP Support
		{ "neovim/nvim-lspconfig" },

		-- Autocompletion
		{ "hrsh7th/nvim-cmp" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "hrsh7th/cmp-nvim-lsp" },

		-- Snippets
		{ "L3MON4D3/LuaSnip" },
		{ "rafamadriz/friendly-snippets" },
	},

	config = function()
		-- First we should import lsp-zero
		local lsp_zero = require("lsp-zero")

		-- Here we load the default keybindings and override some of them
		lsp_zero.on_attach(function(client, bufnr)
			local opts = { buffer = bufnr, remap = false }

			lsp_zero.default_keymaps({ buffer = bufnr })

			-- go to definition
			vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
			-- go to reference
			vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
			-- go to implementation
			vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
			-- rename
			vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
			-- visualize docstring
			vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
			-- go to next diagnostic
			vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
			-- go to previous diagnostic
			vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
			-- open diagnostic message in float window
			vim.keymap.set("n", "<leader>di", function() vim.diagnostic.open_float() end, opts)
			-- open code action
			vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
		end)

		-- Here we configure Mason
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			}
		})

		-- Here is where we manage the installation of language servers
		require("mason-lspconfig").setup({
			ensure_installed = {
				"tsserver",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"pyright",
				"gopls",
				"rust_analyzer",
				"solidity",
			},
			handlers = {
				-- This allows us to have default settings for all language server
				lsp_zero.default_setup,

				-- Lua configuration
				lua_ls = function()
					local lua_opts = lsp_zero.nvim_lua_ls()
					require("lspconfig").lua_ls.setup(lua_opts)
				end,

				-- Go configuration
				-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#gopls
				gopls = function()
					require("lspconfig").gopls.setup({
						cmd = { "gopls", "serve" },
						settings = {
							gopls = {
								completeUnimported = true,
								--  enables placeholders for function parameters or struct
								--  fields in completion responses.
								usePlaceholders = true,
								analyses = {
									unusedparams = true,
								},
								-- staticcheck enables additional analyses from staticcheck.io
								staticcheck = true,
								gofumpt = true,
							},
						},
					})
				end,
				-- Typescript configuration
				tsserver = function()
					require("lspconfig").tsserver.setup({
						settings = {
							settings = {
								completions = {
									completeFunctionCalls = true
								}
							}
						},
					})
				end,
			}
		})

		local cmp = require("cmp")
		local cmp_select = { behavior = cmp.SelectBehavior.Select }

		cmp.setup({
			sources = {
				{ name = "path" },
				{ name = "nvim_lsp" },
				{ name = "nvim_lua" },
			},
			formatting = lsp_zero.cmp_format(),
			mapping = cmp.mapping.preset.insert({
				-- move up in suggestions
				["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
				-- move down in suggestions
				["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
				-- select
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
			}),
		})

		-- Set formatting on save
		lsp_zero.format_on_save({
			format_opts = {
				async = false,
				timeout_ms = 10000,
			},
			servers = {
				["tsserver"] = { "javascript", "typescript" },
				-- lua uses .editorconfig file
				["lua_ls"] = { "lua" },
				["rust_analyzer"] = { "rust" },
				["gopls"] = { "go", "gomod", "gowork", "gotmpl" },
			}
		})
	end,
}
