<p align="center">
  <a><img src="https://github.com/hadymaggot/-.github/blob/main/icon.png" width="100" alt="Ahadizapto Logo"></a>
</p>

<p align="center">
  <a href="https://9hs.my.id" target="_blank"><img src="https://github.com/hadymaggot/-.github/blob/main/ahadizapto.png" width="200" alt="Laravel Logo"></a>
</p>

<p align="center">
  <a href="mailto:9hs@protonmail.com" target="_blank"><img src="https://img.shields.io/badge/ProtonMail-8B89CC?style=for-the-badge&logo=protonmail&logoColor=white" alt="9hs@protonmail.com"></a>
  <a href="mailto:9hs@tuta.io" target="_blank"><img src="https://img.shields.io/badge/Tutanota-840010?style=for-the-badge&logo=Tutanota&logoColor=white" alt="9hs@tuta.io"></a>
  <a href="https://t.me/anak8awan9hsDev" target="_blank"><img src="https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white" alt="anak8awan9hsDev"></a>
</p>
<p align="center">
  <a href="https://matrix.to/#/@9hs:Amatrix.org" target="_blank"><img src="https://img.shields.io/badge/Matrix-9hs-white?logo=matrix" alt="Matrix"></a>
  <a href="https://wa.me/message/ZWXNSOSECGUPF1" target="_blank"><img src="https://img.shields.io/badge/Whatsapp-Ahadizapto-green?logo=whatsapp" alt="Whatsapp"></a>
  <a href="https://webchat.oftc.net/?nick=&channels=%23ahadizapto&uio=d4" target="_blank"><img src="https://img.shields.io/badge/webIRC-9hs-magenta?logo=liberadotchat" alt="IRc"></a>
</p>

<p align="center">
  <a href="https://9hs.my.id" target="_blank"><img src="https://img.shields.io/uptimerobot/status/m794105541-bb4b4597366a83b26863f084?label=VPS&logo=docker" alt="Matrix"></a>
</p>

#

<a href="https://ubuntu.org" target="_blank"><img src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white" alt="Build Status"></a>

## Function
- `random_dark_color_code()` ─ Function to generate random dark color
  ```bash
    random_dark_color_code() {
        # Generate a random number between 0 and 7 (dark ANSI color codes)
        local color_code=$((30 + RANDOM % 4))
        
        # Return the ANSI color code without bold attribute
        echo "\[\033[0;${color_code}m\]"
    }
  ```

- `update_output_color()` ─ Function to update the command output color
  ```bash
    update_output_color() {
      local random_color=$(random_dark_color_code)
      if [ "$color_prompt" = yes ]; then
          PS1="\n${random_color}┌─${random_color}❮\[\033[38;5;240m\]\u${random_color}@\[\033[2;34m\]\h${random_color}❯─≪ \[\033[38;5;64m\]\W${random_color}$(git branch --show-current 2>/dev/null | sed "s/^/  /") ≫──● \n${random_color}└─\[\033[2;37m\]${random_color}► "
      else
          PS1='\n\u@\h:\W\n\n> '
      fi
    }
  ```

## Initialize
- Set initial command output color
  ```bash
    update_output_color
  ```
  
- Update the command output color before each command execution
  ```bash
    trap 'update_output_color' DEBUG
  ```

## Links
```bash
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
```
