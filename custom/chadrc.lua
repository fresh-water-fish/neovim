-- This is an example chadrc file , its supposed to be placed in /lua/custom/

local M = {}

M.options = {
  expandtab = false,
  tabstop = 2,
  relativenumber = true,
}

M.ui = {
  italic_comments = true,
  theme = "onedark",
}

M.plugins = {
  status = { dashboard = true },
  options = {
    lspconfig = { setup_lspconf = "custom.lsp_config" },
  },
}

M.mappings = {
  terminal = { esc_termmode = { "<ESC>" } },
}

return M
