require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local function goto_next_window(direction, opposite)
  local prev_win = vim.api.nvim_get_current_win()
  vim.cmd("wincmd " .. direction)
  if vim.api.nvim_get_current_win() == prev_win then
    vim.cmd("wincmd " .. opposite) -- Nếu không có cửa sổ theo hướng đó, di chuyển ngược lại
  end
end

vim.keymap.set("n", "<C-w>h", function()
  goto_next_window("h", "l")
end, { silent = true })
vim.keymap.set("n", "<C-w>j", function()
  goto_next_window("j", "k")
end, { silent = true })
vim.keymap.set("n", "<C-w>k", function()
  goto_next_window("k", "j")
end, { silent = true })
vim.keymap.set("n", "<C-w>l", function()
  goto_next_window("l", "h")
end, { silent = true })

vim.keymap.set("n", "<C-w><Left>", function()
  goto_next_window("h", "l")
end, { silent = true })
vim.keymap.set("n", "<C-w><Down>", function()
  goto_next_window("j", "k")
end, { silent = true })
vim.keymap.set("n", "<C-w><Up>", function()
  goto_next_window("k", "j")
end, { silent = true })
vim.keymap.set("n", "<C-w><Right>", function()
  goto_next_window("l", "h")
end, { silent = true })

vim.keymap.set("i", "<C-l>", function()
  vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
end, { silent = true, desc = "Copilot Accept" })

-- Optional additional Copilot keymaps
vim.keymap.set("i", "<M-]>", function()
  vim.fn.feedkeys(vim.fn["copilot#Next"](), "")
end, { silent = true, desc = "Copilot Next" })

vim.keymap.set("i", "<M-[>", function()
  vim.fn.feedkeys(vim.fn["copilot#Previous"](), "")
end, { silent = true, desc = "Copilot Previous" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
