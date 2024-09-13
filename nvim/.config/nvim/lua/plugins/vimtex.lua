return {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
        -- VimTeX configuration goes here, e.g.
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_mappings_prefix = "<leader>"
        -- vim.keymap.set("n", "<leader>m", ":silent! VimtexView<CR>", {})
        vim.keymap.set("n", "<leader>v", ":silent! VimtexView<CR> <cmd>!hyprctl dispatch movefocus l<CR> ", {})
        vim.keymap.set("n", "<leader>m", ":silent! VimtexView<CR>", {})
        vim.g.vimtex_view_forward_search_on_start = 2
        -- vim.keymap.set("n", "<leader>m", function()
        -- 	-- Execute the :VimView command
        -- 	vim.cmd("VimtexView<CR>")
        --
        -- 	-- Run the Lua shell script
        -- 	vim.fn.system("bash", "~/bashScripts/move.sh")
        -- end)
    end,
}
