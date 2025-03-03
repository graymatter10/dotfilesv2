-- -- lsp config
local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

require("mason").setup({})
require("mason-lspconfig").setup({
	handlers = {
		function(server_name)
			require("lspconfig")[server_name].setup({})
		end,
	},
})

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

require("lspconfig").ts_ls.setup({
	single_file_support = false,
	on_attach = function(client, bufnr)
		print("hello tsserver")
	end,
})

local cmp = require("cmp")

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
		{ name = "luasnip" },
		{ name = "nvim-snippets" },
	},
	opts = {
		friendly_snippets = true,
	},
	preselect = "item",
	completion = {
		completeopt = "menu,menuone,noinsert",
	},
	mapping = {
		["<C-y>"] = cmp.mapping.confirm({ select = false }),
		["<C-e>"] = cmp.mapping.abort(),
		["<Up>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
		["<Down>"] = cmp.mapping.select_next_item({ behavior = "select" }),
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		--		["<C-p>"] = cmp.mapping(function()
		--			if cmp.visible() then
		--				cmp.select_prev_item({ behavior = "insert" })
		--			else
		--				cmp.complete()
		--			end
		--		end),
		--		["<C-n>"] = cmp.mapping(function()
		--			if cmp.visible() then
		--				cmp.select_next_item({ behavior = "insert" })
		--			else
		--				cmp.complete()
		--			end
		--		end),
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
})

require("mini.pairs").setup()
