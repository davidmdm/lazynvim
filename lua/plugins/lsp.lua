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
                "!org-local+lock scalar",
                "!org-local+lock sequence",
                "!org-local+lock mapping",
              },
            },
          },
        },
        -- nvim-lspconfig deprecated `tsgo` into `tsc`, whose cmd resolver prefers a
        -- project-local node_modules/.bin/tsc. Classic tsc (TS 5.x) doesn't support
        -- `--lsp` and exits 1, so force the actual tsgo binary.
        tsgo = {
          cmd = { "tsgo", "--lsp", "--stdio" },
        },
        -- vtsls = true,
      },
    },
  },
}
