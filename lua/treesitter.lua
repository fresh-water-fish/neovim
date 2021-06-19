require'nvim-treesitter.configs'.setup {
  -- consistent syntax highlighting
  highlight = {
    enable = true,
    custom_captures = {
      ["foo.bar"] = "Identifier",
    },
  },
  -- incremental selection based on the named node
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  -- use tree-sitters indentation
  indent = {
    enable = false
  }, 

}
