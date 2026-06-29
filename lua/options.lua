require "nvchad.options"

-- add yours here!

if vim.fn.has("wsl") == 1 then
    vim.g.clipboard = {
        name = "win32yank",
        copy = {
            ["+"] = "win32yank.exe -i --crlf",
            ["*"] = "win32yank.exe -i --crlf",
        },
        paste = {
            ["+"] = "win32yank.exe -o --lf",
            ["*"] = "win32yank.exe -o --lf",
        },
        cache_enabled = 0,
    }
end

local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
o.clipboard = "unnamedplus"
-- o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
o.foldmethod = "indent"
o.foldlevel = 99
o.foldlevelstart = 99
