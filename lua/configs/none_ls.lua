local null_ls = require "null-ls"

local opts = {
  sources = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnotics.mypy.with {
      extra_args = function()
        local virtual = vim.fn.getcwd() .. "/.venv"
        return { "--python-executable", virtual .. "/bin/python3" }
      end,
    },
  },
}

return opts
