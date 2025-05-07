starship init fish | source

fish_add_path ~/.local/bin
# Set Android CLI tools path
fish_add_path ~/Android/Sdk/tools
fish_add_path ~/Android/Sdk/platform-tools

oh-my-posh init fish --config "https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/poshmon.omp.json" | source

zoxide init fish | source

set -gx EDITOR hx
set -gx SHELL /bin/fish
