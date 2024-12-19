-- --  treesitter config
local configs = require("nvim-treesitter.configs")

configs.setup({
	ensure_installed = { "html", "rust", "lua" },
	sync_install = false,
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
})
