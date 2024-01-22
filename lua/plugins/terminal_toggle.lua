return {
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	-- or
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
      --[[ things you want to change go here]]
      direction = "float",
      open_mapping = [[<c-/>]]
		},
	},
	config = true
}
