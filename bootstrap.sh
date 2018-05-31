sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt install -y python3-pip git gcc make openssl libssl-dev libbz2-dev libreadline-dev libsqlite3-dev zlib1g-dev

git clone https://github.com/yyuu/pyenv.git /home/vagrant/.pyenv
cat >> /home/vagrant/.bash_profile << EOF
export PYENV_ROOT=\$HOME/.pyenv
export PATH=\$PYENV_ROOT/bin:\$PATH
eval "\$(pyenv init -)"
EOF

(cd /tmp && wget https://downloads.sourceforge.net/project/sshpass/sshpass/1.06/sshpass-1.06.tar.gz && tar zxvf sshpass-1.06.tar.gz)
(cd /tmp/sshpass-1.06 && ./configure && make && sudo make install)

source /home/vagrant/.bash_profile && pyenv install 3.6.5 
source /home/vagrant/.bash_profile && pyenv global 3.6.5 
source /home/vagrant/.bash_profile && pip install --upgrade pip
source /home/vagrant/.bash_profile && pip install ansible
