PROJECT_DIR=~/Projects/GitHub/tj

mkdir -p $PROJECT_DIR

git clone https://github.com/tj/n.git $PROJECT_DIR/n

cd $PROJECT_DIR/n

make install
