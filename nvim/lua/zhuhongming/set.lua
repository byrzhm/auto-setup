-- General settings
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = true   -- Show relative line numbers


-- Indentation settings
vim.opt.expandtab = true        -- Use spaces instead of tabs
vim.opt.shiftwidth = 4          -- Number of spaces to use for each step of (auto)indent
vim.opt.tabstop = 4             -- Number of spaces that a <Tab> in the file counts for
vim.opt.softtabstop = 4

vim.opt.smartindent = true


-- Search settings
vim.opt.ignorecase = true       -- Ignore case when searching
vim.opt.smartcase = true        -- Override 'ignorecase' if search pattern contains uppercase letters
vim.opt.hlsearch = false         -- Highlight search matches
vim.opt.incsearch = true        -- Show search matches as you type

-- Fold settings
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldcolumn = "1"
vim.cmd([[ set nofoldenable ]])


vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true


vim.opt.wrap = false            -- Disable line wrapping
vim.opt.cursorline = true       -- Highlight the current line
vim.opt.termguicolors = true    -- Enable 24-bit RGB color in the TUI


vim.opt.isfname:append("@-@")

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

