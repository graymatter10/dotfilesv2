-- -- telescoope config
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>pg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>bf", builtin.buffers, {})
--vim.keymap.set("n", "<leader>hf", builtin.help_tags, {})
require("telescope").load_extension("harpoon")
