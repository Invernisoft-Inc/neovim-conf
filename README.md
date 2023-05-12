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
* Space + g + c : git commits, switch to specific checkouts in realtime
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
Suggestion: Disable entirely the autotrigger of the menu and enable the autotrigger of copilot

_Tip: search for the keyword 'elivim' in the conf files_


------


#### Ideas / TODOs:
- do not use Enter for accept, use a specific key, which will be the same for other features like ultisnips
    imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
    let g:copilot_no_tab_map = v:true

- [ ] Wow ChatGPT full featured plugin: https://github.com/jackMort/ChatGPT.nvim

- Add a toggle of autosuggestions: :lua  require("copilot.suggestion").toggle_auto_trigger()
    - also show :Copilot status   in the notification window
- Important, be updated from this needed WIP feature: https://githubnext.com/projects/copilot-view/
- [ ] A hotkey to close "all" opened windows (quickfix, tagbar, etc...) in one shot (or use Space+x ?)


### BUGS:
- [X] Something in our configs makes that when we :split, and close one buffer, the highlight of the actual linenumber is lost
- [ ] BASH syntax: Make sure the issue is with the bash syntax and not with the bash LSP first, if so, /usr/lib/elive-tools/functions shows false positives, report them to https://github.com/nvim-treesitter/nvim-treesitter/issues?q=is%3Aissue+is%3Aopen+bash  - or better: https://github.com/tree-sitter/tree-sitter-bash/issues
- [X] j & k in Normal mode scrolls as normal lines, we want to scroll real lines instead (at least me)
    - it is not a bug because it doesn't happens when pressing 10k or similar, description link included
- [X] Terminals are not working correctly, you need to press "i" in order to start on insert mode, I think some new plugin is causing this
- [X] Termianls include the visual line when you reopen them, this is annoying, maybe the visual line should be removed entirely because with Specs is not much more needed too
- [X] Nvim consumes some cpu, why? try disabling some plugins to find the one causing the issue
- [X] in autocomplete, if there's a snippet and we want to autocommplete the word the cannot trigger it unless the menu is open, this can be annoying, so we may need to reconfigure the <c-j> key to if expandable... else fallback()
- [X] when a text is copied or deleted, it is saved to the clipboard, this is very annoying in normal vim usage because we only want to do that when ctrl+c for example
- [ ] Bash: only LSP to files that has /bin/bash, similar to the "env" conf but only for bash, this avoids source files to be LSPized like mkdeb controls
- [ ] editing C files (efl) shows too many errors, I assume LSP is not well configured, try other frameworks first to see if by default they works better (especially: spacevim & lunarvim )
- [ ] bashls LSP is running on markdown files? (my todo list)
- [ ] cmp poping up all the time makes the editor slow, but also the autocompleter lags a lot when other processes are using the cpu, switch to supertab and leave cmp not poping up by default? (maybe not for normal users, so maybe add a custom setting for this)
- [ ] betatest strong cpu usage while using neovim and also compare with nvim, to see which plugins make it slow

### Bugs (possible) to check:
- [ ] fonts compatibility? over terminology, urxvt, ssh, tmux, etc
- [X] syntax working for special files: c (improved, equivalentinvim vim-syntax-extra), edc, markdown, asciidoc
- [X] Showing tabs can be annoying especially when copying the text, check vimrc conf to compare
    - set a hotkey to remove all visuals (linenumbers, tabs, etc) and to re-enable them

#### Plugins
- [X] PHP & Javascript good support
    * make sure to include the best support for "php and JavaScript, mostly VueJS"
    * equivalentinvim spf13/PIV ?
    * equivalentinvim pangloss/vim-javascript ?
- [X] Error reporting
    - with the notification plugin and similar features
- [ ] Snippets:
   - [ ] comp-nvim-lsp : https://youtu.be/h4g0m0Iwmys?t=256
   - equivalentinvim: ultisnips, with own snippets for codes and mapping of locations with predefined values
   - UltiSnips integration: https://github.com/quangnguyen30192/cmp-nvim-ultisnips
   - converter: https://github.com/smjonas/snippet-converter.nvim
- [X] Copilot.~~vim~~lua
- [X] Copilot cmp: https://github.com/zbirenbaum/copilot-cmp
    - Alternative! TABNINE! wtf seems better: https://www.tabnine.com/ - https://github.com/tzachar/cmp-tabnine
- [X] Execute-on-save: this is a pretty need thing, research a plugin that triggers a user specified action when its saved
    - use this one https://github.com/stevearc/overseer.nvim
- [ ] Autocomplete: equivalentinvim: supertab, neocomplcache, youcompleteme
    - see the example of "supertab" to change the cmp behaviour: https://www.lazyvim.org/configuration/examples
    - list of plugins for nvim-cmp: https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources#miscellaneous
- [X] faster moving: equivalentinvim: easymotion
    * https://github.com/phaazon/hop.nvim <-- selected
    * sneak.vim
    * better: https://github.com/ggandor/lightspeed.nvim
    * another, sucesor: https://github.com/ggandor/leap.nvim - demo: https://avimitin.github.io/nvim/cursor-movement.html
    * many more options: https://github.com/rockerBOO/awesome-neovim#motion
    * fuzzy and funny too: https://github.com/ripxorip/aerojump.nvim
- [X] file management: NvChad has it
    * equivalentinvim "ctrlp" & "ctrlp-funky" features?
    * equivalentinvim "nerdtree" features?
- [X] fuzzy-finder feature, NvChad has it?
- [X] equivalentinvim TagList: surce code browser with tags in a panel (functions, variables, etc)
- [X] support for EDC and PHP files
- [X] Alignator of code, equivalentinvim is vim-easy-align & tabular: http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
    * others: vim-easy-align, tabular, etc
- [X] Grep feature to equivalent to search between the project, buffers, etc... (NvChad has it i think)
    * realtime, fuzzy-finder required, see ",fu" in elive-vim
- [X] Show the definition prototype (like C headers) while typing, equivalentinvim echofunc
- [X] Welcome page for neovim, new users running (guide/tutorial) it or simply running it without parameters, equivalentinvim vim-startify
    - [ ] We need a welcome / tutorial / guide function or similar, pointing to a website maybe
        - instead, open the youtube video tutorial is a good alternative
- [X] Syntax checker / validator, equivalentinvim Syntastic
    - [X] We can use LSPs for that
    - other ones are needed or we have enough with LSP? ask @deon
- [X] Comment / uncomment blocks, already included in NvChad? equivalentinvim nerdcommenter
- [X] Blink when search, equivalentinvim 'git://github.com/Elive/vim-bling'
- [X] EFL integration, equivalentinvim 'git://git.enlightenment.org/editors/vim-configs.git'
- [-] Multiple cursors edition, equivalentinvim vim-multiple-cursors
- [ ] Extra textblock and textobjs definitions?
- [-] Undo Tree feature (multiple undo histories), equivalentinvim undotree - update: not needed / never used
- [X] powerline like bar, equivalentinvim vim-airline, NvChad has it?
- [-] location push-pop feature, better if includes visual marks, equivalentinvim vim-kangaroo
- [-] Show what is going to be replaced with %s/foo/bar while typing, equivalentinvim vim-over
- [X] Visualize HEX colors and names, equivalentinvim vim-coloresque - included in NvChad
- [X] Markdown and Asciidoc support (syntax, syntax checker, etc), also a previewer:
- [-] Preview (render) of things like markwon, equivalentinvim vim-preview
- [-] Preview https://neovimcraft.com/plugin/iamcco/markdown-preview.nvim/index.html
- [X] Show shitty M$ buggy newlines
- [X] Show syntax hilight names, equivalentinvim synstack
    - we used a specific plugin for the TODOs and similar entries
- [X] Show and fix whitespacing errors
- [X] Feature to "sudo save" file when no permissions
- [X] Show the cursor cuc & cul when switching windows
- [X] EFL full support & EDC
- [X] Beacon - cursor jump on change, to see whare it is https://github.com/DanilaMihailov/beacon.nvim
    - switched to a better and faster one
- [X] Hilight other similar words than the one in the cursor: https://github.com/RRethy/vim-illuminate
    * highlist other names like the one in cursor: https://www.reddit.com/r/neovim/comments/10xf7s0/localhighlightnvim_blazing_fast_highlight_of_word/
- [X]  matchup: https://github.com/andymass/vim-matchup#features
- [ ] Improved visuals with Dressing https://github.com/stevearc/dressing.nvim
* [X] Notifications, wow! https://github.com/rcarriga/nvim-notify

### CMP
- [X] Include a signatures autocompletion if is already not included: https://github.com/hrsh7th/cmp-nvim-lsp-signature-help

### Must have ones:
* Command (vim commands) completion! as in https://github.com/Avimitin/nvim#Gallery
### Alternatives:
* tagbar:
    - https://github.com/simrat39/symbols-outline.nvim
    - https://github.com/liuchengxu/vista.vim
    - https://github.com/stevearc/aerial.nvim

### TODO confs to add:
* [X] Tabufline: have the Tabs opened by default in colapsed mode so that the feature can be seen and used (try: :tabnew )
    - use Ctrl + t now
* [X] relative numbers in auto mode: https://github.com/nkakouros-original/numbers.nvim
* "surround" actions, similar to pressing ""
    - tpope/vim-surround works, but not the hotkey, no idea why, search another plugin for surround actions?
    - mini.surround
* [X] make telescope style bordered, but we need to set a better theme bg for it first
* [X] pulse cursor when search: https://github.com/inside/vim-search-pulse
* menu / autocompletion, works with Up and Down keys
* [X] move all the plugin's keymaps to their section, so that if the plugin is disabled, its keymaps too, but also to show it correctly in the cheatsheet

### Wishlist
* Trouble - A pretty list for showing diagnostics, references, telescope results, quickfix and location lists to help you solve all the trouble your code is causing. - https://github.com/folke/trouble.nvim
* Hover - a plugin that shows things when you mouse-over words: https://github.com/lewis6991/hover.nvim
* Rename - it renames varnames or functions correctly in all the code like in 
    - https://github.com/smjonas/inc-rename.nvim
    - which one it uses? maybe let's use this? https://gist.github.com/RaafatTurki/64d89abf326e9fce6eb717f7c1f8a97e
* pastebins: https://github.com/rktjmp/paperplanes.nvim
- [X] search anything in a cheatsheet https://github.com/sudormrfbin/cheatsheet.nvim - Telescope keymaps
* collaborative editor (easy & fast) ? 
* better search and replace for all the project: https://github.com/ray-x/sad.nvim
    - search/replace between multiple files: https://github.com/nvim-pack/nvim-spectre
* emoji picker: https://github.com/ziontee113/icon-picker.nvim
- [X] move easly blocks: https://github.com/matze/vim-move
* macro manager: https://github.com/ecthelionvi/NeoComposer.nvim
- [X] regexplainer https://github.com/bennypowers/nvim-regexplainer
* MUCH MORE: https://github.com/rockerBOO/awesome-neovim

### GIT features
NOTE: try an entire framework in vbox (booksworm?) in order to try forgit?
- [ ] git complete suite ? https://github.com/ray-x/forgit.nvim -- <!-- # NOTE: it is a WIP -->
- [ ] Git powerful integration, equivalentinvim vim-fugitive
    * gitk gui? equivalentinvim gitv
* Git searchigns https://github.com/aaronhallaert/advanced-git-search.nvim
- [ ] implement "delta" in the OS for diff features

### Voice commands
Using Vim from voice can be amazing and it helps knowing how to use it, see this demo: https://youtu.be/TEBMlXRjhZY , maybe we can use a plugin like:
- [ ] https://github.com/eyalk11/nvim-voicerec - + give a comment on the reddit guy: https://www.reddit.com/r/neovim/comments/132c36x/nvimvoicerec_add_speechtotext_to_neovim_useful/

### Other Frameworks to try:
- https://www.lazyvim.org/keymaps
- https://github.com/ecosse3/nvim  - comment from https://www.reddit.com/r/neovim/comments/135zudx/what_neovim_configuration_is_this/
- https://github.com/nvim-lua/kickstart.nvim
- https://github.com/ray-x/nvim

### Research
- WOW big setup, try and see: https://github.com/ray-x/nvim
* https://dev.to/iggredible/what-is-inside-my-vimrc-3ob7

### web dev
- https://github.com/ray-x/web-tools.nvim

### LSP related Wishlist
- keymaps, ideas, plugins, etc: https://www.lazyvim.org/keymaps#lsp
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
- Symbols? from https://youtu.be/stqUbv-5u2s?t=342 -> https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua#L382

### Code, debug, quality, etc...
* https://github.com/utilyre/barbecue.nvim
* GDB directly on nvim editing the code failing: https://github.com/sakhnik/nvim-gdb - demo: https://asciinema.org/a/134144
* DAP: https://github.com/mfussenegger/nvim-dap   INFO : https://www.lazyvim.org/plugins/extras/dap.core
    + https://github.com/jay-babu/mason-nvim-dap.nvim
    + https://github.com/rcarriga/nvim-dap-ui
    + https://github.com/theHamsta/nvim-dap-virtual-text

### Ideas:
* Use F5 for reloading the editor and its confs?

### Hotkeys
- [ ] REMAP THEM in a more intuitive way, let's get some ideas:
    - FIRST: check other frameworks to see their mappings ideas
        - lunarvim
        - https://www.lazyvim.org/keymaps
    - https://i.redd.it/7lgao7z2okwa1.png
- [X] F1-F7 should be the same as how elive-vim config is, switch between :buffer and show line.
    * replaced by Tab and Shift-Tab which is much more friendly and uses less keys
- [X] F12: pastetoggle
    - not needed, better feature implemented
- [X] hotkeys to tabularize based in symbols like (, =, etc
- [X] Ctrl+s to save, Ctrl+q to quit?
- [X] Ctrl+c in visual to copy a text, set it to clipboard instead of default

### Colorschemes:
* themes editor https://github.com/rktjmp/lush.nvim
* another one https://github.com/lifepillar/vim-colortemplate
- [ ] Elive monokai colorscheme has no competition, but it needs to be migrated to the NvChad code which is different
    - compare values with https://vscodethemes.com/e/jonesnc.molokayo/molokayo?language=javascript
- [ ] Make a RetroWave theme too which can look really cool? (wip)
    - https://vscodethemes.com/e/maxenceblanc.sia-synthwave/sia-synthwave-colour-theme?language=javascript
    - https://vscodethemes.com/e/nexxai.material-synthwave-vscode/material-synthwave?language=javascript
- [ ] Hacker colorscheme based on common "cyan" values like on this piece of video (take the colorscheme from it, include red & green as in the movies): https://youtu.be/-uleG_Vecis?t=581
- [ ] Include other selections?
- https://github.com/metalelf0/jellybeans-nvim
- use the grays values like https://github.com/Avimitin/nvim/blob/master/docs/images/kanagawa.png
- try to create a colorscheme with only the terminal colors modified to match our terminal colors (alt + i, run "colores" )

### Tutorials
- [ ] https://github.com/tjdevries/train.nvim

### Offtopic
* jokes: https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/autoload/jokes.vim


### Optimizations
- verify the startup speed time after everything is set up to see how good it works: https://www.reddit.com/r/neovim/comments/10e6ex7/what_is_your_neovim_load_time/
    - https://github.com/dstein64/vim-startuptime



### Howtos:

* NvChad Introduction: https://youtu.be/Mtgo-nP_r8Y
* NvChad docs: https://nvchad.com/docs/quickstart/install
* NeoVim from Scratch (a guided tutorial of NeoVim customization and plugins): https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ
* converting viml to lua: https://www.imaginaryrobots.net/posts/2021-04-17-converting-vimrc-to-lua/
* VimL to Lua: https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
* another howto https://www.meetgor.com/neovim-vimscript-to-lua/
* nvim lua guide https://github.com/RicardoRien/nvim-lua-guide/blob/master/README.esp.md
* Vim Regex (and other nices articles) https://dev.to/iggredible/learning-vim-regex-26ep
* Some LSP codes introduction: https://www.youtube.com/watch?v=stqUbv-5u2s


