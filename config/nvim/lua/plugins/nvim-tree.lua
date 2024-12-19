require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})


local api = require "nvim-tree.api"

local function opts(desc)
	return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
end
-- custom mappings
vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
vim.keymap.set('n', '?',     api.tree.toggle_help)
vim.keymap.set('n', '%',     api.fs.create)
--vim.keymap.set('n', 'r',     api.fs.rename)



vim.keymap.set('n', '<leader>pv',     vim.cmd.NvimTreeOpen)
