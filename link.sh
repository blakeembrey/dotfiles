DIRECTORY=$(cd "$(dirname "$0")"; pwd)

echo "Linking $DIRECTORY -> $HOME"

link() {
  # Force create/replace the symlink.
  ln -fs "${DIRECTORY}/${1}" "${HOME}/${2}"
}

link ".aliasesrc" ".aliasesrc"
link ".antigenrc" ".antigenrc"
link ".gitconfig" ".gitconfig"
link ".gitignore" ".gitignore"
link ".mackup.cfg" ".mackup.cfg"
link ".vimrc" ".vimrc"
link ".zshrc" ".zshrc"
