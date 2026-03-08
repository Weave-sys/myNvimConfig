return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  opts = {
    auto_install = true,
    ensure_installed = {
      "c", "lua", "vim", "vimdoc",
      "elixir", "javascript", "html",
      "python", "typescript", "rust",
    },
    highlight = { enable = true,
    additional_vim_regex_highlighting = false, },
    indent = { enable = true },
  },
}
