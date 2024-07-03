vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.ignorecase = true
opt.smartcase = true

opt.clipboard:append("unnamedplus")

opt.backspace = "indent,eol,start"

opt.splitright = true
