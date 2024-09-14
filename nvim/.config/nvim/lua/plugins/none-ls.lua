return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier.with({
                    extra_filetypes = { "toml" },
                }),
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.gersemi,
                null_ls.builtins.formatting.gofmt,
                null_ls.builtins.formatting.sql_formatter,
                null_ls.builtins.formatting.tidy,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.cbfmt,
                null_ls.builtins.diagnostics.cppcheck,
                null_ls.builtins.diagnostics.checkmake,
                null_ls.builtins.diagnostics.mypy,
                null_ls.builtins.diagnostics.textidote,
                null_ls.builtins.diagnostics.cmake_lint,
                -- null_ls.builtins.diagnostics.glslc.with({
                --     extra_args = { "--target-env=opengl" }, -- use opengl instead of vulkan1.0
                -- }),
                null_ls.builtins.diagnostics.golangci_lint,
                null_ls.builtins.diagnostics.hadolint,
                null_ls.builtins.diagnostics.spectral,
                null_ls.builtins.diagnostics.sqlfluff.with({
                    extra_args = { "--dialect", "postgres" }, -- change to your dialect
                }),
                null_ls.builtins.diagnostics.tidy,
                require("none-ls.diagnostics.eslint"),
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

        vim.keymap.set({ "n" }, "ff", "<cmd>lua vim.lsp.buf.format({})<CR><cmd>wa<CR>", {})
    end,
}
