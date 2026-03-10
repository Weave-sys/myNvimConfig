return 
{
      'sainnhe/edge',
      lazy = false,
      priority = 1000,
      config = function()

  		vim.g.edge_style = "aura" -- "aura" for Dark
 	    vim.g.edge_transparent_background = 0 -- Optional
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.edge_enable_italic = true
        vim.cmd.colorscheme('edge')
      end
}
