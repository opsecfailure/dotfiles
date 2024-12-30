local options = {
    autoindent = true,
    clipboard = "unnamedplus",
    cursorline = true,
    expandtab = true,
    ignorecase = true,
    number = true,
    scrolljump = -100,
    shiftwidth = 4,
    smartcase = true,
    smartindent = true,
    softtabstop = 4,
    tabstop = 4,
    textwidth = 66,
    title = true,
    undofile = true,
}
for option, value in pairs(options) do vim.opt[option] = value end

vim.cmd('syntax off')
vim.cmd('set notermguicolors')

vim.g.mapleader = " "
