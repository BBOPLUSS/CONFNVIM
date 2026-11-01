
return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = {
                char = "│",
                tab_char = "│",
            },
            scope = {
                enabled = true,
                char = "│",
            },
            whitespace = {
                remove_blankline_trail = true,
            },
        },
    },
}
