local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local opts = require "plugins.configs.treesitter"

      local ll = { "vim", "tsx", "python", "rust" }
      for _, l in ipairs(ll) do
        table.insert(opts.ensure_installed, l)
      end

      return opts
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      local opts = require "plugins.configs.nvimtree"
      opts.view.adaptive_size = true
      return opts
    end
  }
}

return plugins
