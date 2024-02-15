# README

- `init.lua`: entry point
- `set.lua`: variable set
- `remap.lua`: keymap
    - quick fix
        - `<C-j>`/`<leader>j` -> next
        - `<C-k>`/`<leader>k` -> prev
    - replace
        - `<leader>s` -> replace
    - make file executable
        - `<leader>x` -> make file executable
- `packer.lua`: 
    - [vim-plug](https://github.com/junegunn/vim-plug)
    - [packer.nvim](https://github.com/wbthomason/packer.nvim)
    - [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
        - `<C-n>` -> start word key / next key
        - `<A-n>` -> select all word key
        - `g<C-n>` -> start key
        - `g<A-n>` -> select all key
        - `<C-p>` -> prev key
        - `<C-x>` -> skip key
        - `<Esc>` -> quit key
    - [rose-pine](https://github.com/rose-pine/neovim): color schema
    - [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
        - `<leader>pf` -> find files
        - `<leader>pg` -> find git files
    - [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
        - TSInstall XXX (auto install sucks)
    - [harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2): depends on `plenery.nvim`
        - `<leader>a` -> add current file to harpoon
        - `<leader>w` -> toggle quick menu
    - [undotree](https://github.com/mbbill/undotree): `<leader>u` toggle undotree
        - `<leader>u` -> toggle undotree
    - [nvim-surround](https://github.com/kylechui/nvim-surround): add / delete / change
        - `ysiw)` -> surround using `()` without space, `iw` means "in word"
        - `ysiw(` -> surround using `()` with space
        - `ds[` or `ds]` -> remove `[]`
        - `dst` -> remove HTML tags
        - `cs'"` -> change ' to "
        - `csth1<CR>` -> change `<b></b>` to `<h1></h1>`
    - [hop.nvim](https://github.com/hadronized/hop.nvim)
        - `<leader>f` -> hint_char1 After Cursor
        - `<leader>F` -> hint_char1 Before Cursor
        - `<leader>t` -> hint_char1 After Cursor, hint_offset=-1
        - `<leader>T` -> hint_char1 Before Cursor, hint_offset=1
    - [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
        - `<C-y>`/`<Enter>` -> confirm
        - `<C-e>` -> cancel
        - `<Up>`/`<Down>` -> move up/down
        - `<C-p>`/`<C-n>` -> move up/down or toggle completion
        - `<C-Space>` -> trigger completion
        - `<C-u>`/`<C-d>` -> scroll up/down
        - `<C-f>`/`<C-b>` -> navigate between snippet placeholders
    - [copilot.vim](https://github.com/github/copilot.vim)


## Useful Keymap

### fold

- `zf` -> create fold
- `zo` -> open fold, ie. unfold recursively
- `zO` -> open fold recursively, ie. unfold recursively
- `zc` -> close fold, ie. fold
- `zC` -> close fold recursively, ie. fold recursively
- `za` -> toggle fold
- `zA` -> toggle fold recursively
- `zd` -> delete fold
- `zD` -> delete fold recursively

### jump

- `Ctrl-o` -> jump back
- `Ctrl-i` -> jump forward
- `<leader>q` -> jump back
- `<leader>e` -> jump forward

### lsp

- `K`: Displays hover information about the symbol under the cursor in a floating window.

- `gd`: Jumps to the definition of the symbol under the cursor.

- `gD`: Jumps to the declaration of the symbol under the cursor. Some servers don't implement this feature.

- `gi`: Lists all the implementations for the symbol under the cursor in the quickfix window.

- `go`: Jumps to the definition of the type of the symbol under the cursor.

- `gr`: Lists all the references to the symbol under the cursor in the quickfix window.

- `gs`: Displays signature information about the symbol under the cursor in a floating window.

- `<F2>`: Renames all references to the symbol under the cursor.

- `<F3>`: Format code in current buffer.

- `<F4>`: Selects a code action available at the current cursor position.

- `gl`: Show diagnostics in a floating window.

- `[d`: Move to the previous diagnostic in the current buffer.

- `]d`: Move to the next diagnostic.

