return {
  {
    "nvim-mini/mini.splitjoin",
    config = function()
      require("mini.splitjoin").setup()
      MiniSplitjoin.gen_hook.del_trailing_separator = nil
    end,
  },
}
