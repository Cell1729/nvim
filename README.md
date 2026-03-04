# My Neo Vim

## Need Extension

- Git Graph
- Glasslt-VSC
- Japanese Language
- VSCode Neovim

### requirements

- [neovim](https://neovim.io/)
- [wezterm](https://wezterm.org/install/windows.html)

## key binds

`nvim`フォルダーを`C:\Users\username\AppData\Local\nvim`となるように配置
`:so $MYVIMRC`で反映

| key | action | memo |
| --- | ------ | ---- |
| `Space` + `p` | ファイル検索 | VS Code のクイックオープン |
| `Space` + `ga` | Agentにフォーカス | AIチャットへの切り替え |
| `Space` + `e` | エクスプローラー表示 | エクスプローラーを表/示非表示|
| `Space` + `q` | エディタにフォーカス | |
| `Space` + `w` | タブを閉じる | |
| `Space` + `[` / `]` | 戻る / 進む | カーソル履歴の移動 |
| `j` `j` | Esc | インサートモードから抜ける (settings.json設定) |
| `H` / `L` | 行頭 / 行末へ | `^` と `$` に相当 |
| `cc` | 行をコピー | システムクリップボードへ |
| `Ctrl` + `c` | コピー | ビジュアルモード時 |
| `Ctrl` + `v` | 貼り付け | |

### VS Code 本体の設定 (重要)
Agent（チャット欄）やエクスプローラーにフォーカスがある時、Neovimのキーバインドは効きません。
どこからでもエディタに戻れるように、VS Code の `keybindings.json` に以下の設定を追加することを推奨します。

- **キーボードショートカット (JSON) に追加:**
```json
{
    "key": "alt+q",
    "command": "workbench.action.focusActiveEditorGroup",
    "when": "sideBarFocus || chatFocus"
}
```
これで `Alt` + `q` を押せば、チャット入力中でも即座にエディタにカーソルが戻ります。

## Glasslt-VSC

`CTRL+ALT+c or z`で透過率を設定

## wezterm

`~/.config/wezterm`フォルダーを作り`keybinds.lua`と`wezterm.lua`を配置

| key | action | memo|
| --- | ------ | ---- |
| `alt` + `enter` | 画面サイズの変更 | |
| `ctrl`+`shift`+`v` | ペースト| |

## Ref

- [モテるターミナルにカスタマイズしよう（WezTerm）](https://zenn.dev/mozumasu/articles/mozumasu-wezterm-customization)