return {
	-- Detects tabstop and shiftwidth automatically
	"tpope/vim-sleuth",
	{
		-- Neovim configuration LSP
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				-- Load luvit types when the `vim.uv` word is found
				{ path = "luvit-meta/library", words = { "vim%.uv" } },
			},
		},
	},
	{ "Bilal2453/luvit-meta", lazy = true },
	-- Colorscheme
	-- See `:Telescope colorscheme`.
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = true,
		priority = 1000,
		init = function()
			vim.cmd.colorscheme("moonfly")
		end,
	},
	{
		"bluz71/vim-nightfly-colors",
		name = "nightfly",
		lazy = true,
		-- priority = 1000,
		-- init = function()
		-- vim.cmd.colorscheme("nightfly")
		-- end,
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = true,
		-- priority = 1000,
		-- init = function()
		-- vim.cmd.colorscheme("carbonfox")
		-- vim.cmd.colorscheme("duskfox")
		-- end,
	},
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		dependencies = { "hrsh7th/nvim-cmp" },
		config = function()
			require("nvim-autopairs").setup({})
			-- If you want to automatically add `(` after selecting a function or method
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			local cmp = require("cmp")
			---@diagnostic disable-next-line
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end,
	},
	{

		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup()

			vim.api.nvim_set_keymap(
				"n",
				"<C-j>",
				"<cmd>ToggleTerm<CR>",
				{ noremap = true, silent = true, desc = "Toggle Terminal" }
			)
		end,
	},
}
