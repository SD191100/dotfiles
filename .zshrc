# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/home/tanjiro/.zshrc'

fortune -s | cowsay

# colorscript  -e pinguco
# autoload -Uz compinit
# compinit
# End of lines added by compinstall
autoload -U colors && colors
PS1="%{$fg[green]%}%n%{$reset_color%}:%{$fg[blue]%}%m %{$fg[white]%}%~ %{$reset_color%}%% "

# % bindkey -v
source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.



# Tell Antigen that you're done.
antigen apply


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.cargo/bin:$PATH"
# export PATH="/usr/lib/cargo/bin/fd"
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000



# Set typewritten ZSH as a prompt
autoload -U promptinit; promptinit
export PATH=~/bin:$PATH
# export PATH=$PATH:/usr/local/go/bin
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
export PATH="$PATH:/opt/mssql-tools18/bin"
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:/opt/mssql-tools18/bin"


# Load Angular CLI autocompletion.
source <(ng completion script)
