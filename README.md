# Dot files

### Resources
* .vimrc
	* Vundle
	* NERDCommenter
	* NERDTree
	* NERDTree dev icons & colors
	* Git gutter
	* Numbers
	* Ctrl+P
	* Airline
	* Syntastic
	* Python IDE
	* Colorschemes
	* Airline themes 
	* Neoformat
	* Vim-javascript
	* Vim-json
	* Vim-jsx
	* Asyncrun 
* .vimrc.simple
	* Syntax highlighting
	* Backspace
	* Tabs & spaces set
	* No plugins
* .radare2rc
	* customizes colors & number of bytes displayed in disassembly
* .zshrc
	* theme and other zsh config
* .tmux.std.conf 
	* tpm
	* tmux-resurrect
	* > 1.8
* .tmux.1.8.conf 
	* <= 1.8
* .tmux.conf == .tmux.std.conf

### To install
1. clone repo
2. cd dot-files && ./install.sh
3. Make sure the tmux config suits your tmux version
	-	e.g.) ``cp .tmux.1.8.conf .tmux.conf && ./addconfigs.sh``
	-	e.g.) ``cp .tmux.std.conf .tmux.conf && ./addconfigs.sh``

### Modifying
- Modify the configs inside the repo and run ./addconfigs.sh 
