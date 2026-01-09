return {
  "Wansmer/treesj",
  keys = { "<space>m" },
  dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you install parsers with `nvim-treesitter`
  config = function()
    require("treesj").setup({--[[ your config ]]
      use_default_keymaps = false,
      max_join_length = 240,
    })
  end,
}
