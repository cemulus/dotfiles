# dotfiles

## Installation steps

1. [Zsh](https://github.com/zsh-users/zsh)

1. [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

       sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

1. [zsh-completion](https://github.com/zsh-users/zsh-completions)

       git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

1. [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

       git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

1. [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

       git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

1. [fasd](https://github.com/clvv/fasd)

1. [fzf](https://github.com/junegunn/fzf)

       git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
       ~/.fzf/install

1. Clone and run

       git clone https://github.com/cemulus/dotfiles.git

       cd dotfiles/

       ./install.sh
