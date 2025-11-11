function ColorMyPencils(color)
    color = color or "rose-pine-moon"
    vim.cmd.colorscheme(color)
end

return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function ()
            require("rose-pine").setup({
                dark_variant = "moon",
                --disable_background = true,

                enable = {
                    terminal = true,
                    legacy_highlights = true,
                    migrations = true
                },

                styles = {
                    bold = true,
                    italic = true,
                    transparency = false
                }
            })

            ColorMyPencils()
        end
    },

    {
        "rebelot/kanagawa.nvim",
        config = function()
            require("kanagawa").setup({
                transparent = false
            })

            -- ColorMyPencils("kanagawa-wave")
        end
    }
}
