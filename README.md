# neovim-conf

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
- [ ] Visualize HEX colors and names, equivalentinvim vim-coloresque
- [ ] Markdown and Asciidoc support (syntax, syntax checker, etc), also a previewer:
- [ ] Preview (render) of things like markwon, equivalentinvim vim-preview
- [ ] Show shitty M$ buggy newlines
- [ ] Show syntax hilight names, equivalentinvim synstack
- [ ] Show and fix whitespacing errors
- [ ] Feature to "sudo save" file when no permissions
- [ ] Show the cursor cuc & cul when switching windows


### Hotkeys
- [ ] F1-F7 should be the same as how elive-vim config is, switch between :buffer and show line.
- [ ] F12: pastetoggle
- [ ] hotkeys to tabularize based in symbols like (, =, etc
- [ ] Ctrl+s to save, Ctrl+q to quit?
- [ ] Ctrl+c in visual to copy a text, set it to clipboard instead of default

### Colorschemes:
- [ ] Elive monokai colorscheme has no competition, but it needs to be migrated to the NvChad code which is different
- [ ] Include other selections?


### Verify bugs:
- [ ] fonts compatibility? over terminology, urxvt, ssh, tmux, etc
- [ ] syntax working for special files: c (improved, equivalentinvim vim-syntax-extra), edc, markdown, asciidoc
- [ ] Showing tabs can be annoying especially when copying the text, check vimrc conf to compare


### Suggestions:

* Install the Jetbrains featured fonts https://www.jetbrains.com/lp/mono/
    * _Already included in Elive_
* Install Nerdfonts for many symbols https://www.nerdfonts.com/
    * _Already included in Elive_

### Howtos:

* NvChad docs: https://nvchad.com/docs/quickstart/install
* Small introduction to Neovim + NvChad: https://www.youtube.com/watch?v=Mtgo-nP_r8Y


### Tips

Want to select a font for your programming environment? See this online checker: https://www.programmingfonts.org/


### Instructions

#### Copilot install

Suggestion: before to set up your neovim, remove/move its possible conf and creating a new one install the copilot plugin, this will create the file:

> .config/github-copilot/hosts.json

Which is the only thing you need, later, you can remove this conf and set up your new neovim setup

