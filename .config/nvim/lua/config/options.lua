--------------------------------------------------------------
--                                                          --
--  ██████╗ ██████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗ --
-- ██╔═══██╗██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝ --
-- ██║   ██║██████╔╝   ██║   ██║██║   ██║██╔██╗ ██║███████╗ --
-- ██║   ██║██╔═══╝    ██║   ██║██║   ██║██║╚██╗██║╚════██║ --
-- ╚██████╔╝██║        ██║   ██║╚██████╔╝██║ ╚████║███████║ --
--  ╚═════╝ ╚═╝        ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝ --
--                                                          --
--------------------------------------------------------------

local opt = vim.opt
local g = vim.g

opt.expandtab = false -- Use tabs instead of spaces
opt.listchars = { tab = "󰌒 ", trail = "×", extends = "󰞘", precedes = "󰞗", nbsp = "×", space = "·" } -- Show special characters
opt.mouse = "" -- Disable mouse
opt.shiftwidth = 4 -- Size of indent
opt.tabstop = 4 -- Number of spaces tabs count for
opt.wrap = true -- Enable line wrap
g.lazyvim_prettier_needs_config = true -- Don't enable prettier unless config is present
g.zig_fmt_autosave = 0 -- Disable ZLS formatting on save
