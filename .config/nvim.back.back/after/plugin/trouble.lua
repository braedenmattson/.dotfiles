vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle workspace_diagnostics<cr>",{silent = true, noremap = true})
