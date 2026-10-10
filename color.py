# this file has all the ansi string for adding colors to make the output on the terminal more readable 

black = "\033[30m"
red = "\033[31m"
green = "\033[32m"
yellow = "\033[33m"
blue = "\033[34m"
magenta = "\033[35m"
cyan = "\033[36m"
white = "\033[37m"
reset = "\033[0m"


def print_color ( text , color ):
    return (f"{color}{text}{reset}")

'''
main color scheme that we will use is 
red      - for errors 
green    - for completed operations 
magenta  - for input 
yellow     - database output 
blue   - (not decided yet)
'''