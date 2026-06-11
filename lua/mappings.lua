require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>fl", function()
  require("telescope.builtin").lsp_document_symbols()
end, { desc = "LSP Document Symbols" })
map("n", "<leader>cc", "<cmd>ccl<cr>")
map("n", "<leader>al", "<cmd>AerialToggle<cr>")

map("v", "<leader>cr", function()
  local filename = vim.fn.expand("%:.")
  local start_line = vim.fn.line("v")
  local end_line = vim.fn.line(".")
  if start_line > end_line then
    start_line, end_line = end_line, start_line
  end
  local output = string.format("%s %d:%d", filename, start_line, end_line)
  vim.fn.setreg("+", output)
  vim.notify("Copied: " .. output)
end, {
  desc = "Copy selected range",
})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
