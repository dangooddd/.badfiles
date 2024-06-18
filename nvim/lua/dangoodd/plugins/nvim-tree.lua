function conf()
    require("nvim-tree").setup({
        view = {
            side = "right",
            width = 40,
        },
    })
    local api = require("nvim-tree.api")
    vim.keymap.set('n', [[\]], api.tree.toggle)
end

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = conf,
}
