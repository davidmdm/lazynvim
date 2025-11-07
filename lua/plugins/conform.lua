return {
  "stevearc/conform.nvim",
  opts = function()
    ---@type conform.setupOpts
    local opts = {
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
      },
    }
    return opts
  end,
}
