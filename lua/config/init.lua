



vim.keymap.set("v", "(a", "xi()<Esc>P", { noremap = true, silent = true})
vim.keymap.set("v", "[a", "xi[]<Esc>P", { noremap = true, silent = true})
vim.keymap.set("v", "{a", "xi{}<Esc>P", { noremap = true, silent = true})
vim.keymap.set("v", "\"a", "xi\"\"<Esc>P", { noremap = true, silent = true})
vim.keymap.set("v", "\'a", "xi\'\'<Esc>P", { noremap = true, silent = true})
vim.keymap.set("v", "(\"a", "xi(\"\")<Esc>P", { noremap = true, silent = true})
vim.keymap.set("v", "(\'a", "xi(\'\')<Esc>P", { noremap = true, silent = true})


vim.keymap.set("n", "yy", "+yy", { noremap = true, silent = true})
vim.keymap.set("v", "y", "+y", { noremap = true, silent = true})

vim.keymap.set("n", "yy", "+yy", { noremap = true, silent = true})



vim.keymap.set("n", "ZE", "<cmd>q!<CR>", { noremap = true, silent = true })

--Rust clippy additio

vim.lsp.config("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {
      check = { command = "clippy" },
    },
  },
})

vim.lsp.enable("rust_analyzer")
vim.opt.autochdir = true

