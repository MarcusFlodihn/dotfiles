USER=$(whoami)

export ZSH="$HOME/.oh-my-zsh"

export ZSH_CUSTOM="$HOME/.config/zsh"

source $ZSH/oh-my-zsh.sh

source $HOMEBREW_REPOSITORY/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

antigen apply

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

path+=("/Users/$USER/.cargo/bin")

getpubip ()
{
  curl ifconfig.me/ip; echo
}

# Python specific: Automatically activate any .venv/bin/activate when changing directories
function auto_activate_venv() {
  if [ -f ".venv/bin/activate" ]; then
    source .venv/bin/activate
  fi
}

autoload -Uz add-zsh-hook
add-zsh-hook chpwd auto_activate_venv

auto_activate_venv

autoload -U promptinit; promptinit
prompt pure

