local M = {}

function M.setup()
  -- Basic Molten commands
  vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>", { desc = "Initialize Molten for current buffer", silent = true })
  vim.keymap.set("n", "<leader>me", ":MoltenEvaluateOperator<CR>", { desc = "Run operator selection", silent = true })
  vim.keymap.set("n", "<leader>ml", ":MoltenEvaluateLine<CR>", { desc = "Evaluate line", silent = true })
  vim.keymap.set("n", "<leader>mc", ":MoltenReevaluateCell<CR>", { desc = "Re-evaluate cell", silent = true })
  vim.keymap.set("n", "<leader>md", ":MoltenDelete<CR>", { desc = "Delete cell", silent = true })
  vim.keymap.set("n", "<leader>mh", ":MoltenHideOutput<CR>", { desc = "Hide output", silent = true })

  -- Additional functionality
  vim.keymap.set("n", "<leader>mr", ":MoltenRestart<CR>", { desc = "Restart current kernel", silent = true })
  vim.keymap.set("n", "<leader>ms", ":MoltenSave<CR>", { desc = "Save notebook", silent = true })
  vim.keymap.set("n", "<leader>mo", ":MoltenShowOutput<CR>", { desc = "Show output window", silent = true })
  vim.keymap.set(
    "v",
    "<leader>mv",
    ":<C-u>MoltenEvaluateVisual<CR>gv",
    { desc = "Evaluate visual selection", silent = true }
  )
  vim.keymap.set("n", "<leader>mx", ":MoltenInterrupt<CR>", { desc = "Interrupt execution", silent = true })

  -- Complex commands
  vim.keymap.set("n", "<leader>mq", function()
    vim.cmd "MoltenDelete"
    vim.cmd "MoltenInit"
  end, { desc = "Reset Molten (Delete and reinit)", silent = true })

  -- Output configuration
  vim.keymap.set("n", "<leader>mm", function()
    vim.g.molten_auto_open_output = not vim.g.molten_auto_open_output
    print("Molten auto-open output: " .. tostring(vim.g.molten_auto_open_output))
  end, { desc = "Toggle auto-open output", silent = true })
end

return M
