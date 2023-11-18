sudo apt-get update
sudo apt-get install -y gh tree tmux nmap
git clone --depth 1 https://github.com/Milldrew/simple-vim-config.git

# github copilot for vim
git clone https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim
