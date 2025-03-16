require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
-- Existing options
-- Add more options as needed

-- Set the Python provider to use the virtual environmen

vim.g.python3_host_prog = vim.fn.expand "~/.pyenv/versions/3.11.0/bin/python3"
vim.g.python_host_prog = vim.fn.expand "~/.pyenv/versions/3.11.0/bin/python"
vim.g.loaded_python3_provider = nil

-- Disable Python2

-- Set environment variable
