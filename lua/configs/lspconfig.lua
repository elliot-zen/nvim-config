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
vim.lsp.config("tsgo", {
  cmd = function(dispatchers, config)
    local cmd = "tsc"

    if config.root_dir then
      local local_cmd =
        vim.fs.joinpath(config.root_dir, "node_modules", ".bin", "tsc")

      if vim.fn.executable(local_cmd) == 1 then
        cmd = local_cmd
      end
    end

    return vim.lsp.rpc.start({
      cmd,
      "--lsp",
      "--stdio",
    }, dispatchers)
  end,
})
vim.lsp.enable('tsgo')
vim.lsp.enable('biome')

-- read :h vim.lsp.config for changing options of lsp servers 
