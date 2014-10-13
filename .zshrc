# run this command to change your default shell to zsh: chsh /bin/zsh

#define EDITOR
export EDITOR=vim

#history configuration
export HISTFILE=$HOME/.zhistory
export HISTSIZE=SAVEHIST=99999
setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FCNTL_LOCK
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
#
#define theme
autoload -U promptinit
promptinit
prompt redhat

#enable completion
autoload -U compinit
compinit

#completion menu
zstyle ':completion:*' menu select

#enable completion for aliases
setopt completealiases

#ncurses-term need to install xterm-256color
export TERM=xterm-256color

#colors
alias ls='ls --color'
LS_COLORS='di=1:fi=37:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

#zsh-syntax-highlighting
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#history substring search
source ~/zsh-history-substring-search/zsh-history-substring-search.zsh
# bind UP and DOWN arrow keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#vi keys - show mode
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

#enable tetris
autoload -U tetris
zle -N tetris
bindkey ^T tetris

source ~/zsh-git-prompt/zshrc.sh
PROMPT='[%n][$(git_super_status)]:%B%/%b # '
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[white]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[green]%}"
