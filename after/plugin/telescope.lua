require'telescope'.setup({
    defaults = {
        file_ignore_patterns = {"^./.git/", "^/__pycache__/" ,"^node_modules/", "^vendor/", "^./.venv/"},
        
    mappings = { 
            i = {
                ["<C-x>"] = require"telescope.actions".select_vertical
            }
        },
        
    }})

