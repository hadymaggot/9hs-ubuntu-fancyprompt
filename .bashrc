# Define a function to generate a random dark color code
random_dark_color_code() {
    # Generate a random number between 0 and 7 (dark ANSI color codes)
    local color_code=$((30 + RANDOM % 4))
    
    # Return the ANSI color code without bold attribute
    echo "\[\033[0;${color_code}m\]"
}

# Define a function to update the command output color
update_output_color() {
    local random_color=$(random_dark_color_code)
    if [ "$color_prompt" = yes ]; then
        PS1="\n${random_color}┌─${random_color}❮\[\033[38;5;240m\]\u${random_color}@\[\033[2;34m\]\h${random_color}❯─≪ \[\033[38;5;64m\]\W${random_color}$(git branch --show-current 2>/dev/null | sed "s/^/  /") ≫──● \n${random_color}└─\[\033[2;37m\]${random_color}► "
    else
        PS1='\n\u@\h:\W\n\n> '
    fi
}

# Set initial command output color
update_output_color

# Update the command output color before each command execution
trap 'update_output_color' DEBUG
