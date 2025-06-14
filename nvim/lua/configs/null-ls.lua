local null_ls = require("null-ls")

local opts = {
  sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.formatting.clang_format,
    -- null_ls.builtins.formatting.gotmpl,
    null_ls.builtins.formatting.goimports_reviser,
  }
}
return opts
