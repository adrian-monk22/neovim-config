return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependency = "nvim-lua/plenary.nvim",

    config = function ()
        require("telescope").setup({
            defaults = {},
            pickers = {},
            extensions = {}
        })

        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
        vim.keymap.set("n", "<leader>nh", builtin.help_tags, {})
        vim.keymap.set("n", "<leader>pp", builtin.git_files, {})

        vim.keymap.set("n", "<leader>pgw", function ()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, {})

        vim.keymap.set("n", "<leader>pws", function ()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end, {})

        vim.keymap.set("n", "<leader>pWS", function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end, {})
    end
}
