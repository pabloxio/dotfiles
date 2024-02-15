return {
	n = {
		-- Terminal
		["<leader>tt"] = { "<cmd>ToggleTerm direction=tab<cr>", desc = "In a new tab" },
		["<leader>tx"] = { "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Split horizontal" },
		["<leader>tv"] = { "<cmd>ToggleTerm direction=vertical<cr>", desc = "Split vertical" },
		["<leader>ts"] = { "<cmd>ToggleTermSendCurrentLine<cr>", desc = "Send current line" },
		["<leader>t1"] = { "<cmd>1ToggleTerm<cr>", desc = "Toggle Terminal 1" },
		["<leader>t2"] = { "<cmd>2ToggleTerm<cr>", desc = "Toggle Terminal 2" },
		["<leader>t3"] = { "<cmd>3ToggleTerm<cr>", desc = "Toggle Terminal 3" },
		["<leader>t4"] = { "<cmd>4ToggleTerm<cr>", desc = "Toggle Terminal 4" },
		["<leader>t5"] = { "<cmd>5ToggleTerm<cr>", desc = "Toggle Terminal 5" },
		["<leader>t6"] = { "<cmd>5ToggleTerm<cr>", desc = "Toggle Terminal 6" },
		["<leader>t7"] = { "<cmd>5ToggleTerm<cr>", desc = "Toggle Terminal 7" },
		["<leader>t8"] = { "<cmd>5ToggleTerm<cr>", desc = "Toggle Terminal 8" },
		["<leader>t9"] = { "<cmd>5ToggleTerm<cr>", desc = "Toggle Terminal 9" },
		["<leader>t0"] = { "<cmd>5ToggleTerm<cr>", desc = "Toggle Terminal 0" },
		-- Telescope
		["<leader>f/"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Find current buffer" },
		["<leader>fg"] = { "<cmd>Telescope git_files<cr>", desc = "Find git files" },
		["<leader>ft"] = { "<cmd>Telescope filetypes<cr>", desc = "Find file types" },
		-- Symbols
		["<leader>s"] = { "<cmd>AerialToggle<cr>", desc = "Symbols Toggle" },
	},
}
