
return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        cmd = "Telescope",
        keys = {
            {
                "<leader>ff",
                "<cmd>Telescope find_files<CR>",
                desc = "Buscar archivos",
            },
            {
                "<leader>fg",
                "<cmd>Telescope live_grep<CR>",
                desc = "Buscar texto en el proyecto",
            },
            {
                "<leader>fb",
                "<cmd>Telescope buffers<CR>",
                desc = "Buscar archivos abiertos",
            },
            {
                "<leader>fh",
                "<cmd>Telescope help_tags<CR>",
                desc = "Buscar ayuda",
            },
        },
        opts = {
            defaults = {
                sorting_strategy = "ascending",
                layout_config = {
                    prompt_position = "top",
                },
            },
        },
    },
}
