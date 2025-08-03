return {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "golines" },
    python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
  },
  formatters = {
    golines = {
      append_args = { "-m", "120", "-t", "4" },
    }
  }
}
