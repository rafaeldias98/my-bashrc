# *********************************************
# * ~/.bashrc Personalizado para Ubuntu *
# * local: /home/user/.bashrc *
# *********************************************
# * Author: Rafael Dias da Silva *
# * E-Mail: rafadias39@gmail.com *
# * Date: 2017-08-14 *
# *********************************************
# =========================================================================================
# Adaptado de Thiago Nalli Valentim
# URL: http://www.diolinux.com.br/2014/09/como-personalizar-o-seu-terminal-linux.html
# =========================================================================================

# =========================================================================================
# Original de Edinaldo P. Silva para Arch Linux
# URL: http://gnu2all.blogspot.com.br/2011/10/arch-linux-bashrc.html
# =========================================================================================

#-----------------------------------------------
# Configurações Gerais
#-----------------------------------------------

# Se não estiver rodando interativamente, não fazer nada
[ -z "$PS1" ] && return

# Não armazenar as linhas duplicadas ou linhas que começam com espaço no historico
HISTCONTROL=ignoreboth

# Adicionar ao Historico e não substitui-lo
shopt -s histappend

# Definições do comprimento e tamnho do historico.
HISTSIZE=1000
HISTFILESIZE=2000

#===========================================
# Váriavies com as Cores
#===========================================
NONE="\[\033[0m\]" # Eliminar as Cores, deixar padrão)

## Cores de Fonte
K="\[\033[0;30m\]" # Black (Preto)
R="\[\033[0;31m\]" # Red (Vermelho)
G="\[\033[0;32m\]" # Green (Verde)
Y="\[\033[0;33m\]" # Yellow (Amarelo)
B="\[\033[0;34m\]" # Blue (Azul)
M="\[\033[0;35m\]" # Magenta (Vermelho Claro)
C="\[\033[0;36m\]" # Cyan (Ciano - Azul Claro)
W="\[\033[0;37m\]" # White (Branco)

## Efeito Negrito (bold) e cores
BK="\[\033[1;30m\]" # Bold+Black (Negrito+Preto)
BR="\[\033[1;31m\]" # Bold+Red (Negrito+Vermelho)
BG="\[\033[1;32m\]" # Bold+Green (Negrito+Verde)
BY="\[\033[1;33m\]" # Bold+Yellow (Negrito+Amarelo)
BB="\[\033[1;34m\]" # Bold+Blue (Negrito+Azul)
BM="\[\033[1;35m\]" # Bold+Magenta (Negrito+Vermelho Claro)
BC="\[\033[1;36m\]" # Bold+Cyan (Negrito+Ciano - Azul Claro)
BW="\[\033[1;37m\]" # Bold+White (Negrito+Branco)

## Cores de fundo (backgroud)
BGK="\[\033[40m\]" # Black (Preto)
BGR="\[\033[41m\]" # Red (Vermelho)
BGG="\[\033[42m\]" # Green (Verde)
BGY="\[\033[43m\]" # Yellow (Amarelo)
BGB="\[\033[44m\]" # Blue (Azul)
BGM="\[\033[45m\]" # Magenta (Vermelho Claro)
BGC="\[\033[46m\]" # Cyan (Ciano - Azul Claro)
BGW="\[\033[47m\]" # White (Branco)

#=============================================
# Configurações do bash
#=============================================

PS1="$BW\w$BW\`git \\
branch 2>/dev/null | grep \"^\*\" | \\
sed -r \"s/\*\ (.*)/$BW (GIT: $BR\1$BW)/\"\` \n$BR>> $NONE"

## Exemplos de PS1

# PS1="\e[01;31m┌─[\e[01;35m\u\e[01;31m]──[\e[00;37m${HOSTNAME%%.*}\e[01;32m]:\w$\e[01;31m\n\e[01;31m└──\e[01;36m>>\e[00m"

# PS1='\[\e[m\n\e[1;30m\][$:$PPID \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \d \[\e[1;30m\][\[\e[1;34m\]\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] \n($SHLVL:\!)\$ '}

# PS1="\e[01;31m┌─[\e[01;35m\u\e[01;31m]──[\e[00;37m${HOSTNAME%%.*}\e[01;32m]:\w$\e[01;31m\n\e[01;31m└──\e[01;36m>>\e[00m"

# PS1="┌─[\[\e[34m\]\h\[\e[0m\]][\[\e[32m\]\w\[\e[0m\]]\n└─╼ "

# PS1='[\u@\h \W]\$ '

#==========================
# DIVERSOS
#==========================

## Habilitando suporte a cores para o ls e outros aliases
## Vê se o arquivo existe
if [ -x /usr/bin/dircolors ]; then
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

## Aliases (apelidos) para comandos
alias ls='ls -l --color=auto'
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
fi # Fim do if do dircolor

## Aliases (apelidos) diversos

# Editar sources.list
alias lists='sudo vim /etc/apt/sources.list'

# atualizar o apt-get
alias upd='sudo apt-get update'

# Reparar o apt-get
alias aptrepair='sudo apt-get -f install'

# Reparar o dpkg
alias dpkgrepair='sudo dpkg --configure -a'

#==============================================
# Aliases para uso no dia-a-dia e testes
#==============================================

# Ping (Internet)
alias google='ping -t 3 www.google.com.br' # Ping ao google a cada 3 segundos
alias uol='ping -t 3 www.uol.com.br' # Ping ao UOL a cada 3 segundos

# Linux (Ubuntu)
alias cl='clear' # Limpa a tela
alias editCron='VISUAL=vim crontab -e'
alias showCron='VISUAL=vim crontab -l'
alias rc='vim ~/.bashrc'
alias dockerRestart='service docker restart'

# GIT
alias gcl='git clone ' # Clona o Projeto
alias gs='git status' # Status do versionamento
alias ga='git add ' # Adiciona os arquivos
alias gc='git commit -m ' # Commita os arquivos adicionados 
alias gb='git branch' # Mostra as branchs existentes
alias gck='git checkout ' # Altera a branch / Pode criar branch se receber -b
alias gps='git push origin ' # Manda as alterações pra branch informada
alias gpl='git pull origin ' # Atualiza a branch local, recebendo a branch do destino
alias gr='git remote -v ' # Mostra os remotes
alias grb='git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d'

#==============================================
# Funções
#==============================================

function showGitAlias() {
    alias | grep 'git'
}

function update() { # try
    echo "=======================================" &&
    echo "Updating packages" &&
    sudo apt-get update &&
    echo "=======================================" &&
    echo "Installing packages" &&
    sudo apt-get upgrade -y
    echo "=======================================" &&
    echo "Removing old packages" &&
    sudo apt autoremove
} || { # catch
    echo "============="
    echo "Update failed"
    echo "============="
}
