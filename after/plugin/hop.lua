local hop = require("hop")

vim.keymap.set("n", "<leader>fh", function() hop.hint_words() end)
