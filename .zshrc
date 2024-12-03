# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
source /home/serhack/powerlevel10k/powerlevel10k.zsh-theme

# ZSH Syntax Highlighting
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

export PATH=/opt/kitty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin:/opt/nvim/nvim-linux64/bin

# History 
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt histignorealldups sharehistory

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export TERM=xterm-256color

# Custom Aliases
# -----------------------------------------------
# bat
alias cat='batcat'
alias catn='batcat --style=plain'
alias catnp='batcat --style=plain --paging=never'

# ls
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'

# nvim
alias vi='nvim'

# vpnc
alias iaas='sudo vpnc ull.conf'
alias saai='sudo vpnc-disconnect'

# VM
alias lpp='ssh usuario@10.6.128.52'
alias cya='ssh usuario@10.6.130.163'
alias bdd='ssh alu0101394503@exthost.etsii.ull.es'
alias adbd='ssh usuario@10.6.130.99'

# Xclip
alias copy='xclip -selection clipboard'

# Github
alias co='git checkout'

