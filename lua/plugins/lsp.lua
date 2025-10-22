return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      for _, value in ipairs(keys) do
        if value[1] == "<c-k>" then
          value[1] = "<leader>sh"
          break
        end
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      inlay_hints = { enabled = false },
      servers = {
        zls = {
          enable_build_on_save = true,
        },
        gopls = {
          analyses = {},
        },
        cue = {},
        yamlls = {
          settings = {
            yaml = {
              customTags = { "!lock", "!local" },
            },
          },
        },
      },
    },
  },
}
