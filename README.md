# Dot files

### Resources
* .vimrc
	* Vundle
	* NERDCommenter
	* NERDTree
	* Git gutter
	* Numbers
	* Ctrl+P
	* Airline
	* Syntastic
	* Python IDE
	* Colorschemes
	* Airline themes 
* .tmux.conf
	* tpm
	* tmux-resurrect
	* .tmux.std.conf is for tmux version > 1.8
	* .tmux.1.8.conf is for 1.8
* .radare2rc
	* customizes colors & number of bytes displayed in disassembly

### To install
1. clone repo
2. cd dot-files && ./install.sh
3. Make sure the tmux config suits your tmux version
	-	e.g.) ``cp .tmux.1.8.conf .tmux.conf && ./addconfigs.sh``

### Modifying
- Modify the configs inside the repo and run ./addconfigs.sh 
