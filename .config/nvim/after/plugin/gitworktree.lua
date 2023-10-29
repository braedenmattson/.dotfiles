require("telescope").load_extension("git_worktree")
vim.keymap.set('n','<leader>gt',":lua require('telescope').extensions.git_worktree.git_worktrees()<cr>")
vim.keymap.set('n','<leader>gc',":lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>")
vim.keymap.set('n','<leader>gn',":lua require('git-worktree').create_worktree(")
