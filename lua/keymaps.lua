-- Set  clear search highlight.
Nmap("<Esc>", "<cmd>nohlsearch<CR>", nil)
-- Since leader is <Space>, setting this to Nop is more comfortable
Map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
-- Diagnostic keymaps
Nmap("[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
Nmap("]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
Nmap("<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
Nmap("<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Keybinds to make split navigation easier.
Nmap("<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
Nmap("<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
Nmap("<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
Nmap("<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })

-- Remap for dealing with word wrap
Nmap("k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
Nmap("j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Tab managemnt
Nmap("<tab>", "<cmd>bnext<CR>", { silent = true, desc = "Next [T]ab" })
Nmap("<s-tab>", "<cmd>bprev<CR>", { silent = true, desc = "Previous [T]ab" })
-- Splits
Nmap("<leader>ws", "<cmd>vsplit<CR>", { silent = true, desc = "[S]plit window vertically" })
Nmap("<leader>wS", "<cmd>split<CR>", { silent = true, desc = "[S]plit window horizontally" })
-- Saving
-- Insert at bol or eol
Nmap("<leader>;", "mmA;<Esc>`m", { desc = "Insert ; at EoL" })
Nmap("<leader>}", "mmA;<Esc>`m", { desc = "Insert } at EoL" })
-- Change previous with bs
Nmap("<bs>", "<C-o>")
-- Plugin specific keymaps are within each plugin config
-- vim: ts=2 sts=2 sw=2 etim.keymap.set("n", "", "<C-w><C-k>", )
