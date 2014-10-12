# run this command to change your default shell to zsh: chsh /bin/zsh

#define EDITOR
export EDITOR=vim

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
LS_COLORS='di=1:fi=36:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

#zsh-syntax-highlighting
#clone git://github.com/zsh-users/zsh-syntax-highlighting.git
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

