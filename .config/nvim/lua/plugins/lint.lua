return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      python = { "ruff", "pylint" },
      rust = { "clippy" },
      go = { "golangci-lint" },
      sql = { "sqlfluff", "sqruff" },
    },
  },
}
