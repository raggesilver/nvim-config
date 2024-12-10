local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    vue = { "prettier" },
    c = { "clang-format" },
    js = { "prettier" },
    typescriptreact = { "prettier" },
    typescript = { "prettier" },
    python = { "ruff_fix", "ruff_format" },
    rust = { "rustfmt" },
    -- vala = { "uncrustify" },
    xml = { "prettier" },
    md = { "prettier" },
    markdown = { "prettier" },
  },

  formatters = {
    prettier = {
      options = {
        -- Use a specific prettier parser for a file extension
        ext_parsers = {
          -- qmd = "markdown",
          xml = "html",
          ui = "html",
        },
      },
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 2000,
    lsp_fallback = true,
  },
}

return options
