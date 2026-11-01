
return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        cmd = "NvimTreeToggle",
        keys = {
            {
                "<leader>e",
                "<cmd>NvimTreeToggle<CR>",
                desc = "Abrir explorador de archivos",
            },
        },
        opts = {
            view = {
                width = 32,
            },
            renderer = {
                group_empty = true,
                icons = {
                    show = {
                        file = true,
                        folder = true,
                        folder_arrow = true,
                        git = true,
                    },
                },
            },
            filters = {
                dotfiles = false,
            },
        },
    },
}
