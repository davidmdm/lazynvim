return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      vim.lsp.enable("cue")
    end,
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

              customTags = {
                "!lock scalar",
                "!lock sequence",
                "!lock mapping",
                "!local scalar",
                "!local sequence",
                "!local mapping",
                "!org-local scalar",
                "!org-local sequence",
                "!org-local mapping",
              },
            },
          },
        },
        -- tsgo = false,
        -- vtsls = false,
      },
    },
  },
}
