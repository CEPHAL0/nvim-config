local lsp = require('lsp-zero')


require('lspconfig').pylyzer.setup({
    settings = {
        python = {
            checkOnType = false,
            smartCompletion = true,
            diagnostics = true,
            inlayHints = true,
        }
    }

})

require('mason').setup({})
require('mason-lspconfig').setup({
	-- Replace the language servers listed
	-- with the ones you want to install
	ensure_installed = {'tsserver', 'rust_analyzer', 'cssls', 'cssmodules_ls', 'tailwindcss', 'ast_grep','templ', 'html', 'stimulus_ls', 'eslint', 'intelephense', 'ruff' },
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
	},
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
   mapping = cmp.mapping.preset.insert({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
   }),
   sources = {
    {name = 'nvim_lsp'}
   }
})



local cmp_select = {behavior = cmp.SelectBehavior.Select}

lsp.set_preferences({
	sign_icons = { },
    float_border = 'rounded',
    sign_text = {
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»',
    },
})


local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
lsp.preset('recommended')


lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}
	lsp.default_keymaps({buffer = bufnr})
    vim.api.nvim_clear_autocmds({group = augroup, buffer = bufnr})
    vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format()
        end,
    })

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)  
lsp.setup()
