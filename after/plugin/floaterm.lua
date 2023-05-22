vim.keymap.set('n', "<leader>ft", ":FloatermNew --name=myfloat --height=0.4 --width=0.3 --autoclose=2 fish <CR> ")
vim.keymap.set('n', "t", ":FloatermToggle myfloat<CR>")
vim.keymap.set('t', "<Esc>", "<C-\\><C-n>:q<CR>")
