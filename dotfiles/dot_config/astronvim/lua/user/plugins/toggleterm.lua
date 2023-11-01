return {
	"akinsho/toggleterm.nvim",
	cmd = { "ToggleTerm", "TermExec" },
	opts = {
		highlights = {
			Normal = { link = "Normal" },
			NormalNC = { link = "NormalNC" },
			NormalFloat = { link = "NormalFloat" },
			FloatBorder = { link = "FloatBorder" },
			StatusLine = { link = "StatusLine" },
			StatusLineNC = { link = "StatusLineNC" },
			WinBar = { link = "WinBar" },
			WinBarNC = { link = "WinBarNC" },
		},
		size = function(term)
			if term.direction == "horizontal" then
				return vim.o.lines * 0.5
			elseif term.direction == "vertical" then
				return vim.o.columns * 0.5
			end
		end,
		on_create = function()
			vim.opt.foldcolumn = "0"
			vim.opt.signcolumn = "no"
		end,
		open_mapping = [[<F7>]],
		shading_factor = 2,
		direction = "float",
		float_opts = { border = "rounded" },
	},
}
