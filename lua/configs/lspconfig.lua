require("nvchad.configs.lspconfig").defaults()

vim.lsp.config('rust_analyzer', {
  settings = {
    ["rust-analyzer"] = {
        checkOnSave = true,
        check = {
          command = "clippy",
        },
      }
    }
})
local servers = { "html", "cssls" }
vim.lsp.enable(servers)
-- Go
vim.lsp.enable('gopls')
-- Rust
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('taplo') -- for toml
-- Node
vim.lsp.enable('tsc')
vim.lsp.enable('biome')

-- read :h vim.lsp.config for changing options of lsp servers 
