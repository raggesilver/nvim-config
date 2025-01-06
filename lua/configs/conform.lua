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
    python = { "black", "isort" },
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

  -- _after_save instead of _on_save makes conform run the formatter
  -- asynchronously after the file is saved.
  format_after_save = {
    lsp_format = "fallback",
  },
}

return options
