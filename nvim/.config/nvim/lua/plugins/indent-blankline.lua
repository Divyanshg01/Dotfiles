return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
        require("ibl").setup {
            indent = { char = "┊" },
            whitespace = { highlight = {"Whitespace" , "NonText" ,"Function", "Label" }, remove_blankline_trail = true },
            -- remove_blankline_trail = true,
            scope = { show_exact_scope = true }

        }
    end

}
