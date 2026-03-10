



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

--LSP Bullshit

vim.lsp.config("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {
      check = { command = "clippy" },
    },
  },
})

-- Set Java 21 for Neovim LSPs
vim.env.JAVA_HOME = "/usr/lib/jvm/java-21-openjdk"
vim.env.PATH = vim.env.JAVA_HOME .. "/bin:" .. vim.env.PATH
lsp.enable("jdtls")

lsp.config("jdtls", {
  cmd = { "jdtls", "-data", vim.fn.expand("~/.cache/jdtls/workspace") },
  root_dir = vim.fn.getcwd(), -- forces current folder as project root
  filetypes = { "java" },
})
vim.lsp.enable("rust_analyzer")
vim.opt.autochdir = true

