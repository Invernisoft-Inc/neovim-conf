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


------



#### Framework:
- [ ] NvChad?
- [ ] Lazy? https://youtu.be/2ahI8lYUYgw?t=199

#### Plugins
- [ ] PHP & Javascript good support
    * equivalentinvim spf13/PIV ?
    * equivalentinvim pangloss/vim-javascript ?
- [ ] Error reporting
- [ ] Snippets:
   - [ ] comp-nvim-lsp : https://youtu.be/h4g0m0Iwmys?t=256
   - equivalentinvim: ultisnips, with own snippets for codes and mapping of locations with predefined values
- [ ] Copilot.~~vim~~lua
- [ ] Copilot cmp: https://github.com/zbirenbaum/copilot-cmp
- [ ] Execute-on-save: this is a pretty need thing, research a plugin that triggers a user specified action when its saved
    * equivalentinvim vim-dispatch runs them in BG
- [ ] Autocomplete: equivalentinvim: supertab, neocomplcache, youcompleteme
- [ ] faster moving: equivalentinvim: easymotion
- [X] file management: NvChad has it
    * equivalentinvim "ctrlp" & "ctrlp-funky" features?
    * equivalentinvim "nerdtree" features?
- [ ] fuzzy-finder feature, NvChad has it?
- [ ] equivalentinvim TagList: surce code browser with tags in a panel (functions, variables, etc)
    * support for EDC and PHP files
- [ ] Alignator of code, equivalentinvim is vim-easy-align & tabular: http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
- [ ] Grep feature to equivalent to search between the project, buffers, etc... (NvChad has it i think)
    * realtime, fuzzy-finder required, see ",fu" in elive-vim
- [ ] Show the definition prototype (like C headers) while typing, equivalentinvim echofunc
- [ ] Welcome page for neovim, new users running (guide/tutorial) it or simply running it without parameters, equivalentinvim vim-startify
- [ ] Show marks visually, nvim nor NvChad does it by default, equivalentinvim ShowMarks7
- [ ] Git powerful integration, equivalentinvim vim-fugitive
    * gitk gui? equivalentinvim gitv
    * visual marks like added/removed lines etc, equivalentinvim vim-signify
- [ ] Syntax checker / validator, equivalentinvim Syntastic
- [ ] Comment / uncomment blocks, already included in NvChad? equivalentinvim nerdcommenter
- [ ] Blink when search, equivalentinvim 'git://github.com/Elive/vim-bling'
- [ ] EFL integration, equivalentinvim 'git://git.enlightenment.org/editors/vim-configs.git'
- [ ] Multiple cursors edition, equivalentinvim vim-multiple-cursors
- [ ] Minimap feature?
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

### Ideas
* Trouble - A pretty list for showing diagnostics, references, telescope results, quickfix and location lists to help you solve all the trouble your code is causing. - https://github.com/folke/trouble.nvim


### Hotkeys
- [X] F1-F7 should be the same as how elive-vim config is, switch between :buffer and show line.
    * replaced by Tab and Shift-Tab which is much more friendly and uses less keys
- [ ] F12: pastetoggle
- [ ] hotkeys to tabularize based in symbols like (, =, etc
- [ ] Ctrl+s to save, Ctrl+q to quit?
- [ ] Ctrl+c in visual to copy a text, set it to clipboard instead of default

### Colorschemes:
- [ ] Elive monokai colorscheme has no competition, but it needs to be migrated to the NvChad code which is different
- [ ] Include other selections?


### Bugs (possible) to check:
- [ ] fonts compatibility? over terminology, urxvt, ssh, tmux, etc
- [ ] syntax working for special files: c (improved, equivalentinvim vim-syntax-extra), edc, markdown, asciidoc
- [ ] Showing tabs can be annoying especially when copying the text, check vimrc conf to compare


### Howtos:

* NvChad Introduction: https://youtu.be/Mtgo-nP_r8Y
* NvChad docs: https://nvchad.com/docs/quickstart/install
* NeoVim from Scratch (a guided tutorial of NeoVim customization and plugins): https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ


