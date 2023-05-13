function ls-installed --description="convenience function to list all explicitly installed packages"
  comm -23 (pacman -Qqett | sort | psub) (pacman -Qqg xorg | sort | uniq | psub) $argv
        
end
