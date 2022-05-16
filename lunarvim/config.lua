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
-- keymappings [view all the defaults by pressing <leader>Lk]
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

-- Better window movement
-- 다른 키들과 충돌해서 사용 불가능. 어떻게든 키를 할당하고 싶다.
-- lvim.keys.normal_mode["<C-h>"] = "<C-w>h"
-- lvim.keys.normal_mode["<C-j>"] = "<C-w>j"
-- lvim.keys.normal_mode["<C-k>"] = "<C-w>k"
-- lvim.keys.normal_mode["<C-l>"] = "<C-w>l"

-- Resize with arrows
lvim.keys.normal_mode["<Up>"] = ":resize -1<CR>"
lvim.keys.normal_mode["<Down>"] = ":resize +1<CR>"
lvim.keys.normal_mode["<Left>"] = ":vertical resize +1<CR>"
lvim.keys.normal_mode["<Right>"] = ":vertical resize -1<CR>"

-- QuickFix
lvim.keys.normal_mode["gR"] = "<cmd>Trouble lsp_references<CR>"

-- Better indenting
lvim.keys.visual_mode["<"] = "<gv";
lvim.keys.visual_mode[">"] = ">gv";

-- Paste most recent yank
lvim.keys.visual_mode["p"] = '"0p';
lvim.keys.visual_mode["P"] = '"0P';

-- Tab management shortcuts
vim.cmd([[
  nnoremap <Tab> :bn<CR>
  nnoremap <S-Tab> :bp<CR>
]])

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
-- LSP
-- *
-- @usage disable automatic installation of servers
lvim.lsp.automatic_servers_installation = false

-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
-- }

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skiipped for the current filetype
-- vim.tbl_map(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   {
--     command = "prettier",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
--   },
-- }

-- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   {
--     command = "xo",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
--   },
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
  { "p00f/nvim-ts-rainbow" },
  { "nathanaelkane/vim-indent-guides" },

  -- Code formatter
  { "junegunn/vim-easy-align" },

  -- Unix command utils
  { "tpope/vim-eunuch" },

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
          mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                      '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
          hide_cursor = true,          -- Hide cursor while scrolling
          stop_eof = true,             -- Stop at <EOF> when scrolling downwards
          use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
          respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
          cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
          easing_function = nil,       -- Default easing function
          pre_hook = nil,              -- Function to run before the scrolling animation starts
          post_hook = nil,             -- Function to run after the scrolling animation ends
          performance_mode = false,    -- Disable "Performance Mode" on all buffers.
      })
    end,
  },

  -- Extend vim featues
  { "wellle/targets.vim" },
  { "tpope/vim-repeat" },
  { "ggandor/lightspeed.nvim" },

  -- Utility
  { "ellisonleao/glow.nvim" },
  { "windwp/nvim-ts-autotag" },
  { "andrewradev/splitjoin.vim" },
  {
    "mbbill/undotree",
    cmd = {
      "UndotreeToggle"
    }
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
      vim.cmd("let g:move_key_modifier = 'C'");
    end,
  },

  -- File, project searching, string replacing
  { "tacahiroy/ctrlp-funky" },
  {
    "kien/ctrlp.vim",
    config = function()
      vim.cmd([[
        let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
        let g:ctrlp_map = '<c-p>'
      ]])
    end,
  },

  -- Search string
  {
    "dyng/ctrlsf.vim",
    config = function()
      vim.cmd([[
        nnoremap <C-F> :CtrlSF<space>
        let g:ctrlsf_case_sensitive = 'no'
        let g:ctrlsf_regex_pattern = 0
        let g:ctrlsf_default_root = 'project'
        let g:ctrlsf_default_view_mode = 'compact'
        let g:ctrlsf_winsize = '30%'
        let g:ctrlsf_position = 'right'
        let g:ctrlsf_auto_focus = {
            \ "at": "start"
            \ }
        let g:ctrlsf_auto_close = {
          \ "normal" : 1,
          \ "compact": 1
          \}
      ]])
    end,
  },

  -- Git
  { "junegunn/gv.vim" },
  { "kdheepak/lazygit.nvim" },
  { "f-person/git-blame.nvim" },
  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit"
    },
    ft = { "fugitive" }
  },

  -- Github
  { "pwntester/octo.nvim" },

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
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }


