# NOTES FOR VINCE TODO WITH EVERY NEW MACHINE
#
# Iterm2 Setup
# 1) Mapping right/left alt arrows
# https://apple.stackexchange.com/questions/136928/using-alt-cmd-right-left-arrow-in-iterm
# 2) Set home dir to ~/Repos
# https://apple.stackexchange.com/questions/62505/how-can-i-have-my-shell-always-start-in-a-certain-directory-that-is-not-my-home
#
# Install MenuMeters
# https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/

# GC autocomplete
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# zsh autocomplete
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit

    source "$(brew --prefix)/opt/zsh-git-prompt/zshrc.sh"
    PROMPT='%B%m%~%b$(git_super_status) %# '

fi

## ------------------------------ 
## EXPORTS 
## ------------------------------

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

# Yarn 
export PATH="$PATH:/usr/local/Cellar/yarn/1.22.10"