-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local discipline = require("seth.discipline")

discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Do things without affecting the registers
keymap.set("n", "x", '"_x') -- sends 'x'-ed to black hole instead of register 
keymap.set("n", "<Leader>p", '"0p') -- pastes yanked to register 0
keymap.set("n", "<Leader>P", '"0P') -- pastes most recently yanked from register 0 to before cursor
keymap.set("v", "<Leader>p", '"0p') -- replace selected text with what's in register 0
keymap.set("n", "<Leader>c", '"_c') -- delete text to black hole and enter insert mode
keymap.set("n", "<Leader>C", '"_C') -- delete from cursor to end of line..black hole
keymap.set("v", "<Leader>c", '"_c') -- delete text to black hole and enter insert mode
keymap.set("v", "<Leader>C", '"_C') -- delete from cursor to endo of line...black hole
keymap.set("n", "<Leader>d", '"_d') -- delete text to black hole
keymap.set("n", "<Leader>D", '"_D') -- delete to end of line sending to black hole
keymap.set("v", "<Leader>d", '"_d') -- delete text to black hole
keymap.set("v", "<Leader>D", '"_D') -- delete to end of line sending to black hole

-- Increment/decrement
keymap.set("n", "+", "<C-a>") -- increases number under cursor
keymap.set("n", "-", "<C-x>") -- decreases number under cursor

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d') -- delete whole word under cursor to black hole

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G") -- select all lines in files

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts) -- create new line one line down from cursor in insert mode
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts) -- create new line one line up from cursor in insert modes

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts) -- move forward in jump list

-- New tab
keymap.set("n", "te", ":tabedit") -- open new tab
keymap.set("n", "<tab>", ":tabnext<Return>", opts) -- next tab
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts) -- previous tab
-- Split window
keymap.set("n", "ss", ":split<Return>", opts) -- split horizontally
keymap.set("n", "sv", ":vsplit<Return>", opts) -- split vertically
-- Move window
keymap.set("n", "sh", "<C-w>h") -- move cursor to window on left
keymap.set("n", "sk", "<C-w>k") -- move cursor to window above
keymap.set("n", "sj", "<C-w>j") -- move cursor to window below
keymap.set("n", "sl", "<C-w>l") -- move cursor to window on right

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><") -- decrease width of current window 
keymap.set("n", "<C-w><right>", "<C-w>>") -- increase width of current window 
keymap.set("n", "<C-w><up>", "<C-w>+") -- increase height of current window 
keymap.set("n", "<C-w><down>", "<C-w>-") -- decrease height of current window 

-- Diagnostics
keymap.set("n", "<C-j>", function() -- move cursor to next diagnostic message in current file 
  vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function() -- calls my replaceHexWithHSL fun in seth.hsl 
  require("seth.hsl").replaceHexWithHSL()
end)

keymap.set("n", "<leader>i", function() -- calls my toggleInlayHints func in seth.lsp 
  require("seth.lsp").toggleInlayHints()
end)
