HISTSIZE=50000
SAVEHIST=50000

setopt interactive_comments

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

PS1="> "

path+=("/users/$USER/go/bin")
path+=("/users/$USER/dev/bin")
path+=("/Users/$USER/.local/bin")
path+=("/users/$USER/.linkerd2/bin")
path+=("/users/$USER/dev/flutter/bin")
path+=("/Users/$USER/dev/github.com/vlang/v")
path+=("/Users/$USER/dev/bin/instantclient_23_3")

export PATH

# Aliases
alias python="python3"
alias sqlclbin="/Users/$USER/dev/bin/sqlcl/bin/sql"

if [ -f ~/.cockroach.lic ]; then
  export COCKROACH_DEV_LICENSE="$(cat ~/.cockroach.lic)"
fi

eval "$(starship init zsh)"

# fzf
source <(fzf --zsh)
export FZF_DEFAULT_OPTS="--preview 'bat --color=always {}'"

# bun completions
[ -s "/Users/$USER/.bun/_bun" ] && source "/Users/$USER/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Make sure I'm using the right Ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/$USER/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH=/Users/$USER/.go-tpc/bin:$PATH

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/robreid/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

. "$HOME/.local/bin/env"
