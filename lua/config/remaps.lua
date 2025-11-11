-- ================================================================================================
-- TITLE: NeoVim keymaps
-- ABOUT: sets some quality-of-life keymaps
-- ================================================================================================

-- Center screen when jumping
vim.keymap.set(
    "n",
    "n",
    "nzzzv",
    { desc = "Next search result (centered)" }
)

vim.keymap.set(
    "n",
    "N",
    "Nzzzv",
    { desc = "Previous search result (centered)" }
)

vim.keymap.set(
    "n",
    "<C-d>",
    "<C-d>zz",
    { desc = "Half page down (centered)" }
)

vim.keymap.set(
    "n",
    "<C-u>",
    "<C-u>zz",
    { desc = "Half page up (centered)" }
)


-- Working with NULL register
vim.keymap.set(
    "x",
    "<leader>gP",
    [["_dP]],
    { desc = "Send the replaced text to Null register" }
)

vim.keymap.set(
    { "n", "v" },
    "<leader>gd",
    [["_d]],
    { desc = "Send deleted text to the Null register" }
)


-- Better yanking
vim.keymap.set(
    { "n", "x" },
    "<leader>gy",
    [["+y]],
    { desc = "Copy selected text to System clipboard" }
)

vim.keymap.set(
    { "n", "x" },
    "<leader>gY",
    [[gg"+yG]],
    { desc = "Copy current line to System clipboard" }
)

vim.keymap.set(
    "n",
    "<leader>gp",
    [["+p]],
    { desc = "Paste text from the System clipboard" }
)


-- Quickfix List navigation
vim.keymap.set(
    "n",
    "<C-j>",
    "<Cmd>cnext<CR>zz",
    { desc = "Next result in Quickfix list" }
)

vim.keymap.set(
    "n",
    "<C-k>",
    "<Cmd>cprev<CR>zz",
    { desc = "Previous result in Quickfix list" }
)

vim.keymap.set(
    "n",
    "<leader>gj",
    "<Cmd>lnext<CR>zz",
    { desc = "Next result in Location list" }
)

vim.keymap.set(
    "n",
    "<leader>gk",
    "<Cmd>lprev<CR>zz",
    { desc = "Previous result in Location list" }
)


-- Quick Search and Replace
vim.keymap.set(
    "n",
    "<leader>gr",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gcI<Left><Left><Left><Left>]],
    { desc = "Search and Replace word under cursor" }
)

-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


-- Better indenting in visual mode
vim.keymap.set(
    "x",
    "<",
    "<gv",
    { desc = "Indent left and reselect" }
)

vim.keymap.set(
    "x",
    ">",
    ">gv",
    { desc = "Indent right and reselect" }
)


-- Moving lines up or down
vim.keymap.set(
    "n",
    "<A-j>",
    "<Cmd>m .+1<CR>==",
    { desc = "Move line down" }
)

vim.keymap.set(
    "n",
    "<A-k>",
    "<Cmd>m .-2<CR>==",
    { desc = "Move line up" }
)

vim.keymap.set(
    "x",
    "J",
    ":m '>+1<CR>gv=gv",
    { desc = "Move selection down" }
)

vim.keymap.set(
    "x",
    "K",
    ":m '<-2<CR>gv=gv",
    { desc = "Move selection up" }
)


-- Better J behavior
vim.keymap.set(
    "n",
    "J",
    "mzJ`z",
    { desc = "Join lines and keep cursor position" }
)


-- Remove Search highlighting
vim.keymap.set(
    "n",
    "<Esc>",
    "<Cmd>nohlsearch<CR>",
    { desc = "Quick remove search highlighting" }
)


vim.keymap.set(
    "n",
    "<leader>ex",
    vim.cmd.Ex,
    { desc = "Show File Explorer" }
)
