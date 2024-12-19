vim.g.mapleader = " "
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
--vim.cmd("set spell")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)



-- -- plugins for install
local plugins = {
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-buffer" },
	{ "L3MON4D3/LuaSnip" },
	{ "garymjr/nvim-snippets" },
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	{ "mbbill/undotree" },
	{ "nvim-tree/nvim-tree.lua" },
	{ "vim-airline/vim-airline" },
	{ "vim-airline/vim-airline-themes" },
	{ "ThePrimeagen/harpoon" },
	{ "nvimtools/none-ls.nvim" },
	{ "echasnovski/mini.pairs", version = "*" },
	{ "AlphaTechnolog/pywal.nvim", as = "pywal" },
	{ "karb94/neoscroll.nvim" },
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
	{ "altercation/vim-colors-solarized" }

}
local opts = {}
require("lazy").setup(plugins, opts)

require("plugins.colors")
require("plugins.treesitter")
require("plugins.completion")
require("plugins.nonels")
require("plugins.harpoon")
require("plugins.telescope")
require("plugins.undotree")
require("plugins.airline")
require("plugins.neoscroll")
require("remap")
require("custom")
