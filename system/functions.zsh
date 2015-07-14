function explain {
  # Explain a command
  # $ explain tar
  # => http://explainshelll.com/explain?cmd=tar
  # 
  # Explain a command with arguments
  # $ explain ls -l -a
  # => http://explainshell.com/explain?cmd=ls+-l+-a
  #
  # Explain an alias
  # alias ll='ls -l'
  # $ explain ll
  # => http://explainshell.com/explain?cmd=ls+-l
  #
  # Explain an alias with additional arguments
  # $ explain ll -a
  # => http://explainshell.com/explain?cmd=ls+-l+-a
  
  
  # store the command
  cmd=$1
  # remove it from the arguments
  shift
  
  # grab alias output (if any)
  aliasOutput=`alias $cmd`

  # check to see if the command is alised
  if [ ! -z "$aliasOutput" ]; then
    # command is aliased so remove the alias explination syntax to capture the actual command
    cmd=${aliasOutput#*\'}
    cmd=${cmd%\'}
    echo "Explaining an alias"
  fi
 
  # replace spaces with + for URL
  cmd=${cmd:gs/ /+}
 
  # If there are additional arguments provided
  if [ ! -z $@ ]; then
    # concat cmd with arguments replacing spaces with + for URL
    cmd="$cmd+${@:gs/ /+}"
  fi
  
  # construct URL
  url="http://explainshell.com/explain?cmd=$cmd"
  
  # open url in the browser
  open $url
}
