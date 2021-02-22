#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias z='devour zathura'
alias sxiv='devour sxiv'
alias mpv='devour mpv'
alias pc='devour pavucontrol'
alias untar='tar -zxvf'
alias myip='curl ipinfo.io/ip'
alias lm='ls -t -r'
alias cache='cd ~/.cache'
alias config='cd ~/.config'
alias local='cd ~/.local'
alias bin='cd ~/.local/bin'

# Git-specific aliases #
alias ga='git add'
alias gaa='git add -A'
alias gap='git add -p'
alias gk='git commit'
alias gb='git branch'
alias gbv='git branch -v'
alias gbd='git branch -d'
alias gc='git checkout'
alias gcm='git checkout master'
alias gcb='git checkout -b'
alias gp='git push'
alias gf='git fetch'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log --oneline --decorate --graph --all'
alias gs='git status'
alias gm='git merge'
alias gr='git restore'
alias grs='git restore --staged'
alias gz='git stash'
alias gzl='git stash list'
alias gzs='git stash show -p'
alias gzd='git stash drop'
alias gzp='git stash pop'
alias gza='git stash apply'
alias gzb='git stash branch'
alias gzc='git stash clear'

# Colored commands aliases
alias ls='ls -hN --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

# Vim as a manpager
export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

#. $HOME/.asdf/asdf.sh
#. $HOME/.asdf/completions/asdf.bash
(cat ~/.cache/wal/sequences &)

export PATH="${PATH}:${HOME}/.local/bin/"
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\u@\h \W]\\$ \[$(tput sgr0)\]"
