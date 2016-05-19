/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew bundle

if [ echo $ZSH_NAME != "zsh" ]; then 
  chsh -s /bin/zsh
fi

sh ./setup.sh

git config --global core.editor $(which vim)
git config --global push.followTags true
git config --global user.name "Blake Embrey"
git config --global user.email "hello@blakeembrey.com"

mkdir -p ~/Projects

if [ -d ~/.vim/bundle/Vundle.vim ]; then
  echo "Vundle is already installed..."
else
  sh ./scripts/vim.sh
fi

if which node > /dev/null; then 
  echo "Node already exists..."
else
  sh ./scripts/node.sh
fi
