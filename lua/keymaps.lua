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
Nmap("<A-h>", "<cmd>vertical resize -5<CR>", { desc = "Decrease window width by 5" })
Nmap("<A-j>", "<cmd>resize -5<CR>", { desc = "Decrease window height by 5" })
Nmap("<A-k>", "<cmd>resize +5<CR>", { desc = "Increase window height by 5" })
Nmap("<A-l>", "<cmd>vertical resize +5<CR>", { desc = "Increase window width by 5" })

-- Remap for dealing with word wrap
Nmap("k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
Nmap("j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Tab managemnt
Nmap("<leader><tab>", "<cmd>bnext<CR>", { silent = true, desc = "Next [T]ab" })
Nmap("<leader><s-tab>", "<cmd>bprev<CR>", { silent = true, desc = "Previous [T]ab" })
-- Insert at bol or eol
Nmap("<leader>;", "mmA;<Esc>`m", { desc = "Insert ; at EoL" })
Nmap("<leader>}", "mmA;<Esc>`m", { desc = "Insert } at EoL" })
-- Change previous with bs
Nmap("<leader><bs>", "<C-o>", { desc = "Return to previous jump" })
-- Plugin specific keymaps are within each plugin config
-- modeline
-- vim: ts=2 sts=2 sw=2
