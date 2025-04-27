-- EXAMPLE
local lspconfig = require "lspconfig"
local util = require "lspconfig/util"
local nvlsp = require "nvchad.configs.lspconfig"

lspconfig.jdtls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  filetypes = { "java" },
}

lspconfig.pyright.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  filetypes = { "python" },
  settings = {
    python = {
      analysis = {
        autoImportCompletions = true,
        disableOrganizeImports = true,
      },
    },
  },
}

lspconfig.lua_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  filetypes = { "lua" },
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}

-- lspconfig.rust_analyzer.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
--   filetypes = { "rust" },
--   rootdir = util.root_pattern("Cargo.toml"),
--   settings = {
--     ["rust_analyzer"] = {
--       cargo = {
--         allFeatures = true,
--       },
--     }
--   }
-- }

lspconfig.gopls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  rootdir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

lspconfig.helm_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  valuesFiles = {
    mainValuesFile = "values.yaml",
    lintOverlayValuesFile = "values.lint.yaml",
    additionalValuesFilesGlobPattern = "values*.yaml",
  },
  filetypes = { "helm" },
  -- yamlls = {
  --   enabled = true,
  --   enabledForFilesGlob = "*.{yaml,yml}",
  --   diagnosticsLimit = 50,
  --   showDiagnosticsDirectly = false,
  --   path = "yaml-language-server",
  --   config = {
  --     schemas = {
  --       kubernetes = "templates/**",
  --     },
  --     completion = true,
  --     hover = true,
  --     -- any other config from https://github.com/redhat-developer/yaml-language-server#language-server-settings
  --   }
  -- }
}

lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

-- lspconfig.yamlls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
--   cmd = { 'yaml-language-server', '--stdio' },
-- }
