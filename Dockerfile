FROM homebrew/brew:4.3.7

RUN git config --global user.email "wang@hashdata.cn" \
    && git config --global user.name "Zhanwei Wang" \
    && brew tap-new  wangzw/homebrew-core \
    && brew extract --git-revision 5a325b6208b53559686b7dc123537b410daa1b84 --version 8.2.2 qemu wangzw/homebrew-core \
    && brew install qemu@8.2.2 \
    && brew pin qemu@8.2.2 \
    && brew cleanup --prune=all -s && rm -rf "$(brew --cache)"
