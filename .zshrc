autoload -U colors && colors
alias ls="ls --color=auto"

PS1="%{$fg[yellow]%}[%{$reset_color%}%{$fg[blue]%}%n%{$reset_color%}%{$fg[yellow]%}@%{$reset_color%}%{$fg[red]%}MacOS%{$reset_color%} %{$fg[green]%}%1~%{$reset_color%}%{$fg[yellow]%}]%{$reset_color%}$ "

alias vim="nvim"
source ~/pkg/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
