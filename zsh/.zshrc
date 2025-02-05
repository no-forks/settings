# エイリアス
alias vz="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias ll='ls -l'
alias gd="cd /Users/oouchinaoki/Documents/Projects/Git"
alias gz="vi ~/.gitconfig"
# 環境変数
export LANG=ja_JP.UTF-8
# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
# 補完
# 補完機能を有効にする
autoload -Uz compinit
compinit
# 色を使用出来るようにする
autoload -Uz colors
colors
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# 同時に起動したzshの間でヒストリを共有する
setopt share_history
# git-promptの読み込み
source ~/.zsh/git-prompt.sh
# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit
# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
# プロンプトの表示設定(好きなようにカスタマイズ可)
setopt PROMPT_SUBST ; PS1='%F{green}%n%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '
#単語の入力途中でもTab補完を有効化
setopt complete_in_word
# 補完候補をハイライト
zstyle ':completion:*:default' menu select=1
# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true
#大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完リストの表示間隔を狭くする
setopt list_packed
# "cd -"の段階でTabを押すと、ディレクトリの履歴が見れる
setopt auto_pushd
export HOMEBREW_CASK_OPTS="--appdir=/Applications"