# --- TerminalSafari Pro Configuration ---

# 1. VISUAL INTERFACE
# Shortens prompt to 'user@safari:folder$' to save horizontal space on iPhone
export PS1="\[\033[01;32m\]\u@safari\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ "
# Enables colors for 'ls' and other commands
alias ls='ls --color=auto'
export TERM=xterm-256color

# 2. EDITOR SETTINGS
# Sets Vim as default and applies fixes for WebAssembly/Touch compatibility
export EDITOR='vim'
# The flags below prevent Vim from getting stuck in "Replace" mode on mobile
alias vim='vim -N -u NONE -c "set nocp" -c "set backspace=indent,eol,start" -c "syntax on" -c "set number"'

# 3. POWER-USER ALIASES
alias ll='ls -la'          # See hidden files (like this .bashrc)
alias ..='cd ..'           # Quick go back
alias cls='clear'          # Clear screen (easier to type than 'clear')
alias h='history'          # See recent commands
alias md='mkdir -p'        # Create folders easily

# 4. FILE MANAGEMENT (SAVE/DOWNLOAD)
# This works with the JavaScript 'downloadFile' function in index.html
save() {
    if [ -f "$1" ]; then
        echo "Preparing $1 for download..."
        # We ensure the file is in the persistent home directory
        cp "$1" /home/"$1" 2>/dev/null
        echo "Done. Use the 'SAVE' button in the touch-bar to finish."
    else
        echo "Error: File '$1' not found."
    fi
}

# 5. WELCOME MESSAGE
clear
echo -e "\033[1;32m       _                              "
echo -e "      | |                             "
echo -e "      | |__   __ _ ___ _ __  _ __ ___ "
echo -e "      | '_ \ / _\` / __| '_ \| '__/ _ \\"
echo -e "      | |_) | (_| \__ \ |_) | | | (_) |"
echo -e "      |_.__/ \__,_|___/ .__/|_|  \___/ "
echo -e "                      | |             "
echo -e "                      |_|             \033[0m"
echo ""
echo -e "\033[1;34mSYSTEM:\033[0m TerminalSafari v1.0 (WASM)"
echo -e "\033[1;34mHINT:\033[0m Type \033[1;33m'vim filename'\033[0m to edit code."
echo -e "\033[1;34mHINT:\033[0m Use the \033[1;32mTAB\033[0m button for auto-complete."
echo ""
