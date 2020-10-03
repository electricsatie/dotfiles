####################################################################################################
# basic
####################################################################################################
alias ll='ls -al'


####################################################################################################
# open command
####################################################################################################
alias stree='open -a SourceTree'
alias oc='open -a google\ chrome'
alias xopen='open -a /Applications/Xcode.app'
alias trans='oc https://translate.google.co.jp/?hl=ja#en/ja/'
alias og='oc $( git config remote.origin.url | sed s/ssh/https/ | sed s/git@// )'


####################################################################################################
# git command
####################################################################################################
alias gb='git branch'
alias gp='git pull'
alias gck='git checkout'
alias gf='git fetch'
alias gcp='git cherry-pick'
alias gbc='gb --contains | cut -b 3-'


####################################################################################################
# ghq customize command
####################################################################################################
alias ghqcd='cd $( ghq list | peco | xargs -I{} echo `ghq root`/{} )'
alias ghqcr='git config --global ghq.root $(git config --global --get-regexp "ghq.candidate.*" | sed -e "s/ghq.candidate.[0-9a-zA-Z]* //g" | peco )'



####################################################################################################
# wash remote branch.
####################################################################################################
function wrb() {
  command python -c 'import sys; print("/".join("".join(sys.argv[1::]).split("/")[2::]))' $1
}


####################################################################################################
# checkout remote branch same branch name.
####################################################################################################
function fgck() {
  local remote_branch=$1
  local local_branch=$(wrb ${remote_branch})
  command git checkout ${remote_branch} -b ${local_branch}
}


####################################################################################################
# list hosts name in ssh conf.d/* files.
####################################################################################################
function flh() {
  for i in `grep -r "^Host " $HOME/.ssh/conf.d/ | sed s/".*:Host "//`
  do
     echo "${i}"
  done
}


####################################################################################################
# search hosts name in  ssh conf.d/* files.
####################################################################################################
function fsh() {
   ssh $( flh | peco )
}

