return {
	{
		"Mofiqul/dracula.nvim",
		init = function()
			local dracula = require("dracula")
			dracula.setup {
				colors = {
					bg = "#22212c",
					fg = "#f8f8f2",
					selection = "#454158",
					comment = "#7970a9",
					red = "#ff9580",
					orange = "#ffca80",
					yellow = "#ffff80",
					green = "#8aff80",
					purple = "#9580ff",
					cyan = "#80ffea",
					pink = "#ff80bf",
					bright_red = "#ffaa99",
					bright_green = "#a2ff99",
					bright_yellow = "#ffff99",
					bright_blue = "#aa99ff",
					bright_magenta = "#ff99cc",
					bright_cyan = "#99ffee",
					bright_white = "#ffffff",
					menu = "#17161d",
					visual = "#2e2b3b",
					gutter_fg = "#393649",
					nontext = "#424450"
				},
				overrides = {
					Special = { fg = dracula.colors().green, italic = false }
				}
				-- transparent_bg = true,
			}
		end
	},
	{ "neovim/nvim-lspconfig" },
	{
		"jose-elias-alvarez/null-ls.nvim",
		init = function()
			require("null-ls").setup()
		end
	},
	{
		"https://git.sr.ht/~nedia/auto-format.nvim",
		event = "BufWinEnter",
		init = function()
			require("auto-format").setup()
		end
	},
	{
		"MunifTanjim/prettier.nvim",
		init = function()
			require("prettier").setup()
		end
	},
	{
		"nvim-treesitter/nvim-treesitter",
		init = function()
			require("nvim-treesitter.configs").setup {
				ensure_installed = "all",
				auto_install = true,
				highlight = {
					enable = true
				}
			}
		end,
		build = ":TSUpdate"
	},
	{
		"windwp/nvim-ts-autotag",
		init = function()
			require("nvim-ts-autotag").setup()
		end
	},
	{
		"zbirenbaum/copilot.lua",
		init = function()
			require("copilot").setup()
		end
	},
	{
		"ms-jpq/coq_nvim",
		branch = "coq",
		dependencies = {
			{
				"ms-jpq/coq.artifacts",
				branch = "artifacts"
			},
			{
				"ms-jpq/coq.thirdparty",
				branch = "3p"
			}
		},
		init = function()
			vim.g.coq_settings = {
				auto_start = "shut-up",
				keymap = {
					bigger_preview = "",
					jump_to_mark = ""
				}
			}
			require("coq")
		end
	},
	{
		"Saecki/crates.nvim",
		init = function()
			require("crates").setup {
				src = {
					coq = {
						enabled = true
					}
				}
			}
		end
	},
	{
		"vuki656/package-info.nvim",
		requires = "MunifTanjim/nui.nvim",
		init = function()
			require("package-info").setup()
		end
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		init = function()
			-- local function natural_cmp(left, right)
			-- 	left = left.name:lower()
			-- 	right = right.name:lower()
			--
			-- 	if left == right then
			-- 		return false
			-- 	end
			--
			-- 	for i = 1, math.max(string.len(left), string.len(right)), 1 do
			-- 		local l = string.sub(left, i, -1)
			-- 		local r = string.sub(right, i, -1)
			--
			-- 		if type(tonumber(string.sub(1, 1, 1))) == "number" and type(tonumber(string.sub(r, 1, 1))) == "number" then
			-- 			local l_number = tonumber(string.match(l, "^[0-9]+"))
			-- 			local r_number = tonumber(string.match(r, "^[0-9]+"))
			--
			-- 			if l_number ~= r_number then
			-- 				return l_number < r_number
			-- 			end
			-- 		elseif string.sub(1, 1, 1) ~= string.sub(r, 1, 1) then
			-- 			return l < r
			-- 		end
			-- 	end
			-- end

			require("nvim-tree").setup()
				-- sort_by = function(nodes)
				-- 	table.sort(nodes, natural_cmp)
				-- end
			-- }
		end
	},
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		init = function()
			require("bufferline").setup {
				highlights = {
					separator_selected = {
						fg = "#191a21"
					},
					separator_visible = {
						fg = "#191a21"
					},
					separator = {
						fg = "#191a21"
					},
					offset_separator = {
						fg = "#191a21"
					}
				},
				options = {
					diagnostics = "nvim_lsp",
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explorer",
							highlight = "Directory",
							separator = true
						}
					},
					separator_style = "slant",
					show_buffer_close_icons = false
				}
			}
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		init = function()
			require("lualine").setup {
				theme = "dracula-nvim",
				extensions = { "nvim-tree" }
			}
		end
	},
	{
		"akinsho/toggleterm.nvim",
		init = function()
			require("toggleterm").setup {
				open_mapping = [[<C-\>]],
				direction = "float"
			}
		end
	},
	{
		"lewis6991/gitsigns.nvim",
		init = function()
			require("gitsigns").setup {
				current_line_blame = true,
				current_line_blame_opts = {
					delay = 100
				}
			}
		end
	},
	{
		"echasnovski/mini.nvim",
		init = function()
			-- require("mini.animate").setup()
			require("mini.bracketed").setup()
			require("mini.comment").setup()
			require("mini.cursorword").setup()
			require("mini.indentscope").setup()
			require("mini.pairs").setup()
			require("mini.surround").setup()
		end
	},
	{
		"declancm/cinnamon.nvim",
		init = function()
			require("cinnamon").setup {
				extra_keymaps = true,
				extended_keymaps = true
			}
		end
	},
	{
		"NvChad/nvim-colorizer.lua",
		init = function()
			require("colorizer").setup()
		end
	},
	{
		"simrat39/rust-tools.nvim",
		dependencies = { "neovim/nvim-lspconfig" },
		init = function()
			require("rust-tools").setup()
		end
	},
	{
		"ray-x/go.nvim",
		dependencies = {
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter"
		},
		init = function()
			require("go").setup()
		end,
		event = {"CmdlineEnter"},
		ft = {"go", "gomod"},
		build = ":lua require(\"go.install\").update_all_sync()"
	}
}
