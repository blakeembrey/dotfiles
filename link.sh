DIRECTORY=$(cd "$(dirname "$0")"; pwd)

echo "Linking $DIRECTORY -> $HOME"

link() {
  # Force create/replace the symlink.
  ln -fs "${DIRECTORY}/${1}" "${HOME}/${1}"
}

link ".aliasesrc"
link ".antigenrc"
link ".gitconfig"
link ".gitignore"
link ".mackup.cfg"
link ".npmrc"
link ".tool-versions"
link ".zprofile"
link ".zshrc"
