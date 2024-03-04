vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<leader>ii", 'copilot#Accept("<CR>")', { silent = true, expr = true })
