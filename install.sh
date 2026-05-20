#!/bin/bash
# Dotfiles install script

DOTFILES="$HOME/.dotfiles"

echo "Setting up symlinks 🔗..."

files=(".zshrc" "starship.toml")

for file in "${files[@]}"; do
  # Remove existing file/symlink if present
  [ -e "$HOME/$file" ] && rm "$HOME/$file"
  ln -s "$DOTFILES/$file" "$HOME/$file"
  echo "  ✓ Linked $file"
done

echo "Done! 🎉"