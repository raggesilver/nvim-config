-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local configs = require "nvchad.configs.lspconfig"

-- EXAMPLE
local servers = {
  html = {},
  cssls = {},
  eslint = {},
  -- tailwindcss = {},
  unocss = {},
  emmet_language_server = {},
  docker_compose_language_service = {},
  ts_ls = {
    init_options = {
      plugins = {
        {
          name = "@vue/typescript-plugin",
          location = "/usr/local/lib/node_modules/@vue/language-server",
          languages = { "vue" },
        },
      },
    },
    filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
  },
  -- vtsls = {},
  jsonls = {
    settings = {
      json = {
        schemas = require("schemastore").json.schemas(),
        validate = { enable = true },
      },
    },
    filetypes = { "json", "json5", "jsonc" },
  },
  yamlls = {
    settings = {
      yaml = {
        schemaStore = {
          -- You must disable built-in schemaStore support if you want to use
          -- this plugin and its advanced options like `ignore`.
          enable = false,
          -- Avoid TypeError: Cannot read properties of undefined (reading 'length')
          url = "",
        },
        schemas = require("schemastore").yaml.schemas(),
      },
    },
  },
  volar = {},
  vala_ls = {},
  clangd = {
    on_attach = function(client, bufnr)
      client.server_capabilities.signatureHelpProvider = false
      configs.on_attach(client, bufnr)
    end,
    cmd = {
      "/usr/local/opt/llvm/bin/clangd",
      "--offset-encoding=utf-16",
    },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto", "arduino" },
    -- init_options = {
    --   compilationDatabasePath = "./build",
    -- },
  },
  pyright = {
    settings = {
      python = {
        venvPath = ".venv",
      },
    },
  },
  rust_analyzer = {
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
        },
      },
    },
  },
  mesonlsp = {
    root_pattern = lspconfig.util.root_pattern("meson_options.txt", "meson.options", "meson.build", ".git"),
  },
  -- jdtls = {
  --   cmd = { vim.fn.stdpath "data" .. "/mason/bin/jdtls" },
  --   root_dir = lspconfig.util.root_pattern("mvnw", "gradlew", ".git"),
  -- },
  dockerls = {},
}

for name, opts in pairs(servers) do
  opts.on_init = opts.on_init or configs.on_init
  opts.on_attach = opts.on_attach or configs.on_attach
  opts.capabilities = opts.capabilities or configs.capabilities

  opts.capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true,
  }

  lspconfig[name].setup(opts)
end
