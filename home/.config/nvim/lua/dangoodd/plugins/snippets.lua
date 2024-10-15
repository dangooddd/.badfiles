return {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
        local luasnip = require("luasnip")
        local function map_luasnip_jump(direction, key)
            local function luasnip_jump()
                if luasnip.expand_or_jumpable() then
                    return string.format("<cmd>lua require'luasnip'.jump(%i)<CR>", direction)
                else
                    return key
                end
            end
            vim.keymap.set({ "i", "s" }, key, luasnip_jump(), { expr = true, silent = true })
        end

        map_luasnip_jump(1, "<Tab>")
        map_luasnip_jump(-1, "<S-Tab>")
    end
}
