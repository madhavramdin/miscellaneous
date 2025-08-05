AUTOSUGGESTIONS_DIR="$ZSH_CUSTOM/plugins/zsh-autosuggestions"
SYNTAX_HIGHLIGHTING_DIR="$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

# Check and install zsh-autosuggestions
if [ -d "$AUTOSUGGESTIONS_DIR" ]; then
    #echo "zsh-autosuggestions is already installed at $AUTOSUGGESTIONS_DIR"
else
    echo "zsh-autosuggestions not found. Cloning the plugin..."
    git clone https://github.com/zsh-users/zsh-autosuggestions "$AUTOSUGGESTIONS_DIR"
    
    if [ $? -eq 0 ]; then
        echo "zsh-autosuggestions successfully cloned to $AUTOSUGGESTIONS_DIR"
    else
        echo "Failed to clone zsh-autosuggestions. Please check your network or permissions."
        exit 1
    fi
fi

# Check and install zsh-syntax-highlighting
if [ -d "$SYNTAX_HIGHLIGHTING_DIR" ]; then
    #echo "zsh-syntax-highlighting is already installed at $SYNTAX_HIGHLIGHTING_DIR"
else
    echo "zsh-syntax-highlighting not found. Cloning the plugin..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$SYNTAX_HIGHLIGHTING_DIR"
    
    if [ $? -eq 0 ]; then
        echo "zsh-syntax-highlighting successfully cloned to $SYNTAX_HIGHLIGHTING_DIR"
    else
        echo "Failed to clone zsh-syntax-highlighting. Please check your network or permissions."
        exit 1
    fi
fi
