function conf()
    require("telescope").setup({
        defaults = {
            layout_strategy = "horizontal",
            layout_config = { 
                prompt_position = "top",
            },
            sorting_strategy = "ascending"
        }
    })
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" } )
    vim.keymap.set('n', "<leader>fh", builtin.help_tags, { desc = "[F]ind [H]elp" } )
    vim.keymap.set('n', "<leader>fk", builtin.keymaps, { desc = "[F]ind [K]eymaps" } )
    vim.keymap.set('n', "<leader>f/", builtin.live_grep, { desc = "[F]ind live" } )
    vim.keymap.set('n', "<leader>fo", builtin.oldfiles, { desc  = "[F]ind [O]ld files" } )
end 

return {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = conf,
}
