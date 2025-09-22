# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
source /home/odin/powerlevel10k/powerlevel10k.zsh-theme

# ZSH Syntax Highlighting
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

#ZSH AutoSuggestions
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 
fi

#ZSH AutoComplete 
if [ -f /usr/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh ]; then
    source /usr/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh 
fi

# Sudo plugin
if [ -f /usr/share/zsh-sudo-plugin/sudo.plugin.zsh ]; then
    source /usr/share/zsh-sudo-plugin/sudo.plugin.zsh 
fi

export PATH=/opt/kitty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin:/opt/nvim/nvim-linux64/bin

# Fix java problem
export _JAVA_AWT_WM_NONREPARENTING=1

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
alias ll='lsd -lhtra --group-dirs=first'
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
alias linux1='ssh usuario@10.6.130.67'
alias windows1='remmina -c ~/.local/share/remmina/group_rdp_windows1_10-6-129-151.remmina  > /dev/null 2>&1 & disown'
# Xclip
alias copy='xclip -selection clipboard'

# Github
alias co='git checkout'
# Zmkstudio
alias zmkstudio='~/.local/bin/zmk-studio.AppImage'
# Clear podman
alias podmanclean='podman rm -af && podman pod rm -af && podman rmi -af && podman volume rm -a && podman system prune -a -f'
# Clear docker
alias dockerclean='docker stop $(docker ps -aq) 2>/dev/null || true && \
docker rm -f $(docker ps -aq) 2>/dev/null || true && \
docker rmi -f $(docker images -aq) 2>/dev/null || true && \
docker volume rm $(docker volume ls -q) 2>/dev/null || true && \
docker network rm $(docker network ls -q) 2>/dev/null || true && \
docker system prune -a --volumes -f'
# grep
alias grep='grep --color=auto'

# Created by `pipx` on 2025-09-07 20:41:25
export PATH="$PATH:/home/odin/.local/bin"
export EDITOR=nvim

