vim.g.mapleader = " "
-- クリップボードをWindowsと同期（Ctrl+CでコピーしたものをNeovimでペーストできる）
vim.opt.clipboard = "unnamedplus"

-- 日本語入力の後にEscを押したときの挙動を安定させる（おまじない）
vim.opt.iminsert = 0

-- H / L で行の先頭 / 末尾にジャンプ（Shiftを押しながら左右に振る感覚）
vim.keymap.set('n', 'H', '^')
vim.keymap.set('n', 'L', '$')

-- スペース + p で「ファイル検索（Ctrl+P）」を開く
vim.keymap.set('n', 'p', '<cmd>call VSCodeNotify("workbench.action.quickOpen")<cr>')

-- call VSCodeNotify を使うのが VS Code Neovim のお作法です
vim.keymap.set('n', 'ga', '<cmd>call VSCodeNotify("antigravity.toggleChatFocus")<cr>', { silent = true })

