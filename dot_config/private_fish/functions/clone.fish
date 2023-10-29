function clone --wraps='alacritty -e fish -c "cd $(pwd); fish -i" &; disown' --description 'alias clone=alacritty -e fish -c "cd $(pwd); fish -i" &; disown'
  alacritty -e fish -c "cd $(pwd); fish -i" &; disown $argv
        
end
