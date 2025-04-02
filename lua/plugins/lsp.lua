return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            ast_grep = {
                root_dir = function(fname)
                    local root_files = {
                        ".git",
                        "pyproject.toml",
                        "setup.py",
                        "requirements.txt",
                        "sgconfig.yaml", -- Add ast-grep config if needed
                    }
                    return require("lspconfig.util").root_pattern(unpack(root_files))(fname) or vim.fs.dirname(fname)
                end,
            },
        },
    },
}
