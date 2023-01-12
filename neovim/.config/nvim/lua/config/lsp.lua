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


-- Native LSP configuration --
local lsp_flags = {
    debounce_text_changes = 150,
}

local function setup_lsp_diags()
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
      virtual_text = false,
      signs = true,
      update_in_insert = false,
      underline = true,
    }
  )
end

require('nvim-lsp-installer').setup {

}
local lspconfig = require('lspconfig')

require('lspconfig').clangd.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig').eslint.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig').ltex.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig').rust_analyzer.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
