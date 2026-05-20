#!/bin/bash
# Dotfiles install script

DOTFILES="$HOME/.dotfiles"

echo "Setting up symlinks 🔗..."

declare -A symlinks
symlinks["$DOTFILES/.zshrc"]="$HOME/.zshrc"
symlinks["$DOTFILES/ghostty/config"]="$HOME/.config/ghostty/config"

for src in "${!symlinks[@]}"; do
  dest="${symlinks[$src]}"
  [ -e "$dest" ] && rm "$dest"
  ln -s "$src" "$dest"
  echo "  ✓ Linked $src -> $dest"
done

echo "Done! 🎉"