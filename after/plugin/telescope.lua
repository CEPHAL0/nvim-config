require'telescope'.setup({
    defaults = {
        file_ignore_patterns = {"^./.git/", "^./.__pycache__" ,"^node_modules/", "^vendor/", "^./.venv/"},
    }
})
