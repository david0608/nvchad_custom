require("nvim-lsp-installer").setup {}

local default_config = require("plugins.configs.lspconfig")

require("lspconfig").tsserver.setup {
  on_attach = default_config.on_attach,
  capabilities = default_config.capabilities,
}
