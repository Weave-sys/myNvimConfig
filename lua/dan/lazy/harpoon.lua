return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup({
      settings = {
        save_on_toggle = false,
        save_on_change = true,
        enter_on_sendcmd = false,
        tmux_autoclose_windows = false,
        excluded_filetypes = { "harpoon" },
        mark_branch = false,
        tabline = false,
        tabline_prefix = "   ",
        tabline_suffix = "   ",
      },
    })

    -- Keymaps
    local list = harpoon:list()

    vim.keymap.set("n", "<leader>a", function()
      list:add()
    end, { desc = "Harpoon Add File" })

    vim.keymap.set("n", "<leader>h", function()
      harpoon.ui:toggle_quick_menu(list)
    end, { desc = "Harpoon Menu" })

    vim.keymap.set("n", "<leader>1", function() list:select(1) end)
    vim.keymap.set("n", "<leader>2", function() list:select(2) end)
    vim.keymap.set("n", "<leader>3", function() list:select(3) end)
    vim.keymap.set("n", "<leader>4", function() list:select(4) end)

    vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
	vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)  
	end,

}
