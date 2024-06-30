FROM homebrew/brew:4.3.7

RUN brew install qemu && brew cleanup --prune=all -s && rm -rf "$(brew --cache)"
