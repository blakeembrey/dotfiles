DIRECTORY=$(cd "$(dirname "$0")"; pwd)

echo "Linking $DIRECTORY -> $HOME"

link() {
  # Force create/replace the symlink.
  ln -fs "${DIRECTORY}/${1}" "${HOME}/${2}"
}

link ".zshrc" ".zshrc"
link ".aliasesrc" ".aliasesrc"
link ".antigenrc" ".antigenrc"
link ".vimrc" ".vimrc"
link ".gitignore" ".gitignore"
link ".gitconfig" ".gitconfig"
