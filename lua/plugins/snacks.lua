return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        -- your explorer configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
      image = {
        enabled = false,
      },
      picker = {
        win = {
          input = {
            keys = {
              -- <C-Up>/<C-Down> don't make it through the terminal, so use <c-k>/<c-j>
              -- for history instead. list navigation stays on <c-n>/<c-p>.
              ["<c-k>"] = { "history_back", mode = { "i", "n" } },
              ["<c-j>"] = { "history_forward", mode = { "i", "n" } },
            },
          },
        },
        sources = {
          explorer = {
            -- your explorer picker configuration comes here
            -- or leave it empty to use the default settings
          },
        },
      },
    },
  },
}
