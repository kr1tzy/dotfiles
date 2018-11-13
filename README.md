# Dot files

### Resources
* .vimrc
	* has Vundle along with several plugins I like to use
* .tmux.conf
	* .tmux.conf.std is for tmux version > 1.8
	* .tmux.conf.1.8 is for 1.8
* .radare2rc
	* customizes colors & number of bytes displayed in disassembly

### To install
1. clone repo
2. cd dot-files && ./install.sh
3. Make sure the tmux config suits your tmux version
	- I generally just copy over the .tmux.conf with whichever I need and re-add the configs.
	-	e.g.) ``cp .tmux.conf.1.8 .tmux.conf && ./addconfigs.sh``

### Modifying
- If you modify your configs inside of the clone repo just run ./addconfigs.sh and you'll be good to go.
