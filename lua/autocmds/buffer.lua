-- ================================================================================================
-- TITLE : auto-commands
-- ABOUT : automatically run code on defined events (e.g. save, yank)
-- ================================================================================================

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local buffer_autocmds_group = augroup("BufferAutocmdsGroup", { clear = true })

-- Restore last cursor position when reopening a file
autocmd("BufReadPost", {
    group = buffer_autocmds_group,
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, [["]])
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end
})

-- remove all trailing whitespaces
autocmd("BufWritePre", {
    group = buffer_autocmds_group,
    pattern = "*",
    command = [[%s/\s\+$//e]]
})
