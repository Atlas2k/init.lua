-- Show document diagnostics
vim.keymap.set("n", "<leader>xf", "<cmd>TroubleToggle document_diagnostics<cr>",
    { silent = true, noremap = true }
)

-- Show workspace diagnostics
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
    { silent = true, noremap = true }
)
-- Set the gutter indicators to icons instead of letters
local signs = {
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " "
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Use the default config
require("trouble").setup {}
