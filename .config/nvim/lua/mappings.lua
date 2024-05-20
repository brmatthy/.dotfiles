require "nvchad.mappings"

-- functions to create or remove mappings
local map = vim.keymap.set
local nomap = vim.keymap.del


-- Mapping for oil.nvim
map("n", "-", "<CMD>Oil --float<CR>", { desc = "Open paretn directory"})

-- mappings for telescope
map("n", "<leader>fg", "<cmd> Telescope live_grep <CR>", { desc = "Live grep"})


-- Disable mappings
nomap("n", "<leader>fw")
