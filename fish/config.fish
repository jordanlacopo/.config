#
# ███████╗██╗███████╗██╗  ██╗
# ██╔════╝██║██╔════╝██║  ██║
# █████╗  ██║███████╗███████║
# ██╔══╝  ██║╚════██║██╔══██║
# ██║     ██║███████║██║  ██║
# ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝
# A smart and user-friendly command line
# https://fishshell.com/
# cSpell:words shellcode pkgx direnv

eval (/opt/homebrew/bin/brew shellenv)


starship init fish | source # https://starship.rs/
zoxide init fish | source # 'ajeetdsouza/zoxide'

set -U fish_greeting # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings
# set -U LANG en_US.UTF-8
# set -U LC_ALL en_US.UTF-8

# set -Ux BAT_THEME Catppuccin-latte # 'sharkdp/bat' cat clone
set -Ux EDITOR nvim # 'neovim/neovim' text editor
set -Ux FZF_DEFAULT_COMMAND "fd -H -E '.git'"
set -Ux VISUAL nvim

# golang - https://golang.google.cn/
set -Ux GOPATH (go env GOPATH)
fish_add_path $GOPATH/bin

fish_add_path $HOME/.config/bin # my custom scripts

set copilot_cli_path (which github-copilot-cli)

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# if test -f /opt/homebrew/Caskroom/miniconda/base/bin/conda
#     eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" hook $argv | source
# else
#     if test -f "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
#         . "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
#     else
#         set -x PATH /opt/homebrew/Caskroom/miniconda/base/bin $PATH
#     end
# end
# # <<< conda initialize <<<
