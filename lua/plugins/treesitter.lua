
return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            local parsers = {
                "python",
                "lua",
                "javascript",
                "typescript",
                "html",
                "css",
                "json",
                "bash",
                "markdown",
                "markdown_inline",
            }

            require("nvim-treesitter").install(parsers)

            vim.api.nvim_create_autocmd("FileType", {
                callback = function(args)
                    local filetype = vim.bo[args.buf].filetype

                    local supported = {
                        python = true,
                        lua = true,
                        javascript = true,
                        typescript = true,
                        html = true,
                        css = true,
                        json = true,
                        sh = true,
                        bash = true,
                        markdown = true,
                    }

                    if supported[filetype] then
                        pcall(vim.treesitter.start, args.buf)
                    end
                end,
            })
        end,
    },
}
