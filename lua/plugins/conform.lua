return {
  "stevearc/conform.nvim",
  opts = function()
    ---@type conform.setupOpts
    local opts = {
      formatters = {
        caddy = { -- added
          command = "caddy",
          args = { "fmt", "-" },
          stdin = true,
        },
      },

      formatters_by_ft = {
        lua = { "stylua" },
        fish = { "fish_indent" },
        sh = { "shfmt" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        yaml = { "prettier" },
        json = { "prettier" },
        json5 = { "prettier" },
        html = { "prettier" },
        go = { "goimports", "gofumpt" },
        cue = { "cue_fmt" },
        caddy = { "caddy" },
      },
    }
    return opts
  end,
}
