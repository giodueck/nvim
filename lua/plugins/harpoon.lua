local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

-- Keymaps
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = 'Harpoon: add current buffer' })
vim.keymap.set("n", "<leader>n", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Harpoon: toggle quick menu' })

vim.keymap.set("n", "<M-1>", function() harpoon:list():select(1) end, { desc = 'Harpoon: Go to first harpoon item' })
vim.keymap.set("n", "<M-2>", function() harpoon:list():select(2) end, { desc = 'Harpoon: Go to second harpoon item' })
vim.keymap.set("n", "<M-3>", function() harpoon:list():select(3) end, { desc = 'Harpoon: Go to third harpoon item' })
vim.keymap.set("n", "<M-4>", function() harpoon:list():select(4) end, { desc = 'Harpoon: Go to fourth harpoon item' })
vim.keymap.set("n", "<M-5>", function() harpoon:list():select(5) end, { desc = 'Harpoon: Go to fifth harpoon item' })
vim.keymap.set("n", "<M-6>", function() harpoon:list():select(6) end, { desc = 'Harpoon: Go to sixth harpoon item' })

-- Toggle previous & next buffers stored within Harpoon list (I never use these)
-- vim.keymap.set("n", "<C-P>", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<C-N>", function() harpoon:list():next() end)
