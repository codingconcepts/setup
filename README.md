# setup
Steps for getting my preferred setup onto new machines

### Tools


### Fonts

* [firacode](https://github.com/tonsky/FiraCode)
* [nerdfont](https://github.com/ryanoasis/nerd-fonts)

```
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```

### Terminals

* [warp](https://www.warp.dev)

Warp settings:

* Settings > Appearance > Select Nerd Font
* Settings > Features > Check Honor user's custom prompt (PS1)
* Settings > Features > Check Open completions menu as you type

* [hyper](https://hyper.is)

### Prompts / Shells

* [zsh](https://ohmyz.sh)

Zsh config (~/.zshrc):

``` sh
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

PS1="> "

path+=('/users/robreid/go/bin')
path+=('/users/robreid/dev/bin')

export PATH

if [ -f ~/.cockroach.lic ]; then
  export COCKROACH_DEV_LICENSE="$(cat ~/.cockroach.lic)"
fi

eval "$(starship init zsh)"
```

* [starship](https://github.com/starship/starship)

Starship config (~/.config/starship.toml):

``` toml
format = """
[](#FF9B9B)\
$username\
[](bg:#FFD6A5 fg:#FF9B9B)\
$directory\
[](fg:#FFD6A5 bg:#FFFEC4)\
$git_branch\
$git_status\
[](fg:#FFFEC4 bg:#CBFFA9)\
$golang\
$julia\
$nodejs\
[](fg:#CBFFA9 bg:#A5D8FF)\
$time\
[ ](fg:#A5D8FF)\
"""

# Disable the blank line at the start of the prompt
add_newline = true

# You can also replace your username with a neat symbol like   or disable this
# and use the os module below
[username]
show_always = true
style_user = "bg:#FF9B9B"
style_root = "bg:#FF9B9B"
format = '[$user ]($style)'
disabled = false

[directory]
style = "bg:#FFD6A5"
format = "[ $path ]($style)"
truncation_length = 1
truncation_symbol = ".../"

[docker_context]
symbol = "docker"
style = "bg:#A5D8FF"
format = '[ $symbol $context ]($style) $path'

[git_branch]
symbol = "git"
style = "bg:#FFFEC4"
format = '[ $symbol $branch ]($style)'

[git_status]
style = "bg:#FFFEC4"
staged = '\($count\)($style)'
format = '[$staged]($style)'

[golang]
symbol = "go"
style = "bg:#CBFFA9"
format = '[ $symbol ($version) ]($style)'

[julia]
symbol = "julia"
style = "bg:#CBFFA9"
format = '[ $symbol ($version) ]($style)'

[nodejs]
symbol = "nodejs"
style = "bg:#CBFFA9"
format = '[ $symbol ($version) ]($style)'

[cmd_duration]
min_time = 1_000
format = " took [$duration]($style)"

[time]
disabled = false
time_format = "%R"
style = "bg:#A5D8FF"
format = '[ $time ]($style)'
```