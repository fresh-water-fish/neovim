local lspconfig = require'lspconfig'
lspconfig.ccls.setup {
  init_options = {
    compilationDatabaseDirectory = "build";
    index = {
      threads = 0;
    };
    clang = {
      excludeArgs = { "-frounding-math"} ;
    };
  };
  cmd = { "ccls" };
  filetypes = { "c", "cpp", "objc", "objcpp" };
--  root_dir = root_pattern("compile_commands.json", ".ccls", "compile_flags.txt", ".git") or dirname
}

