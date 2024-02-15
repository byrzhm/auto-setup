vim.g.mapleader = " "

-- Open explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Disable highlight
vim.keymap.set("n", "<leader>no", vim.cmd.noh)

-- Indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move selected block 
--  `gv` reselects the last visual selection
--  `=` re-indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- why 2? not 1?

-- J but don't move the cursor
vim.keymap.set("n", "J", "mzJ`z")

-- <C-d> <C-u> but keep cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep search item in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- <leader>p, overwrite but don't change clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])
-- <leader>y, yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- <leader>d, delete but don't change clipboard
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Quick fix
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

-- replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Jump back and forth
vim.keymap.set("n", "<leader>q", "<C-o>")
vim.keymap.set("n", "<leader>e", "<C-i>")


