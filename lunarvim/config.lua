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

-- Use Tab instead of space
vim.cmd([[
	set autoindent
	set noexpandtab
	set tabstop=4
	set shiftwidth=4
]])

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--------------------------------Key Mapping-----------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-q>"] = ":q<cr>"
lvim.keys.normal_mode["<C-x>"] = ":bw<cr>"
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

-- Telescope key settings
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- Other utilities key settings
lvim.builtin.which_key.mappings["u"] = {
	name = "Utility",
	u = { ":UndotreeToggle<cr>:UndotreeFocus<cr>", "UndotreeToggle" },
	s = { ":set spell!<cr>", "Toggle spell" },
	g = { ":Glow<cr>", "Glow" },
	b = { ":GitBlameToggle", "GitBlame Toggle" },
	t = { ":Telescope vim_options<cr>", "View vim options" },
	r = { ":Telescope grep_string<cr>", "Grep strings" },
}

lvim.builtin.which_key.mappings["C"] = {
	name = "Code manipulate",
	s = { ":SplitjoinSplit<cr>", "Switch function to multiline" },
	j = { ":SplitjoinJoin<cr>", "Switch function to singleline" },
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

  -- Code align
  { "junegunn/vim-easy-align" },

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

  -- Argument wrapping
  {
    "tpope/vim-surround",
    keys = { "c", "d", "y" },
    setup = function()
      vim.o.timeoutlen = 500
    end
  },

  -- Cursor
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
  { "f-person/git-blame.nvim" },

  -- Github
  {
	"pwntester/octo.nvim",
	 config = function ()
		require"octo".setup({
		  default_remote = {"upstream", "origin"}; -- order to try remotes
		  reaction_viewer_hint_icon = "";         -- marker for user reactions
		  user_icon = " ";                        -- user icon
		  timeline_marker = "";                   -- timeline marker
		  timeline_indent = "2";                   -- timeline indentation
		  right_bubble_delimiter = "";            -- Bubble delimiter
		  left_bubble_delimiter = "";             -- Bubble delimiter
		  github_hostname = "";                    -- GitHub Enterprise host
		  snippet_context_lines = 4;               -- number or lines around commented lines
		  file_panel = {
			size = 10,                             -- changed files panel rows
			use_icons = true                       -- use web-devicons in file panel
		  },
		  mappings = {
			issue = {
			  close_issue = "<space>ic",           -- close issue
			  reopen_issue = "<space>io",          -- reopen issue
			  list_issues = "<space>il",           -- list open issues on same repo
			  reload = "<C-r>",                    -- reload issue
			  open_in_browser = "<C-b>",           -- open issue in browser
			  copy_url = "<C-y>",                  -- copy url to system clipboard
			  add_assignee = "<space>aa",          -- add assignee
			  remove_assignee = "<space>ad",       -- remove assignee
			  create_label = "<space>lc",          -- create label
			  add_label = "<space>la",             -- add label
			  remove_label = "<space>ld",          -- remove label
			  goto_issue = "<space>gi",            -- navigate to a local repo issue
			  add_comment = "<space>ca",           -- add comment
			  delete_comment = "<space>cd",        -- delete comment
			  next_comment = "]c",                 -- go to next comment
			  prev_comment = "[c",                 -- go to previous comment
			  react_hooray = "<space>rp",          -- add/remove 🎉 reaction
			  react_heart = "<space>rh",           -- add/remove ❤️ reaction
			  react_eyes = "<space>re",            -- add/remove 👀 reaction
			  react_thumbs_up = "<space>r+",       -- add/remove 👍 reaction
			  react_thumbs_down = "<space>r-",     -- add/remove 👎 reaction
			  react_rocket = "<space>rr",          -- add/remove 🚀 reaction
			  react_laugh = "<space>rl",           -- add/remove 😄 reaction
			  react_confused = "<space>rc",        -- add/remove 😕 reaction
			},
			pull_request = {
			  checkout_pr = "<space>po",           -- checkout PR
			  merge_pr = "<space>pm",              -- merge commit PR
			  squash_and_merge_pr = "<space>psm",  -- squash and merge PR
			  list_commits = "<space>pc",          -- list PR commits
			  list_changed_files = "<space>pf",    -- list PR changed files
			  show_pr_diff = "<space>pd",          -- show PR diff
			  add_reviewer = "<space>va",          -- add reviewer
			  remove_reviewer = "<space>vd",       -- remove reviewer request
			  close_issue = "<space>ic",           -- close PR
			  reopen_issue = "<space>io",          -- reopen PR
			  list_issues = "<space>il",           -- list open issues on same repo
			  reload = "<C-r>",                    -- reload PR
			  open_in_browser = "<C-b>",           -- open PR in browser
			  copy_url = "<C-y>",                  -- copy url to system clipboard
			  add_assignee = "<space>aa",          -- add assignee
			  remove_assignee = "<space>ad",       -- remove assignee
			  create_label = "<space>lc",          -- create label
			  add_label = "<space>la",             -- add label
			  remove_label = "<space>ld",          -- remove label
			  goto_issue = "<space>gi",            -- navigate to a local repo issue
			  add_comment = "<space>ca",           -- add comment
			  delete_comment = "<space>cd",        -- delete comment
			  next_comment = "]c",                 -- go to next comment
			  prev_comment = "[c",                 -- go to previous comment
			  react_hooray = "<space>rp",          -- add/remove 🎉 reaction
			  react_heart = "<space>rh",           -- add/remove ❤️ reaction
			  react_eyes = "<space>re",            -- add/remove 👀 reaction
			  react_thumbs_up = "<space>r+",       -- add/remove 👍 reaction
			  react_thumbs_down = "<space>r-",     -- add/remove 👎 reaction
			  react_rocket = "<space>rr",          -- add/remove 🚀 reaction
			  react_laugh = "<space>rl",           -- add/remove 😄 reaction
			  react_confused = "<space>rc",        -- add/remove 😕 reaction
			},
			review_thread = {
			  goto_issue = "<space>gi",            -- navigate to a local repo issue
			  add_comment = "<space>ca",           -- add comment
			  add_suggestion = "<space>sa",        -- add suggestion
			  delete_comment = "<space>cd",        -- delete comment
			  next_comment = "]c",                 -- go to next comment
			  prev_comment = "[c",                 -- go to previous comment
			  select_next_entry = "]q",            -- move to previous changed file
			  select_prev_entry = "[q",            -- move to next changed file
			  close_review_tab = "<C-c>",          -- close review tab
			  react_hooray = "<space>rp",          -- add/remove 🎉 reaction
			  react_heart = "<space>rh",           -- add/remove ❤️ reaction
			  react_eyes = "<space>re",            -- add/remove 👀 reaction
			  react_thumbs_up = "<space>r+",       -- add/remove 👍 reaction
			  react_thumbs_down = "<space>r-",     -- add/remove 👎 reaction
			  react_rocket = "<space>rr",          -- add/remove 🚀 reaction
			  react_laugh = "<space>rl",           -- add/remove 😄 reaction
			  react_confused = "<space>rc",        -- add/remove 😕 reaction
			},
			submit_win = {
			  approve_review = "<C-a>",            -- approve review
			  comment_review = "<C-m>",            -- comment review
			  request_changes = "<C-r>",           -- request changes review
			  close_review_tab = "<C-c>",          -- close review tab
			},
			review_diff = {
			  add_review_comment = "<space>ca",    -- add a new review comment
			  add_review_suggestion = "<space>sa", -- add a new review suggestion
			  focus_files = "<leader>e",           -- move focus to changed file panel
			  toggle_files = "<leader>b",          -- hide/show changed files panel
			  next_thread = "]t",                  -- move to next thread
			  prev_thread = "[t",                  -- move to previous thread
			  select_next_entry = "]q",            -- move to previous changed file
			  select_prev_entry = "[q",            -- move to next changed file
			  close_review_tab = "<C-c>",          -- close review tab
			  toggle_viewed = "<leader><space>",   -- toggle viewer viewed state
			},
			file_panel = {
			  next_entry = "j",                    -- move to next changed file
			  prev_entry = "k",                    -- move to previous changed file
			  select_entry = "<cr>",               -- show selected changed file diffs
			  refresh_files = "R",                 -- refresh changed files panel
			  focus_files = "<leader>e",           -- move focus to changed file panel
			  toggle_files = "<leader>b",          -- hide/show changed files panel
			  select_next_entry = "]q",            -- move to previous changed file
			  select_prev_entry = "[q",            -- move to next changed file
			  close_review_tab = "<C-c>",          -- close review tab
			  toggle_viewed = "<leader><space>",   -- toggle viewer viewed state
			}
		  }
		})
	 end
  },

  -- Show error window
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup({
        position = "bottom", -- position of the list can be: bottom, top, left, right
        height = 10, -- height of the trouble list when position is top or bottom
        width = 50, -- width of the list when position is left or right
        icons = true, -- use devicons for filenames
        mode = "document_diagnostics",
        action_keys = { -- key mappings for actions in the trouble list
          -- map to {} to remove a mapping, for example:
          -- close = {},
          close = "q", -- close the list
          cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
          refresh = "r", -- manually refresh
          jump = { "<cr>", "<tab>" }, -- jump to the diagnostic or open / close folds
          open_split = { "<c-x>" }, -- open buffer in new split
          open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
          open_tab = { "<c-t>" }, -- open buffer in new tab
          jump_close = { "o" }, -- jump to the diagnostic and close the list
          toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
          toggle_preview = "P", -- toggle auto_preview
          hover = "K", -- opens a small popup with the full multiline message
          preview = "p", -- preview the diagnostic location
          close_folds = { "zM", "zm" }, -- close all folds
          open_folds = { "zR", "zr" }, -- open all folds
          toggle_fold = { "zA", "za" }, -- toggle fold of current file
          previous = "k", -- preview item
          next = "j", -- next item
        },
        indent_lines = true, -- add an indent guide below the fold icons
        auto_open = false, -- automatically open the list when you have diagnostics
        auto_close = true, -- automatically close the list when you have no diagnostics
        auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
        auto_fold = false, -- automatically fold a file trouble list at creation
        use_diagnostic_signs = true, -- enabling this will use the signs defined in your lsp client
      })
    end,
  },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- https://github.com/LunarVim/LunarVim/discussions/2629
-- lvim.autocommands.custom_groups = {
--   { "FileType", "markdown", "set nospell" },
-- }
