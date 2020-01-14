export ZSH="/Users/$(whoami)/.oh-my-zsh"
export XCODE_INSTALL_USER="dmitryduleba@gmail.com"

ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste accept-line)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=15'
DEFAULT_USER=$(whoami)
unsetopt BEEP

ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=( 
	xcode 
	sublime 
	osx 
	bundler 
	iterm2 
	zsh-completions
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $HOME/.dotfiles/aliases
source $HOME/.dotfiles/functions
source $HOME/.iterm2_shell_integration.zsh
source $HOME/.fastlane/completions/completion.sh

eval "$(rbenv init -)"