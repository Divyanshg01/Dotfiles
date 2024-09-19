return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "vtsls",
                    "texlab",
                    "gopls",
                    "cmake",
                    "clangd",
                    "pyright",
                    "html",
                    "tailwindcss",
                    "emmet_ls",
                    "markdown_oxide",
                    "cssls",
                    "glsl_analyzer",
                    "texlab",
                    "jsonls",
                    "eslint",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.vtsls.setup({
                capabilities = capabilities,
            })
            --
            -- lspconfig.ts_ls.setup({
            --     capabilities = capabilities,
            -- })
            lspconfig.html.setup({
                capabilities = capabilities,
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })

            lspconfig.texlab.setup({
                capabilities = capabilities,
            })
            lspconfig.clangd.setup({
                capabilities = capabilities,
            })
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })
            lspconfig.gopls.setup({
                capabilities = capabilities,
            })
            lspconfig.cmake.setup({
                capabilities = capabilities,
            })
            lspconfig.tailwindcss.setup({
                capabilities = capabilities,
            })
            lspconfig.emmet_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.markdown_oxide.setup({
                capabilities = capabilities,
            })
            lspconfig.cssls.setup({
                capabilities = capabilities,
                settings = {
                    css = {
                        validate = true,
                        lint = {
                            unknownAtRules = "ignore",
                        },
                    },
                    scss = {
                        validate = true,
                        lint = {
                            unknownAtRules = "ignore",
                        },
                    },
                    less = {
                        validate = true,
                        lint = {
                            unknownAtRules = "ignore",
                        },
                    },
                },
            })
            lspconfig.glsl_analyzer.setup({
                capabilities = capabilities,
            })
            lspconfig.jsonls.setup({
                capabilities = capabilities,
            })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
