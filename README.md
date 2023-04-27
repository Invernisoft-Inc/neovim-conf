# neovim-conf

[![Thanatermesis's GitHub stats](https://github-readme-stats.vercel.app/api?username=Thanatermesis&count_private=true&show_icons=true&theme=tokyonight&range=all_time)](https://github.com/anuraghazra/github-readme-stats)


## How to Use it
### Notes:
* "space" is the "leader key" on this configuration, in other vim configuration was commonly "," or other ones
 
### Usage
* Ctrl + n to open the file explorer, open files, copy/move/rename/etc functions
* Alt + h|v|i : open a terminal horizontal|vertical|inside
* Space : this is the "leader" key, wait one second to show you configured triggers
* Space + t + h : select a theme
* Space + c + h : cheatsheet
* Space + c + m : git commits, switch to specific checkouts in realtime
* Space + f + a : find files with browser and previewer
* Space + f + o : find old (history) edited files
* Space + f + w : grep in your files with live previewer
* Space + f + b|z : find in current file | opened files
* Space + q : diagnostics in your code
* Space + 
* Space + 
* Space + 
* Space + 
* Space + 
* Space + 
* Space + 

#### Copilot:
Copilot shows automatically in the autocomplete menu while you type, you can close this menu with "Ctrl-e"
* Alt + ] : Trigger a suggestion, or switch to the next one, '[' for previous
* Alt + l : Accept suggestion
* Ctrl + e : Close suggestion

Suggestion: Disable entirely the autotrigger of the menu and enable the autotrigger of copilot

_Tip: search for the keyword 'elivim' in the conf files_


------



#### Framework:
- [ ] NvChad?
- [ ] Lazy? https://youtu.be/2ahI8lYUYgw?t=199

### Copilot brainstorming:
Options:
1. have it integrated on the menu (not so handy)
2. having it always show (automenu needs to be removed)
3. having the auto menu + copilot on manual trigger + supertab for Tab key + ultisnips

Ideas:
    - do not use Enter for accept, use a specific key, which will be the same for other features like ultisnips

#### Plugins
- [ ] PHP & Javascript good support
    * make sure to include the best support for "php and JavaScript, mostly VueJS"
    * equivalentinvim spf13/PIV ?
    * equivalentinvim pangloss/vim-javascript ?
- [ ] Error reporting
- [ ] Snippets:
   - [ ] comp-nvim-lsp : https://youtu.be/h4g0m0Iwmys?t=256
   - equivalentinvim: ultisnips, with own snippets for codes and mapping of locations with predefined values
   - UltiSnips integration: https://github.com/quangnguyen30192/cmp-nvim-ultisnips
   - converter: https://github.com/smjonas/snippet-converter.nvim
- [X] Copilot.~~vim~~lua
- [ ] Copilot cmp: https://github.com/zbirenbaum/copilot-cmp
    - Alternative! TABNINE! wtf seems better: https://www.tabnine.com/ - https://github.com/tzachar/cmp-tabnine
- [ ] Execute-on-save: this is a pretty need thing, research a plugin that triggers a user specified action when its saved
    * equivalentinvim vim-dispatch runs them in BG
- [ ] Autocomplete: equivalentinvim: supertab, neocomplcache, youcompleteme
    - see the example of "supertab" to change the cmp behaviour: https://www.lazyvim.org/configuration/examples
    - list of plugins for nvim-cmp: https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources#miscellaneous
- [ ] faster moving: equivalentinvim: easymotion
    * https://github.com/phaazon/hop.nvim
    * better: https://github.com/ggandor/lightspeed.nvim
    * another, sucesor: https://github.com/ggandor/leap.nvim - demo: https://avimitin.github.io/nvim/cursor-movement.html
    * many more options: https://github.com/rockerBOO/awesome-neovim#motion
    * fuzzy and funny too: https://github.com/ripxorip/aerojump.nvim
- [X] file management: NvChad has it
    * equivalentinvim "ctrlp" & "ctrlp-funky" features?
    * equivalentinvim "nerdtree" features?
- [ ] fuzzy-finder feature, NvChad has it?
- [ ] equivalentinvim TagList: surce code browser with tags in a panel (functions, variables, etc)
    * support for EDC and PHP files
- [ ] Alignator of code, equivalentinvim is vim-easy-align & tabular: http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
    * others: vim-easy-align, tabular, etc
- [ ] Grep feature to equivalent to search between the project, buffers, etc... (NvChad has it i think)
    * realtime, fuzzy-finder required, see ",fu" in elive-vim
- [ ] Show the definition prototype (like C headers) while typing, equivalentinvim echofunc
- [ ] Welcome page for neovim, new users running (guide/tutorial) it or simply running it without parameters, equivalentinvim vim-startify
- [ ] Git powerful integration, equivalentinvim vim-fugitive
    * gitk gui? equivalentinvim gitv
- [ ] Syntax checker / validator, equivalentinvim Syntastic
- [ ] Comment / uncomment blocks, already included in NvChad? equivalentinvim nerdcommenter
- [ ] Blink when search, equivalentinvim 'git://github.com/Elive/vim-bling'
- [ ] EFL integration, equivalentinvim 'git://git.enlightenment.org/editors/vim-configs.git'
- [ ] Multiple cursors edition, equivalentinvim vim-multiple-cursors
- [ ] Minimap feature?
    * fast and light: https://github.com/wfxr/minimap.vim
    * slow with visual features (which can be useful to be run only when needed): https://github.com/gorbit99/codewindow.nvim
- [ ] Extra textblock and textobjs definitions?
- [ ] Undo Tree feature (multiple undo histories), equivalentinvim undotree
- [ ] powerline like bar, equivalentinvim vim-airline, NvChad has it?
- [ ] location push-pop feature, better if includes visual marks, equivalentinvim vim-kangaroo
- [ ] Show what is going to be replaced with %s/foo/bar while typing, equivalentinvim vim-over
- [X] Visualize HEX colors and names, equivalentinvim vim-coloresque - included in NvChad
- [ ] Markdown and Asciidoc support (syntax, syntax checker, etc), also a previewer:
- [ ] Preview (render) of things like markwon, equivalentinvim vim-preview
- [ ] Show shitty M$ buggy newlines
- [ ] Show syntax hilight names, equivalentinvim synstack
- [ ] Show and fix whitespacing errors
- [ ] Feature to "sudo save" file when no permissions
- [ ] Show the cursor cuc & cul when switching windows
- [ ] EFL full support & EDC
- [+] Beacon - cursor jump on change, to see whare it is (note: needs to be loaded) https://github.com/DanilaMihailov/beacon.nvim

### Must have ones:
* Command (vim commands) completion! as in https://github.com/Avimitin/nvim#Gallery

### GIT plugins
* https://github.com/jesseduffield/lazygit

### Alternatives:
* tagbar:
    - https://github.com/simrat39/symbols-outline.nvim
    - https://github.com/liuchengxu/vista.vim
    - https://github.com/stevearc/aerial.nvim

### TODO confs to add:
* Tabufline: have the Tabs opened by default in colapsed mode so that the feature can be seen and used (try: :tabnew )
* relative numbers in auto mode: https://github.com/nkakouros-original/numbers.nvim
* "surround" actions, similar to pressing ""
    - tpope/vim-surround works, but not the hotkey, no idea why, search another plugin for surround actions?
* make telescope style bordered, but we need to set a better theme bg for it first
* pulse cursor when search: https://github.com/inside/vim-search-pulse
* menu / autocompletion, works with Up and Down keys
* (plugin?) - Jump to the last position when reopening a file: not needed with the plugin
    - https://github.com/farmergreg/vim-lastplace
    - https://github.com/zhimsel/vim-stay
* foldcolumn are still needed?
* jk in visual mode don't be gk and gj, they are annoying because you think its only one line

### Top Wishlist
* highlist other names like the one in cursor: https://www.reddit.com/r/neovim/comments/10xf7s0/localhighlightnvim_blazing_fast_highlight_of_word/

### FIX
- when a text is copied or deleted, it is saved to the clipboard, this is very annoying in normal vim usage because we only want to do that when ctrl+c for example

### Wishlist
* Trouble - A pretty list for showing diagnostics, references, telescope results, quickfix and location lists to help you solve all the trouble your code is causing. - https://github.com/folke/trouble.nvim
* Hover - a plugin that shows things when you mouse-over words: https://github.com/lewis6991/hover.nvim
* Rename - it renames varnames or functions correctly in all the code like in 
    - https://github.com/smjonas/inc-rename.nvim
    - which one it uses? maybe let's use this? https://gist.github.com/RaafatTurki/64d89abf326e9fce6eb717f7c1f8a97e
* Notifications, wow! https://github.com/rcarriga/nvim-notify
* pastebins: https://github.com/rktjmp/paperplanes.nvim
* search anything in a cheatsheet https://github.com/sudormrfbin/cheatsheet.nvim
* collaborative editor (easy & fast) ? 
* git related (fzf) https://github.com/ray-x/forgit.nvim
* better search and replace for all the project: https://github.com/ray-x/sad.nvim
* emoji picker: https://github.com/ziontee113/icon-picker.nvim
* move easly blocks: https://github.com/matze/vim-move
* macro manager: https://github.com/ecthelionvi/NeoComposer.nvim
* show whitespaces because they are bad ntpeters/vim-better-whitespace
    - not needed because we use LSP's
* regexplainer https://github.com/bennypowers/nvim-regexplainer
* MUCH MORE: https://github.com/rockerBOO/awesome-neovim

### Other Frameworks to try:
- https://www.lazyvim.org/keymaps

### Research
- WOW big setup, try and see: https://github.com/ray-x/nvim
* https://dev.to/iggredible/what-is-inside-my-vimrc-3ob7

### web dev
- https://github.com/ray-x/web-tools.nvim

### LSP related Wishlist
- note: we used syntastic, which I think is not needed with lsp?
* https://github.com/ray-x/navigator.lua
* https://github.com/ray-x/lsp_signature.nvim
* installer: https://github.com/williamboman/nvim-lsp-installer
- DUP - [ ] comp-nvim-lsp : https://youtu.be/h4g0m0Iwmys?t=256
Hover/Signature with borders
    https://github.com/mattleong/CosmicNvim/blob/main/lua/cosmic/lsp/init.lua
Rename popup with highlighted prompt and borders
    https://github.com/mattleong/CosmicNvim/blob/main/lua/cosmic/core/theme/ui.lua
Diagnostics with borders
    https://github.com/mattleong/CosmicNvim/blob/main/lua/cosmic/lsp/diagnostics.lua#L5
Code actions (using Telescope)
    https://github.com/mattleong/CosmicNvim/blob/main/lua/cosmic/core/navigation/init.lua#L70

### Code, debug, quality, etc...
* https://github.com/utilyre/barbecue.nvim
* GDB directly on nvim editing the code failing: https://github.com/sakhnik/nvim-gdb - demo: https://asciinema.org/a/134144
* Git searchigns https://github.com/aaronhallaert/advanced-git-search.nvim

### Ideas:
* Use F5 for reloading the editor and its confs?

### Hotkeys
- [X] F1-F7 should be the same as how elive-vim config is, switch between :buffer and show line.
    * replaced by Tab and Shift-Tab which is much more friendly and uses less keys
- [ ] F12: pastetoggle
- [ ] hotkeys to tabularize based in symbols like (, =, etc
- [ ] Ctrl+s to save, Ctrl+q to quit?
- [ ] Ctrl+c in visual to copy a text, set it to clipboard instead of default

### Colorschemes:
* themes editor https://github.com/rktjmp/lush.nvim
* another one https://github.com/lifepillar/vim-colortemplate
- [ ] Elive monokai colorscheme has no competition, but it needs to be migrated to the NvChad code which is different
    - compare values with https://vscodethemes.com/e/jonesnc.molokayo/molokayo?language=javascript
- [ ] Make a RetroWave theme too which can look really cool? (wip)
    - https://vscodethemes.com/e/maxenceblanc.sia-synthwave/sia-synthwave-colour-theme?language=javascript
    - https://vscodethemes.com/e/nexxai.material-synthwave-vscode/material-synthwave?language=javascript
- [ ] Include other selections?
- https://github.com/metalelf0/jellybeans-nvim
- use the grays values like https://github.com/Avimitin/nvim/blob/master/docs/images/kanagawa.png
- try to create a colorscheme with only the terminal colors modified to match our terminal colors (alt + i, run "colores" )



### Bugs (possible) to check:
- [ ] fonts compatibility? over terminology, urxvt, ssh, tmux, etc
- [ ] syntax working for special files: c (improved, equivalentinvim vim-syntax-extra), edc, markdown, asciidoc
- [ ] Showing tabs can be annoying especially when copying the text, check vimrc conf to compare


### Howtos:

* NvChad Introduction: https://youtu.be/Mtgo-nP_r8Y
* NvChad docs: https://nvchad.com/docs/quickstart/install
* NeoVim from Scratch (a guided tutorial of NeoVim customization and plugins): https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ
* converting viml to lua: https://www.imaginaryrobots.net/posts/2021-04-17-converting-vimrc-to-lua/
* VimL to Lua: https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
* another howto https://www.meetgor.com/neovim-vimscript-to-lua/
* nvim lua guide https://github.com/RicardoRien/nvim-lua-guide/blob/master/README.esp.md
* Vim Regex (and other nices articles) https://dev.to/iggredible/learning-vim-regex-26ep


