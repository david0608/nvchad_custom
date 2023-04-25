local default_config = require("plugins.configs.lspconfig")

require("lspconfig").tsserver.setup {
  on_attach = default_config.on_attach,
  capabilities = default_config.capabilities,
}

require("lspconfig").rust_analyzer.setup {
  on_attach = default_config.on_attach,
  capabilities = default_config.capabilities,
}
