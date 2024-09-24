return {
    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
        build = "make install_jsregexp",
        config = function()
            local ls = require("luasnip")
            local s = ls.snippet
            local t = ls.text_node
            local i = ls.insert_node
            local extras = require("luasnip.extras")
            local rep = extras.rep
            local fmt = require("luasnip.extras.fmt").fmt
            local c = ls.choice_node
            local f = ls.function_node
            local d = ls.dynamic_node
            local sn = ls.snippet_node
            vim.keymap.set({ "i", "s" }, "<A-n>", function()
                if ls.choice_active() then
                    ls.change_choice(1)
                end
            end)

            vim.keymap.set({ "i", "s" }, "<A-k>", function()
                if ls.expand_or_jumpable() then
                    ls.expand_or_jump()
                end
            end, { silent = true })

            vim.keymap.set({ "i", "s" }, "<A-j>", function()
                if ls.jumpable(-1) then
                    ls.jump(-1)
                end
            end, { silent = true })
            ls.add_snippets("tex", {
                s("hello", {
                    t('print("hello, '),
                    -- i(1),
                    i(1, "default"),
                    t(' world")'),
                    i(2),
                    t(' world")'),
                }),
            })
            -- ls.add_snippets("tex", {
            --     s("hello", {
            --         t('print("hello, world")'),
            --     }),
            -- })
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-path",
            "hrsh7th/vim-vsnip", -- Snippets plugin
        },
        config = function()
            local cmp = require("cmp")
            require("luasnip.loaders.from_vscode").lazy_load()

            cmp.setup({
                formatting = {
                    format = require("nvim-highlight-colors").format,
                },
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" }, -- For luasnip users.
                    { name = "vsnip" }, -- For `vsnip` users.
                    { name = "path" },
                }, {
                    { name = "buffer" },
                }),
            })
        end,
    },
}
