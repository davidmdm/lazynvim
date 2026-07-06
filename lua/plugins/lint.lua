return {
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        -- Only run golangci-lint in projects that have a golangci-lint config.
        -- Without this it runs on every BufReadPost/InsertLeave/BufWritePost
        -- across the whole module, even in projects that don't use it.
        golangcilint = {
          condition = function(ctx)
            return vim.fs.find(
              { ".golangci.yml", ".golangci.yaml", ".golangci.toml", ".golangci.json" },
              { path = ctx.filename, upward = true }
            )[1]
          end,
        },
      },
    },
  },
}
