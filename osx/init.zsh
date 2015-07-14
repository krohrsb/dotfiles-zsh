autoload add-zsh-hook

function iterm_title () {
  echo -ne "\e]1;${PWD##*/}\a";
}
add-zsh-hook precmd iterm_title
