-- -- vim keymaps
-- --
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--moves on visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--copy to the main clipboard

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>t", ":terminal<CR>:startinsert<CR>")

-- half page remap
--vim.keymap.set("n", "<C-j>", "<C-d>zz")
--vim.keymap.set("n", "<C-k>", "<C-u>zz")
--vim.keymap.set("v", "<C-j>", "<C-d>zz")
--vim.keymap.set("v", "<C-k>", "<C-u>zz")
--
-- half page search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without losing
vim.keymap.set("x", "<C-p>", '"_dP')

-- delete withot saving to buffer
vim.keymap.set("n", "<C-d>", '"_d')
vim.keymap.set("v", "<C-d>", '"_d')

-- make executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR><CR>", { silent = true })

--select all
vim.keymap.set("n", "<C-A>", "ggVG")

-- auto preetifier

-- vim.keymap.set("n", "<leader>", "ggVG=")


-- Key mappings for splits
local opts = { noremap = true, silent = true }

-- Horizontal split
vim.api.nvim_set_keymap('n', '<leader>sh', ':split<CR>', opts)  -- Leader + sh
-- Vertical split
vim.api.nvim_set_keymap('n', '<leader>sv', ':vsplit<CR>', opts) -- Leader + sv

