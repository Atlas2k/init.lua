require'nvim-treesitter.configs'.setup {
  -- A list of parser names
  ensure_installed = { "java", "dart", "c", "lua", "vim", "vimdoc", "query" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {

    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
