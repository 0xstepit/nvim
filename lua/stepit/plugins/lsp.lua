return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = false,
    dependencies = {
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },

        -- LSP Support
        { 'neovim/nvim-lspconfig' },

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-nvim-lsp' },

        -- Snippets
        { 'L3MON4D3/LuaSnip' },
        { 'rafamadriz/friendly-snippets' },
    },

    config = function()
        -- First we should import lsp-zero
        local lsp_zero = require('lsp-zero')

        -- Here we load the default keybindings and override some of them
        lsp_zero.on_attach(function(client, bufnr)
            local opts = { buffer = bufnr, remap = false }

            lsp_zero.default_keymaps({ buffer = bufnr })

            vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)
            vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
            vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
            vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
            vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
        end)

        -- Here we configure Mason
        require('mason').setup({
            ui = {
                icons = {
                    package_installed = '✓',
                    package_pending = '➜',
                    package_uninstalled = '✗',
                },
            }
        })

        -- Here is where we manage the installation of language servers
        require('mason-lspconfig').setup({
            ensure_installed = {
                'tsserver',
                'cssls',
                'tailwindcss',
                'lua_ls',
                'pyright',
                'gopls',
                'rust_analyzer',
            },
            handlers = {
                -- This allows us to have default settings for all language server
                lsp_zero.default_setup,

                -- Lua configuration
                lua_ls = function()
                    local lua_opts = lsp_zero.nvim_lua_ls()
                    require('lspconfig').lua_ls.setup(lua_opts)
                end,

                -- Go configuration
                gopls = function()
                    require('lspconfig').gopls.setup({
                        cmd = { 'gopls', 'serve' },
                        settings = {
                            gopls = {
                                completeUnimported = true,
                                usePlaceholders = true,
                                analyses = {
                                    unusedparams = true,
                                },
                                staticcheck = true,
                            },
                        },
                    })
                end,
            }
        })

        local cmp = require('cmp')
        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            sources = {
                { name = 'path' },
                { name = 'nvim_lsp' },
                { name = 'nvim_lua' },
            },
            formatting = lsp_zero.cmp_format(),
            mapping = cmp.mapping.preset.insert({
                ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
            }),
        })

        -- Set formatting on save
        lsp_zero.format_on_save({
            format_opts = {
                async = false,
                timeout_ms = 10000,
            },
            servers = {
                ['tsserver'] = { 'javascript', 'typescript' },
                ['lua_ls'] = { 'lua' },
                ['rust_analyzer'] = { 'rust' },
                ['gopls'] = { 'go', 'gomod', 'gowork', 'gotmpl' },
            }
        })
    end,

}
