return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local status_ok, alpha = pcall(require, "alpha")
		if not status_ok then
			return
		end

		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {

			[[                     ▀████▀▄▄              ▄█ ]],
			[[                       █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
			[[               ▄        █          ▀▀▀▀▄  ▄▀  ]],
			[[              ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
			[[             ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
			[[             ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
			[[              ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
			[[               █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
			[[              █   █  █      ▄▄           ▄▀   ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "   Find file", ":Telescope find_files <cr>"),
			dashboard.button("e", "  New file", ":ene <bar> startinsert <cr>"),
			dashboard.button("r", "   Recently used files", ":Telescope oldfiles <cr>"),
			dashboard.button("t", "  Find text", ":Telescope live_grep <cr>"),
			dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.vim<cr>"),
			dashboard.button("q", "   Quit neovim", ":qa<cr>"),
		}

		local function footer()
			return "Don't stop until you are proud..."
		end

		dashboard.section.footer.val = footer()

		dashboard.section.footer.opts.hl = "type"
		dashboard.section.header.opts.hl = "include"
		dashboard.section.buttons.opts.hl = "keyword"

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)
	end,
}
