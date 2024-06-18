function conf()
    require("neo-tree").setup({
        window = {
            position = "right",
        },
    })
    -- vim.cmd([[nnoremap \ :Neotree toggle<cr>]])
end

return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = conf,
}
