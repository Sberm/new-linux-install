# run the line below first
# sudo apt install git neovim tmux curl make gcc

# create hw dir
cd
mkdir -p hw

function cd_hw() {
  cd && cd hw
}

# nvim config
printf "installing neovim config"
cd_hw
git clone https://github.com/Sberm/SbermVimrc.git
cd SbermVimrc
./install.sh

# bashrc
printf "installing bash config"
cd_hw
git clone https://github.com/Sberm/bashrc.git
cd bashrc
./install.sh

# tmux config
printf "installing tmux config"
cd_hw
git clone https://github.com/Sberm/tmux-conf.git
cd tmux-conf
./install.sh

# todo
printf "installing todo"
cd_hw
git clone https://github.com/Sberm/todo.git
cd todo
./install.sh
cd_hw
git clone https://github.com/Sberm/todo_.git

# Transgender.rs 
printf "installing Transgender.rs"
cd_hw
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo "export PATH=\$PATH:~/.cargo/bin/" >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/Sberm/Transgender.rs.git
cd Transgender.rs
make
make install

# tmux plugin
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# hmcl
sudo cp hmcl.desktop /usr/share/applications
