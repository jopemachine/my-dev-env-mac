------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------General Setting---------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

lvim.log.level = "warn"
lvim.colorscheme = "onedarker"

-- *
-- Lint
-- *
lvim.lint_on_save = false

-- *
-- Format
-- *
lvim.format_on_save = false

-- *
-- Leader Key
-- *
lvim.leader = "space"

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--------------------------------Key Mapping-----------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- * See lunarvim keymap
-- https://github.com/LunarVim/LunarVim/blob/rolling/lua/lvim/core/which-key.lua

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-z>"] = "<cmd>BufferKill<CR>"
lvim.keys.normal_mode["<C-p>"] = ":Telescope find_files<cr>"
lvim.keys.normal_mode["q:"] = ":Telescope command_history<cr>"

-- QuickFix
lvim.keys.normal_mode["gR"] = "<cmd>Trouble lsp_references<CR>"

-- Better indenting
lvim.keys.visual_mode["<"] = "<gv"
lvim.keys.visual_mode[">"] = ">gv"

-- Paste most recent yank
lvim.keys.visual_mode["p"] = '"0p'
lvim.keys.visual_mode["P"] = '"0P'

-- Remove unused key mapping
lvim.keys.insert_mode["kj"] = false
lvim.keys.insert_mode["jk"] = false

-- 셀렉션에 paste 하더라도 기존 텍스트 유지
vim.cmd([[
	vnoremap <leader>p "_dP
]])

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
----------------------------Core Plugin Settings------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

-- *
-- telescope.nvim
-- *
lvim.builtin.telescope.active = true
lvim.builtin.telescope.defaults.file_ignore_patterns = { ".git", "node_modules" }

-- *
-- alpha.nvim
-- *
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"

-- *
-- nvimtree
-- *
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.nvimtree.setup.open_on_setup = true

-- *
-- terminal
-- *
lvim.builtin.terminal.active = true

-- *
-- nvim-notify
-- *
lvim.builtin.notify.active = true

-- *
-- treesitter
-- *
-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- *
-- which-key.nvim
-- *

lvim.builtin.which_key.mappings["q"] = { ":wqa<cr>", "Quit" }
lvim.builtin.which_key.mappings["Q"] = { ":qa!<cr>", "Quit without saving" }

-- Telescope key settings
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- Trouble key settings
lvim.builtin.which_key.mappings["t"] = {
	name = "+Trouble",
	r = { "<cmd>Trouble lsp_references<cr>", "References" },
	f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
	d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
	q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
	l = { "<cmd>Trouble loclist<cr>", "LocationList" },
	w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
}

-- Other thirdparty utilities key settings
lvim.builtin.which_key.mappings["u"] = {
	name = "Thirdparty utilities",
	u = { ":UndotreeToggle<cr>:UndotreeFocus<cr>", "Undotree" },
	g = { ":Glow<cr>", "Glow Window" },
	b = { ":GitBlameToggle<cr>", "Toggle GitBlame Plugin" },
	a = { ":Ranger<cr>", "Ranger" },
	t = { ":ToggleTerm size=10 direction=horizontal<cr>", "Toggle Horizontal Terminal" },
	n = { ":IncRename ", "Rename Variable" },
	c = { ":!code %<cr>", "Open in Code" },
	m = { ":Telescope keymaps<cr>", "Open Keymap" },
}

-- Toggle vim options
lvim.builtin.which_key.mappings["v"] = {
	name = "Vim options",
	s = { ":set spell!<cr>", "Toggle Spell Check" },
	v = { ":Telescope vim_options<cr>", "View Vim Options" },
	e = { ":set expandtab!<cr>", "Toggle Expandtab" },
}

-- Code manipulate
lvim.builtin.which_key.mappings["C"] = {
	name = "Code manipulate",
	s = { ":SplitjoinSplit<cr>", "Switch Function to Multiline" },
	j = { ":SplitjoinJoin<cr>", "Switch Function to Singleline" },
}

-- *
-- LSP
-- *
-- @usage disable automatic installation of servers
lvim.lsp.automatic_servers_installation = true

-- edit a default keymapping

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--	 -- for input mode
--	 i = {
--		 ["<C-j>"] = actions.move_selection_next,
--		 ["<C-k>"] = actions.move_selection_previous,
--		 ["<C-n>"] = actions.cycle_history_next,
--		 ["<C-p>"] = actions.cycle_history_prev,
--	 },
--	 -- for normal mode
--	 n = {
--		 ["<C-j>"] = actions.move_selection_next,
--		 ["<C-k>"] = actions.move_selection_previous,
--	 },
-- }

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skiipped for the current filetype
-- vim.tbl_map(function(server)
--	 return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--	 local function buf_set_option(...)
--		 vim.api.nvim_buf_set_option(bufnr, ...)
--	 end
--	 --Enable completion triggered by <c-x><c-o>
--	 buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--	 {
--		 command = "prettier",
--		 ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--		 filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
--	 },
-- }

-- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--	 {
--		 command = "xo",
--		 ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--		 filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
--	 },
-- }

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
----------------------------User Plugin Settings------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

-- Additional Plugins
lvim.plugins = {
  -- Code display (format, indent, highlights)
  { "ntpeters/vim-better-whitespace" },
  { "ap/vim-css-color" },
  { "danilamihailov/beacon.nvim" },
  { "editorconfig/editorconfig-vim" },
  -- Not applied intermittently
  -- {
  --   "p00f/nvim-ts-rainbow",
  --   config = function()
  --     require('nvim-treesitter.configs').setup({
  --       rainbow = {
  --         enable = true,
  --         extended_mode = true,
  --       },
  --     })
  --   end
  -- },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      vim.opt.list = true
      vim.opt.listchars:append("space:⋅")
      vim.opt.listchars:append("eol:↴")

      require("indent_blankline").setup {
        space_char_blackline = " ",
        show_current_context = true,
        show_current_context_start = true,
      }
    end
  },

  -- Code manipulation
  { "junegunn/vim-easy-align" },
  { "smjonas/inc-rename.nvim" },
  { "sQVe/sort.nvim" },

  -- Window management (including tmux)
  { "edkolev/tmuxline.vim" },

  -- Hangul
  { "johngrib/vim-f-hangul" },

  -- Session management
  { "tpope/vim-obsession" },

  -- Animation
  {
    "karb94/neoscroll.nvim",
    config = function()
      require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = { '<C-u>', '<C-d>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
        hide_cursor = true, -- Hide cursor while scrolling
        stop_eof = true, -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil, -- Default easing function
        pre_hook = nil, -- Function to run before the scrolling animation starts
        post_hook = nil, -- Function to run after the scrolling animation ends
        performance_mode = false, -- Disable "Performance Mode" on all buffers.
      })
    end,
  },

  -- Extend vim featues
  { "wellle/targets.vim" },
  { "tpope/vim-repeat" },
  { "easymotion/vim-easymotion" }, -- It seems having problem with lsp or something..
  {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  },

  -- Utility
  { "ellisonleao/glow.nvim" },
  { "andrewradev/splitjoin.vim" },
  {
    "nacro90/numb.nvim",
    config = function()
      require('numb').setup {
        show_cursorline = true, -- Enable 'cursorline' for the window while peeking
        number_only = false, -- Peek only when the command is only a number instead of when it starts with a number
        centered_peeking = true, -- Peeked line will be centered relative to window
      }
    end
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require('nvim-ts-autotag').setup()
    end
  },
  {
    "mbbill/undotree",
  },
  {
    "wakatime/vim-wakatime"
  },
  {
    "is0n/fm-nvim"
  },

  -- Argument wrapping
  {
    "tpope/vim-surround",
    keys = { "c", "d", "y" },
    setup = function()
      vim.o.timeoutlen = 500
    end
  },

  -- Cursor move
  { "mg979/vim-visual-multi" },
  {
    "matze/vim-move",
    config = function()
      vim.cmd("let g:move_key_modifier = 'C'")
    end,
  },

  -- Search string
  {
    "nvim-pack/nvim-spectre",
    config = function ()
      vim.cmd("nnoremap <C-F> :<cmd>lua require('spectre').open()<CR><CR>")
    end
  },

  -- Git
  { "kdheepak/lazygit.nvim" },
  {
    "f-person/git-blame.nvim",
    config = function ()
        vim.cmd("let g:gitblame_enabled = 0")
    end
  },

  -- Github
  {
    "pwntester/octo.nvim",
  },

  -- Show error window
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- https://github.com/LunarVim/LunarVim/discussions/2629
-- lvim.autocommands.custom_groups = {
--   { "FileType", "markdown", "set nospell" },
-- }
