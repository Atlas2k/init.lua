-- Disable netrw at the very start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- A bind to toggle tree
vim.keymap.set("n", "<leader>pv", function() vim.cmd('NvimTreeToggle') end)

local function my_on_attach(bufnr)
    local api = require('nvim-tree.api')

    local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- Use all default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- Except C-k to allow changing panes properly between tmux and nvim
    vim.keymap.del('n', '<C-k>', { buffer = bufnr })

    -- Override the show info command
    vim.keymap.set('n', '<C-v>', api.node.show_info_popup, opts('Info'))
end

require("nvim-tree").setup({
    on_attach = my_on_attach
})
