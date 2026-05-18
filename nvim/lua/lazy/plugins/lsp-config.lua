return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },

    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local servers = {
        "pyright",
      }

      for _, server in ipairs(servers) do
        vim.lsp.enable(server)
        vim.lsp.config(server, {
          capabilities = capabilities,
        })
      end
    end,
  },
}
