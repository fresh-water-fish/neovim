local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- C
   lspconfig.ccls.setup {
      init_options = {
         compilationDatabaseDirectory = "build",
         index = {
            threads = 0,
         },
         clang = {
            excludeArgs = { "-frounding-math" },
         },
      },
   }

   -- Go
   lspconfig.gopls.setup {
      cmd = { "gopls" },
      filetypes = { "go", "gomod" },
   }

   -- Haskell
   lspconfig.hls.setup {
      cmd = { "haskell-language-server-wrapper", "--lsp" },
      filetypes = { "haskell", "lhaskell" },
      lspinfo = function(cfg)
         if cfg.settings.languageServerHaskell.logFile then
            return "logfile: " .. cfg.settings.languageServerHaskell.logFile
         end
         return ""
      end,
   }

   -- Lua

   lspconfig.sumneko_lua.setup {
      -- cmd = {"/usr/local/bin/lua-language-server", "-E", vim.fin.stdpath('cache')..'/lspconfig/sumneko_lua/lua_language_server' .. "/main.lua"},
      settings = {
         Lua = {
            runtime = {
               -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
               version = "LuaJIT",
               -- Setup your lua path
               path = runtime_path,
            },
            diagnostics = {
               -- Get the language server to recognize the `vim` global
               globals = { "vim" },
            },
            workspace = {
               -- Make the server aware of Neovim runtime files
               library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
               enable = false,
            },
         },
      },
   }

   -- Java
   lspconfig.java_language_server.setup {
      cmd = { "java-language-server" },
   }

   -- Python
   lspconfig.pyright.setup {
      cmd = { "pyright-langserver", "--stdio" },
      filetypes = { "python" },
   }

   -- Rust
   lspconfig.rls.setup {
      cmd = { "rust-analyzer" },
      filetypes = { "rust" },
   }

   -- LaTeX
   lspconfig.texlab.setup {
      cmd = { "texlab" },
      filetypes = { "md", "markdown" },
   }
end

return M
