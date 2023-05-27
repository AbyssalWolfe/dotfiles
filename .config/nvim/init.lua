vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ","
vim.g.maplocalleader = "_"
vim.opt.termguicolors = true

-- ██╗      █████╗ ███████╗██╗   ██╗   ███╗   ██╗██╗   ██╗██╗███╗   ███╗
-- ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝   ████╗  ██║██║   ██║██║████╗ ████║
-- ██║     ███████║  ███╔╝  ╚████╔╝    ██╔██╗ ██║██║   ██║██║██╔████╔██║
-- ██║     ██╔══██║ ███╔╝    ╚██╔╝     ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ███████╗██║  ██║███████╗   ██║   ██╗██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- ██╗   ██╗██╗███╗   ███╗    ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗
-- ██║   ██║██║████╗ ████║    ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝
-- ██║   ██║██║██╔████╔██║    ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗
-- ╚██╗ ██╔╝██║██║╚██╔╝██║    ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║
--  ╚████╔╝ ██║██║ ╚═╝ ██║    ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║
--   ╚═══╝  ╚═╝╚═╝     ╚═╝    ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝

vim.cmd[[syntax on]]
vim.opt.mouse = ""
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.history = 1000
vim.opt.hidden = true
vim.opt.background = "dark"
vim.cmd[[colorscheme dracula]]
vim.opt.tabpagemax = 15
vim.opt.showmode = true
vim.opt.cursorline = true
vim.opt.ruler = true
vim.opt.showcmd = true
vim.opt.linespace = 0
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmatch = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.winminheight = 0
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wildmenu = true
vim.opt.scrolljump = 5
vim.opt.scrolloff = 3
vim.opt.list = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 100
vim.opt.autoindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.splitright = true
vim.opt.splitbelow = true

-- ██╗  ██╗███████╗██╗   ██╗███╗   ███╗ █████╗ ██████╗
-- ██║ ██╔╝██╔════╝╚██╗ ██╔╝████╗ ████║██╔══██╗██╔══██╗
-- █████╔╝ █████╗   ╚████╔╝ ██╔████╔██║███████║██████╔╝
-- ██╔═██╗ ██╔══╝    ╚██╔╝  ██║╚██╔╝██║██╔══██║██╔═══╝
-- ██║  ██╗███████╗   ██║   ██║ ╚═╝ ██║██║  ██║██║
-- ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝

vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<C-d>", "<cmd>lua delete_current_buffer()<CR>", opts)
vim.keymap.set("n", "<C-n>", ":bnext<CR>")
vim.keymap.set("n", "<C-p>", ":bprevious<CR>")

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

--  █████╗ ██╗   ██╗████████╗ ██████╗  ██████╗███╗   ███╗██████╗
-- ██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗██╔════╝████╗ ████║██╔══██╗
-- ███████║██║   ██║   ██║   ██║   ██║██║     ██╔████╔██║██║  ██║
-- ██╔══██║██║   ██║   ██║   ██║   ██║██║     ██║╚██╔╝██║██║  ██║
-- ██║  ██║╚██████╔╝   ██║   ╚██████╔╝╚██████╗██║ ╚═╝ ██║██████╔╝▄█╗
-- ╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝  ╚═════╝╚═╝     ╚═╝╚═════╝ ╚═╝
-- ███████╗██╗   ██╗███╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
-- ██╔════╝██║   ██║████╗  ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
-- █████╗  ██║   ██║██╔██╗ ██║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
-- ██╔══╝  ██║   ██║██║╚██╗██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
-- ██║     ╚██████╔╝██║ ╚████║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
-- ╚═╝      ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

function delete_current_buffer()
	local cbn = vim.api.nvim_get_current_buf()
	local buffers = vim.fn.getbufinfo({buflisted = true})
	local size = 0
	local idx = 0
	for n, e in ipairs(buffers) do
		size = size + 1
		if e.bufnr == cbn then
			idx = n
		end
	end
	if idx == 0 then return end
	if idx == size then
		vim.cmd("bprevious")
	else
		vim.cmd("bnext")
	end
	vim.cmd("bdelete" .. cbn)
end

local function open_nvim_tree()
	require("nvim-tree.api").tree.open()
	vim.cmd[[wincmd l]]
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

local function tab_win_closed(winnr)
	local api = require"nvim-tree.api"
	local tabnr = vim.api.nvim_win_get_tabpage(winnr)
	local bufnr = vim.api.nvim_win_get_buf(winnr)
	local buf_info = vim.fn.getbufinfo(bufnr)[1]
	local tab_wins = vim.tbl_filter(function(w) return w~=winnr end, vim.api.nvim_tabpage_list_wins(tabnr))
	local tab_bufs = vim.tbl_map(vim.api.nvim_win_get_buf, tab_wins)
	if buf_info.name:match(".*NvimTree_%d*$") then
		if not vim.tbl_isempty(tab_bufs) then
			api.tree.close()
		end
	else
		if #tab_bufs == 1 then
			local last_buf_info = vim.fn.getbufinfo(tab_bufs[1])[1]
			if last_buf_info.name:match(".*NvimTree_%d*$") then
				vim.schedule(function ()
					if #vim.api.nvim_list_wins() == 1 then
						vim.cmd "quit"
					else
						vim.api.nvim_win_close(tab_wins[1], true)
					end
				end)
			end
		end
	end
end

vim.api.nvim_create_autocmd("WinClosed", {
	callback = function ()
		local winnr = tonumber(vim.fn.expand("<amatch>"))
		vim.schedule_wrap(tab_win_closed(winnr))
	end,
	nested = true
})

vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		if vim.bo.ft == "terminal" then
			vim.opt.statusline = ""
		end
	end
})
