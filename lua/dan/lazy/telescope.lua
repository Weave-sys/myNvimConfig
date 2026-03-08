return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
          'nvim-lua/plenary.nvim',
          -- optional but recommended
          { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      },
  config = function()
    opts = {
        ensure_installed = {
          "c", "lua", "vim", "vimdoc",
          "elixir", "javascript", "html",
          "python", "typescript",
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      }
    
  end,
}
