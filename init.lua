vim.g.mapleader = " "

-- クリップボードをWindowsと同期
vim.opt.clipboard = "unnamedplus"

-- 日本語入力後のEsc挙動を安定させる
vim.opt.iminsert = 0

-- H / L で行の先頭 / 末尾にジャンプ
vim.keymap.set('n', 'H', '^')
vim.keymap.set('n', 'L', '$')

-- VS Code アクション (リーダーキー経由)
-- Space + p: ファイル検索 (Ctrl+P)
vim.keymap.set('n', '<leader>p', '<cmd>call VSCodeNotify("workbench.action.quickOpen")<cr>')
-- Space + e: エクスプローラー表示
vim.keymap.set('n', '<leader>e', '<cmd>call VSCodeNotify("workbench.view.explorer")<cr>')
-- Space + q: エディタにフォーカスの戻す
vim.keymap.set('n', '<leader>q', '<cmd>call VSCodeNotify("workbench.action.focusActiveEditorGroup")<cr>')
-- Space + ga: エージェント (AIチャット) を開く
vim.keymap.set('n', '<leader>ga', '<cmd>call VSCodeNotify("antigravity.toggleChatFocus")<cr>', { silent = true })
-- Space + w: 現在のタブを閉じる
vim.keymap.set('n', '<leader>w', '<cmd>call VSCodeNotify("workbench.action.closeActiveEditor")<cr>')
-- Space + [ / ]: 前に戻る / 次に進む
vim.keymap.set('n', '<leader>[', '<cmd>call VSCodeNotify("workbench.action.navigateBack")<cr>')
vim.keymap.set('n', '<leader>]', '<cmd>call VSCodeNotify("workbench.action.navigateForward")<cr>')

-- cc: 行をヤンク (コピー)
vim.keymap.set('n', 'cc', '"+yy', { noremap = true })

-- コピーペーストのキーバインド (Ctrl+c, Ctrl+v)
-- ビジュアルモードで Ctrl+c を押すとシステムクリップボードにコピー
vim.keymap.set('v', '<C-c>', '"+y')
-- ノーマルモードで Ctrl+v を押すとシステムクリップボードから貼り付け
vim.keymap.set('n', '<C-v>', '"+p')
-- インサートモードで Ctrl+v を押すと貼り付け
vim.keymap.set('i', '<C-v>', '<C-r>+')
