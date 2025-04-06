local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)


local function nav_file_keymap(number)
	local keymap = "<C-" .. number .. ">"
	vim.keymap.set("n", keymap, function() ui.nav_file(number) end)
end

for i = 1, 9 do
	nav_file_keymap(i)
end

