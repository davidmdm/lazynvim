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
          settings = {
            zls = {
              enable_build_on_save = true,
            },
          },
        },
        gopls = {
          settings = {
            gopls = {
              analyses = {
                embedlit = false,
              },
            },
          },
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
        -- TypeScript: `tsc` (TS 7 native, mason package `tsc`) is the only TS server.
        -- mason-lspconfig auto-enables every installed package, so `tsgo` and `vtsls`
        -- are pinned off here to keep a second client from attaching to the same
        -- buffers and duplicating diagnostics.
        tsc = {},
        tsgo = false,
        vtsls = false,
      },
    },
  },
}
