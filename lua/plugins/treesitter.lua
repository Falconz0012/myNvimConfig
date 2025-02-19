return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
        auto_installed = true,
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html","go","rust" },
				highlight = { enable = true },

				indent = { enable = true },
			})
		end,
	},
}
