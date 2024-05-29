function conf()
    require("lualine").setup({
        options = {
            theme = "gruvbox-material",
            component_separators = { 
                left = '|', 
                right = '|',
            },
            disabled_filetypes = {
                statusline = {},
                winbar = {},
                "NvimTree",
            },
        },
        sections = {
            lualine_x = { "encoding", "filetype" },
            lualine_z = { "selectioncount", "location" },
        },
    })
end

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = conf,
}
