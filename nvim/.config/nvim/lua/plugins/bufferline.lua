return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup()
        vim.keymap.set('n', '<S-l>', ":bn<CR>", {})

        vim.keymap.set('n', '<S-h>', ":bp<CR>", {})

        vim.keymap.set('n', '<S-x>', ":bd<CR> | :bp<CR>", {})
    end
}
