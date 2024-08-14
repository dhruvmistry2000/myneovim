local M = {}

function M.setup()
	-- Normal mode keybindings
	vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true }) -- Save
	vim.api.nvim_set_keymap("n", "<C-q>", ":q<CR>", { noremap = true, silent = true }) -- Quit
	vim.api.nvim_set_keymap("n", "<C-x>", ":bd<CR>", { noremap = true, silent = true }) -- Close buffer
	vim.api.nvim_set_keymap("n", "<C-c>", '"+y', { noremap = true, silent = true }) -- Copy to clipboard
	vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true, silent = true }) -- Paste from clipboard
	vim.api.nvim_set_keymap("n", "<C-u>", "u", { noremap = true, silent = true }) -- Undo
	vim.api.nvim_set_keymap("n", "<C-r>", "<C-r>", { noremap = true, silent = true }) -- Redo

	-- Insert mode keybindings
	vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true }) -- Save in insert mode
	vim.api.nvim_set_keymap("i", "<C-c>", '<Esc>"+y', { noremap = true, silent = true }) -- Copy to clipboard in insert mode
	vim.api.nvim_set_keymap("i", "<C-v>", '<Esc>"+p', { noremap = true, silent = true }) -- Paste from clipboard in insert mode

	-- Visual mode keybindings
	vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true }) -- Copy to clipboard
	vim.api.nvim_set_keymap("v", "<C-x>", '"+d', { noremap = true, silent = true }) -- Cut to clipboard
	vim.api.nvim_set_keymap("v", "<C-v>", '"+p', { noremap = true, silent = true }) -- Paste from clipboard
end

return M
