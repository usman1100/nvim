function is_a_git_repo()
	local cwd = vim.fn.getcwd() -- Get the current working directory
	local git_dir = cwd .. "/.git"

	-- Check if the .git folder exists
	return vim.fn.isdirectory(git_dir) == 1
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fa', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>ff', function()
	local is_repo = is_a_git_repo()
	if is_repo then
		builtin.git_files()
	else
		builtin.find_files()
	end
end)
