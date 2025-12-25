return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      inlay_hints = { enabled = false },
      codelens = {
        enabled = false,
      },
      servers = {
        ["*"] = {
          keys = {
            { "<c-k>", false, mode = "i" },
          },
        },
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
        -- tsgo = {},
        -- vtsls = false,
      },
    },
  },
}
