return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>n", ":Neotree toggle filesystem reveal left<CR> ", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree toggle buffers reveal float<CR> ", {})
	end
}
