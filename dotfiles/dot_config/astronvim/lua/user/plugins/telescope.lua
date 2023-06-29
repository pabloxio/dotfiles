local actions = require("telescope.actions")

return {
	"nvim-telescope/telescope.nvim",
	opts = {
		defaults = {
			sorting_strategy = "descending",
			layout_config = {
				horizontal = {
					prompt_position = "bottom",
				},
			},
			mappings = {
				i = {
					["<C-n>"] = actions.move_selection_next,
					["<C-p>"] = actions.move_selection_previous,
				},
				n = { q = actions.close },
			},
		},
	},
}
