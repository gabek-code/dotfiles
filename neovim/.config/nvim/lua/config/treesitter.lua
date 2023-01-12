-- syntax highlighting+ semantics
require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "cpp", "lua" },

    sync_install = false,
    auto_install = true,
    --ignore_install = { "javascript" },
    -- list of languages that will be disabled
    disable = { "md", "tex", "javascript" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
}
