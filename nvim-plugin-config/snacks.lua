return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    config = function()
        require("snacks").setup({
            zen = { 
                enabled = true,
                win = {
                    width = 0,  -- fullscreen
                    backdrop = false,
                },
            },
        })

        vim.keymap.set("n", "<leader>tz", Snacks.zen.zen)
        vim.keymap.set("n", "<leader>tZ", Snacks.zen.zoom)
    end,
}
