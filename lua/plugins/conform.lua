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
        go = { "goimports", "gofumpt" },
        python = { "ruff_format" },
        cue = { "cue_fmt" },
        caddy = { "caddy" },
        zig = { "zigfmt" },
      },
    }

    for _, ft in ipairs({
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "yaml",
      "json",
      "json5",
      "html",
      "markdown",
    }) do
      opts.formatters_by_ft[ft] = { "prettier" }
    end
    return opts
  end,
}
