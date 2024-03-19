return {
	--  ██████╗ ██████╗ ██╗      ██████╗ ██████╗ ███████╗ ██████╗██╗  ██╗███████╗███╗   ███╗███████╗
	-- ██╔════╝██╔═══██╗██║     ██╔═══██╗██╔══██╗██╔════╝██╔════╝██║  ██║██╔════╝████╗ ████║██╔════╝
	-- ██║     ██║   ██║██║     ██║   ██║██████╔╝███████╗██║     ███████║█████╗  ██╔████╔██║█████╗
	-- ██║     ██║   ██║██║     ██║   ██║██╔══██╗╚════██║██║     ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝
	-- ╚██████╗╚██████╔╝███████╗╚██████╔╝██║  ██║███████║╚██████╗██║  ██║███████╗██║ ╚═╝ ██║███████╗
	--  ╚═════╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝
	{
		"Mofiqul/dracula.nvim",
		init = function()
			local dracula = require("dracula")
			dracula.setup {
				-- Dracula PRO colors
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
	-- ██╗     ███████╗██████╗        ███████╗ ██████╗ ██████╗ ███╗   ███╗ █████╗ ████████╗
	-- ██║     ██╔════╝██╔══██╗       ██╔════╝██╔═══██╗██╔══██╗████╗ ████║██╔══██╗╚══██╔══╝
	-- ██║     ███████╗██████╔╝       █████╗  ██║   ██║██████╔╝██╔████╔██║███████║   ██║
	-- ██║     ╚════██║██╔═══╝        ██╔══╝  ██║   ██║██╔══██╗██║╚██╔╝██║██╔══██║   ██║
	-- ███████╗███████║██║     ▄█╗    ██║     ╚██████╔╝██║  ██║██║ ╚═╝ ██║██║  ██║   ██║   ▄█╗
	-- ╚══════╝╚══════╝╚═╝     ╚═╝    ╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝
	--  ██████╗ ██████╗ ███╗   ███╗██████╗ ██╗     ███████╗████████╗██╗ ██████╗ ███╗   ██╗
	-- ██╔════╝██╔═══██╗████╗ ████║██╔══██╗██║     ██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║
	-- ██║     ██║   ██║██╔████╔██║██████╔╝██║     █████╗     ██║   ██║██║   ██║██╔██╗ ██║
	-- ██║     ██║   ██║██║╚██╔╝██║██╔═══╝ ██║     ██╔══╝     ██║   ██║██║   ██║██║╚██╗██║
	-- ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║     ███████╗███████╗   ██║   ██║╚██████╔╝██║ ╚████║
	--  ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚══════╝╚══════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
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
		"windwp/nvim-ts-autotag",
		init = function()
			require("nvim-ts-autotag").setup()
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
		"zbirenbaum/copilot.lua",
		init = function()
			require("copilot").setup()
		end
	},
	-- ██╗      █████╗ ███╗   ██╗ ██████╗ ██╗   ██╗ █████╗  ██████╗ ███████╗
	-- ██║     ██╔══██╗████╗  ██║██╔════╝ ██║   ██║██╔══██╗██╔════╝ ██╔════╝
	-- ██║     ███████║██╔██╗ ██║██║  ███╗██║   ██║███████║██║  ███╗█████╗
	-- ██║     ██╔══██║██║╚██╗██║██║   ██║██║   ██║██╔══██║██║   ██║██╔══╝
	-- ███████╗██║  ██║██║ ╚████║╚██████╔╝╚██████╔╝██║  ██║╚██████╔╝███████╗
	-- ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝
	--        ███████╗██████╗ ███████╗ ██████╗██╗███████╗██╗ ██████╗
	--        ██╔════╝██╔══██╗██╔════╝██╔════╝██║██╔════╝██║██╔════╝
	--        ███████╗██████╔╝█████╗  ██║     ██║█████╗  ██║██║
	--        ╚════██║██╔═══╝ ██╔══╝  ██║     ██║██╔══╝  ██║██║
	--        ███████║██║     ███████╗╚██████╗██║██║     ██║╚██████╗
	--        ╚══════╝╚═╝     ╚══════╝ ╚═════╝╚═╝╚═╝     ╚═╝ ╚═════╝
	{
		"simrat39/rust-tools.nvim",
		dependencies = { "neovim/nvim-lspconfig" },
		init = function()
			require("rust-tools").setup()
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
		"ray-x/go.nvim",
		dependencies = {
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text"
		},
		init = function()
			require("go").setup()
		end,
		event = {"CmdlineEnter"},
		ft = {"go", "gomod"},
		build = ":lua require(\"go.install\").update_all_sync()"
	},
	{
		"gennaro-tedesco/nvim-jqx",
		init = function()
			local jqx = vim.api.nvim_create_augroup("jqx", {})
			vim.api.nvim_clear_autocmds({ group = jqx })
			vim.api.nvim_create_autocmd("BufWinEnter", {
				pattern = { "*.json", "*.yaml" },
				desc = "preview json and yaml files on open",
				group = jqx,
				callback = function()
					vim.cmd.JqxList()
				end
			})
		end,
		ft = {"json", "yaml"}
	},
	{
		"vuki656/package-info.nvim",
		dependencies = "MunifTanjim/nui.nvim",
		init = function()
			require("package-info").setup()
		end
	},
	-- ███████╗██╗   ██╗███╗   ██╗████████╗ █████╗ ██╗  ██╗
	-- ██╔════╝╚██╗ ██╔╝████╗  ██║╚══██╔══╝██╔══██╗╚██╗██╔╝
	-- ███████╗ ╚████╔╝ ██╔██╗ ██║   ██║   ███████║ ╚███╔╝
	-- ╚════██║  ╚██╔╝  ██║╚██╗██║   ██║   ██╔══██║ ██╔██╗
	-- ███████║   ██║   ██║ ╚████║   ██║   ██║  ██║██╔╝ ██╗
	-- ╚══════╝   ╚═╝   ╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝
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
		"NvChad/nvim-colorizer.lua",
		init = function()
			require("colorizer").setup()
		end
	},
	--  ██████╗ ██╗████████╗
	-- ██╔════╝ ██║╚══██╔══╝
	-- ██║  ███╗██║   ██║
	-- ██║   ██║██║   ██║
	-- ╚██████╔╝██║   ██║
	--  ╚═════╝ ╚═╝   ╚═╝
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
	-- ███╗   ███╗ ██████╗ ██╗   ██╗███████╗███╗   ███╗███████╗███╗   ██╗████████╗
	-- ████╗ ████║██╔═══██╗██║   ██║██╔════╝████╗ ████║██╔════╝████╗  ██║╚══██╔══╝
	-- ██╔████╔██║██║   ██║██║   ██║█████╗  ██╔████╔██║█████╗  ██╔██╗ ██║   ██║
	-- ██║╚██╔╝██║██║   ██║╚██╗ ██╔╝██╔══╝  ██║╚██╔╝██║██╔══╝  ██║╚██╗██║   ██║
	-- ██║ ╚═╝ ██║╚██████╔╝ ╚████╔╝ ███████╗██║ ╚═╝ ██║███████╗██║ ╚████║   ██║
	-- ╚═╝     ╚═╝ ╚═════╝   ╚═══╝  ╚══════╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝
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
		"cbochs/grapple.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		init = function()
			vim.keymap.set("n", "<leader>m", require("grapple").toggle)
		end
	},
	{
		"cbochs/portal.nvim",
		dependencies = { "cbochs/grapple.nvim" },
		init = function()
			vim.keymap.set("n", "<leader>o", "<cmd>Portal jumplist backward<cr>")
			vim.keymap.set("n", "<leader>i", "<cmd>Portal jumplist forward<cr>")
		end
	},
	-- ███╗   ███╗██╗███████╗ ██████╗
	-- ████╗ ████║██║██╔════╝██╔════╝
	-- ██╔████╔██║██║███████╗██║
	-- ██║╚██╔╝██║██║╚════██║██║
	-- ██║ ╚═╝ ██║██║███████║╚██████╗
	-- ╚═╝     ╚═╝╚═╝╚══════╝ ╚═════╝
	{
		"bennypowers/nvim-regexplainer",
		requires = {
			"nvim-treesitter/nvim-treesitter",
			"MunifTanjim/nui.nvim"
		},
		init = function()
			require("regexplainer").setup()
		end
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"cljoly/telescope-repo.nvim",
			"otavioschwanck/telescope-alternate"
		},
		init = function()
			require("telescope").setup {
				extensions = {
					["repo"] = {
						list = {
							search_dirs = {
								"~/Projects",
								"~/Scripts"
							}
						}
					},
					["telescope-alternate"] = {
						presets = {}
					}
				}
			}
			require("telescope").load_extension("repo")
			require("telescope").load_extension("telescope-alternate")
		end
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
		"voldikss/vim-floaterm",
		dependencies = { "https://github.com/ptzz/lf.vim" }
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
		"rcarriga/nvim-notify",
		init = function()
			require("notify").setup()
		end
	},
	{
		"folke/which-key.nvim",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup()
		end
	},
	-- {
	-- 	"stevearc/dressing.nvim",
	-- 	init = function()
	-- 		require("dressing").setup()
	-- 	end
	-- }
	-- {
	-- 	"folke/noice.nvim",
	-- 	dependencies = {
	-- 		"MunifTanjim/nui.nvim",
	-- 		"rcarriga/nvim-notify"
	-- 	},
	-- 	init = function()
	-- 		require("noice").setup {
	-- 			lsp = {
	-- 				override = {
	-- 					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
	-- 					["vim.lsp.util.stylize_markdown"] = true
	-- 				}
	-- 			},
	-- 			presets = {
	-- 				bottom_search = true,
	-- 				command_palette = true,
	-- 				long_message_to_split = true,
	-- 				inc_rename = true,
	-- 				lsp_doc_border = true
	-- 			},
	-- 			views = {
	-- 				cmdline_popup = {
	-- 					position = {
	-- 						col = "50%",
	-- 						row = "45%"
	-- 					},
	-- 					size = {
	-- 						height = "auto",
	-- 						width = 60,
	-- 					}
	-- 				},
	-- 				popup = {
	-- 					positon = "auto"
	-- 				},
	-- 				popupmenu = {
	-- 					border = {
	-- 						padding = { 0, 1 },
	-- 						style = "rounded"
	-- 					},
	-- 					relative = "editor",
	-- 					win_options = {
	-- 						winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" }
	-- 					}
	-- 				}
	-- 			}
	-- 		}
	-- 	end
	-- }
}
