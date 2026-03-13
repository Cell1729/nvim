vim.loader.enable()

-- 1. lazy.nvim の自動インストール
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 2. プラグインの登録
require("lazy").setup({
  { "folke/lazy.nvim" },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5', -- version = '*' より tag 指定が一般的です
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
})

-- 3. nvim-tree の設定 (netrwの無効化を含む)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort = { sorter = "case_sensitive" },
  view = { width = 30 },
  renderer = { group_empty = true },
  filters = { dotfiles = true },
})

-- 4. 基本設定
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
vim.opt.iminsert = 0

-- 5. キーバインド
vim.keymap.set('n', 'H', '^')
vim.keymap.set('n', 'L', '$')

-- nvim-treeの表示切り替えを Space + n に割り当て (追加しておきました)
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>', { silent = true })

-- VS Code 連携 (VS Code上でNeovimを使っている場合のみ有効)
vim.keymap.set('n', '<C-f>', '<cmd>call VSCodeNotify("actions.find")<cr>')
vim.keymap.set('n', '<leader>p', '<cmd>call VSCodeNotify("workbench.action.quickOpen")<cr>')
vim.keymap.set('n', '<leader>f', '<cmd>call VSCodeNotify("workbench.action.findInFiles")<cr>')
vim.keymap.set('n', '<leader>s', '<cmd>call VSCodeNotify("workbench.action.gotoSymbol")<cr>')
vim.keymap.set('n', '<leader>S', '<cmd>call VSCodeNotify("workbench.action.showAllSymbols")<cr>')
vim.keymap.set('n', '<leader>e', '<cmd>call VSCodeNotify("workbench.action.toggleSidebarVisibility")<cr>')
vim.keymap.set('n', '<leader>q', '<cmd>call VSCodeNotify("workbench.action.focusActiveEditorGroup")<cr>')
vim.keymap.set('n', '<leader>ga', '<cmd>call VSCodeNotify("antigravity.toggleChatFocus")<cr>', { silent = true })
vim.keymap.set('n', '<leader>w', '<cmd>call VSCodeNotify("workbench.action.closeActiveEditor")<cr>')
vim.keymap.set('n', '<leader>[', '<cmd>call VSCodeNotify("workbench.action.navigateBack")<cr>')
vim.keymap.set('n', '<leader>]', '<cmd>call VSCodeNotify("workbench.action.navigateForward")<cr>')

-- コピペ系
vim.keymap.set('n', 'cc', '"+yy', { noremap = true })
vim.keymap.set('v', '<C-c>', '"+y')
vim.keymap.set('n', '<C-v>', '"+p')
vim.keymap.set('i', '<C-v>', '<C-r>+')
