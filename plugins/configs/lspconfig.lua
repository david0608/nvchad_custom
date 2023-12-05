local default_config = require("plugins.configs.lspconfig")

require("lspconfig").tsserver.setup {
  on_attach = default_config.on_attach,
  -- capabilities = default_config.capabilities,
}

require("lspconfig").rust_analyzer.setup {
  on_attach = default_config.on_attach,
  -- capabilities = default_config.capabilities,
}

if vim.g.custom_is_arduino_project
then
  require("lspconfig").arduino_language_server.setup {
    on_attach = default_config.on_attach,
    cmd = {
      'arduino-language-server',
      '-cli-config', vim.g.custom_arduino_cli_config_path,
      '-fqbn', vim.g.custom_arduino_board
    },
    filetypes = {
      'arduino',
      'cpp'
    }
  }
else
  require("lspconfig").clangd.setup {
    on_attach = default_config.on_attach,
    -- capabilities = default_config.capabilities,
    cmd = {
      'clangd',
      '-query-driver', '/usr/bin/arm-none-eabi-g*,/usr/local/bin/arm-none-eabi-g*'
    }
  }
end
