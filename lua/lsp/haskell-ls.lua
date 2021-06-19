local hls_root_path = vim.fn.stdpath('cache')..'/lspconfig/hls/haskell-language-server'
--local hls_binary = "/bin/haskell-language-server"

require'lspconfig'.hls.setup {
    cmd = { "haskell-language-server-wrapper", "--lsp" },
    filetypes = { "haskell", "lhaskell" },
    lspinfo = function (cfg)
        -- return "specific"
        if cfg.settings.lanuageServerHaskell.logFile then
            return "logfile: "..cfg.settings.lanuageServerHaskell.logFile
        end
        return ""
        end;
    -- root_dir = root_pattern("*.cabal", "stack.yaml", "cabal.project", "package.yaml", "hie.yaml"),
--    settings = {
--        lanuageServerHaskell = {
--            formattingProvider = "ormolu"
--        },
--    },
}
