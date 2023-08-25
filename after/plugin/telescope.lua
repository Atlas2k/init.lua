local builtin = require('telescope.builtin')

-- A couple binds to use telescope easily

-- Normal find files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Find git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Grep a word in a file, note this needs BurntSushi/ripgrep to work
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
