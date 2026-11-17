local vscode = require('vscode')

vim.keymap.set("n", "<leader>a", function()
    vscode.action("editor.action.quickFix")
end)
vim.keymap.set("n", "<leader>h", function()
    vscode.action("editor.action.showHover")
end)