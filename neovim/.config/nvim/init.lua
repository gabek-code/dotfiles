-- Initialize original vimrc

vim.cmd([[
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

set guicursor=i:block

]])

-- Native LSP configuration --
local lsp_flags = {
    debounce_text_changes = 150,
}

require('lspconfig').clangd.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

-- Setup signs for LSP diagnostics
local signs = {
    Error = " ",
    Warning = " ",
    Hint = " ",
    Information = " "
}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end

-- syntax highlighting+ semantics
require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "cpp", "lua" },

    sync_install = false,
    auto_install = true,
    ignore_install = { "javascript" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
}

require("todo-comments").setup {
    highlight = {
    before = "", -- "fg" or "bg" or empty
    keyword = "wide", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
    after = "fg", -- "fg" or "bg" or empty
    pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
    comments_only = false, -- uses treesitter to match keywords in comments only
    max_line_len = 400, -- ignore lines longer than this
    exclude = {}, -- list of file types to exclude highlighting
  },
}

-- Key Mappings
-- -- See `:help vim.lsp.*` for docs
local opts = {noremap=true, silent=true}
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts);
vim.api.nvim_set_keymap('n', 'H', '<cmd>ClangdSwitchSourceHeader<CR>', opts);
