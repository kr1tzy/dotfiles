# Dotfiles

> Updates the below resources and installs Vundle (a vim package manager), tpm (tmux package manager), and pyenv & pyenv-virtualenv if they aren't already installed.

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
	* NO PLUGINS
* .radare2rc
	* colors & number of bytes displayed in disassembly
* .zshrc
	* theme and other zsh config
* .tmux.conf 
	* modified aesthetics
	* tpm
	* tmux-resurrect

### To install

```bash
git clone https://github.com/kr1tzb1tz/dotfiles.git && cd dotfiles && ./install.sh
```

[pyenv & pyenv-virtualenv]: https://realpython.com/intro-to-pyenv/
