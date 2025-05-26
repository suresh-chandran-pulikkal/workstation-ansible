return {
  formatters_by_ft = {
    python = { "ruff_fix", "ruff_format" },
    sh = { "shfmt" },
    bash = { "shfmt" },
    yaml = { "yamlfmt" },
    ["yaml.ansible"] = { "yamlfmt" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
