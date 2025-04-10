# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

 export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
# PS1='\[\e[96;1m\]\u\[\e[0;38;5;182m\]\w\[\e[0m\]:'
alias d="cd /home/ShockWave-Fedora/Desktop"
alias ls="ls -G"
alias la="ls -la"
alias so="source ~/.zshrc"
alias edit="vim ~/.zshrc"
alias vpn="sudo wg-quick up wg0"
alias vpne="sudo wg-quick down wg0"

function myip() {
            curl ifconfig.me
}
function weather() {
    if [ -z "$1" ]; then
        echo "Kullanım: weather <şehir>"
    else
        curl -s "wttr.in/$1?0"
    fi
}
function sysinfo() {
    echo "İşletim Sistemi: $OSTYPE"
    echo "Kullanıcı: $(whoami)"
    echo "Dizin: $(pwd)"
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "macOS Sürümü: $(sw_vers -productVersion)"
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "Linux Dağıtımı: $(lsb_release -d | cut -f2-)"
    fi
}
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
