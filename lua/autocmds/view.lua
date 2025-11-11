-- ================================================================================================
-- TITLE : auto-commands
-- ABOUT : automatically run code on defined events (e.g. save, yank)
-- ================================================================================================


local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local view_autocmds_group = augroup("ViewAutocmdsGroup", { clear = true })

-- Highlight the yanked text for 200ms
autocmd("TextYankPost", {
    group = view_autocmds_group,
    pattern = "*",
    callback = function()
        vim.hl.on_yank({
            higroup = "IncSearch",
            timeout = 500
        })
    end
})
