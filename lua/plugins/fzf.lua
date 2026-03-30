return {
    "ibhagwan/fzf-lua",
    opts = {},
    keys = {
        {
            "<leader>ff",
            function()
                require("fzf-lua").files({
                    cmd = "fd --type f --exclude node_modules --exclude .git"
                })
            end
        },
        {
            "<leader>fg",
            function()
                require("fzf-lua").grep({
                    cmd = "rg --smart-case --color=always --glob '!{.git,node_modules}/'"
                })
            end
        },
        {
            "<leader>fc",
            function()
                require("fzf-lua").files({
                    cmd = "fd --type f --exclude node_modules --exclude .git",
                    cwd = vim.fn.stdpath("config")
                })
            end
        },
        {
            "<leader>fb",
            function()
                require("fzf-lua").builtin()
            end
        }
    }
}
