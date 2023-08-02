local dap = require('dap')

vim.keymap.set("n", "<leader>bp", function() dap.toggle_breakpoint() end)
vim.keymap.set("n", "<leader>db", function() dap.continue() end)
vim.keymap.set("n", "<leader>dn", function() dap.step_over() end)
vim.keymap.set("n", "<leader>di", function() dap.step_into() end)
vim.keymap.set("n", "<leader>ds", function() dap.repl_open() end)

