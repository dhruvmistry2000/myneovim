# Check if Neovim or Vim is installed, if not install Neovim
if ! command -v nvim &> /dev/null && ! command -v vim &> /dev/null; then
    case "$OSTYPE" in
        "linux-gnu" | "linux-gnu"*)
            sudo apt update && sudo apt install neovim -y
            ;;
        "darwin"*)
            brew install neovim
            ;;
        "linux-arch")
            sudo pacman -S neovim
            ;;
    esac
fi

# Create the nvim directory if it doesn't exist
mkdir -p ~/.config/nvim

# Copy all configuration files to the correct location
if [ -d nvim ]; then
    cp -r nvim/* ~/.config/nvim/
else
    mkdir -p nvim
    cp -r nvim/* ~/.config/nvim/
fi

# Restart Neovim to apply the changes
echo "Neovim setup completed. Please restart Neovim to apply the changes."
