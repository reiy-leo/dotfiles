__conda_setup="$("$HOME/.local/miniconda3/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/.local/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/.local/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/.local/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# 从omz plugin info conda中偷的
# 不直接激活conda插件是因为和starship的prompt冲突了
alias cna="conda activate"
alias cnab="conda activate base"
alias cnde="conda deactivate"
alias cnel="conda env list"

alias cnconf="conda config"
alias cncss="conda config --show-source"

alias cnle="conda list --export"
alias cnles="conda list --explicit > spec-file.txt"

alias cncf="conda env create -f"
alias cncn="conda create -y -n"
alias cncp="conda create -y -p"
alias cncr="conda create -n"

alias cni="conda install"
alias cniy="conda install -y"
alias cnl="conda list"
alias cniy="conda install -y"
alias cnl="conda list"

alias cnr="conda remove"
alias cnrn="conda remove -y -all -n"
alias cnrp="conda remove -y -all -p"
alias cnry="conda remove -y"

alias cnsr="conda search"

alias cnu="conda update"
alias cnua="conda update --all"
alias cnuc="conda update conda"
