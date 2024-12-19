-- rust
-- -- Function to check if the current file is a Rust file
function run_cargo()
	local filetype = vim.bo.filetype
	if filetype == "rust" then
		vim.cmd("wa") -- Save all the files
		vim.cmd("terminal cargo run") -- Open terminal and run cargo
		vim.cmd("startinsert") -- Enter insert mode in terminal
	else
		print("This command only works for Rust files.")
	end
end

-- Map <leader>b to the run_cargo function
vim.api.nvim_set_keymap("n", "<leader>c", ":lua run_cargo()<CR>", { noremap = true, silent = true })

--vim.api.nvim_set_keymap('n', '<leader>r', ':w<CR>:terminal cargo run<CR>:startinsert<CR>', { noremap = true, silent = true })

