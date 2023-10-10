function epitagcc --wraps='gcc -g -std=c99 -pedantic -Werror -Wall -Wextra -Wvla -o main *.c' --description 'alias epitagcc=gcc -g -std=c99 -pedantic -Werror -Wall -Wextra -Wvla -o main *.c'
  gcc -g -std=c99 -pedantic -Werror -Wall -Wextra -Wvla -o main *.c $argv
        
end
