-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.number = false
vim.opt.relativenumber = false

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

vim.g.lazyvim_picker = "snacks"

-- Root (<leader>ff, etc.) is the nearest ancestor of the current buffer containing a .git/ directory,
-- falling back to the directory nvim was started in. LSP roots and other markers are ignored.
local startup_dir = vim.uv.cwd()
vim.g.root_spec = {
  function(buf)
    local path = LazyVim.root.bufpath(buf) or startup_dir
    local git = vim.fs.find(".git", { path = path, upward = true, type = "directory" })[1]
    return git and vim.fs.dirname(git) or startup_dir
  end,
}
-- vim.g.lazyvim_ts_lsp = "tsgo"

vim.filetype.add({
  extension = {
    caddy = "caddy",
  },
  filename = {
    Caddyfile = "caddy",
  },
})
