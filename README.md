# Dotfiles

> Updates the below resources. Make sure to comment out or update the install script if you don't want yours to get blown away or lost. Also, my .zshrc assumes pyenv & pyenv-virtualenv are installed so adjust that accordingly.

### Resources
* .vimrc
	* Vundle
	* NERDCommenter: (, + c + space) comments out line
	* NERDTree w/ git integration, tabs, dev icons
	* Git gutter
	* Numbers
	* Ctrl+P
	* Colorschemes
	* Airline + themes
* .vimrc.simple
	* Syntax highlighting
	* Backspace
	* Tabs & spaces set
	* No plugins
* .radare2rc
	* colors & number of bytes displayed in disassembly
* .zshrc
	* theme and other zsh config
* .tmux.conf 
	* tpm
	* tmux-resurrect

### To install

```bash
git clone https://github.com/kr1tzb1tz/dotfiles.git && cd dotfiles && ./install.sh
```
