#Python setup

## multiple python version setup

step1:
```
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

```
step2:
```
echo 'export PATH="/home/spdev/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc


# Load pyenv automatically by adding
# the following to ~/.zshrc:

echo 'export PATH="/home/liuziyuan/.pyenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc

```
step3:
open a new terminal,and input `pyenv`, if output is right, then you could leran pyenv by https://github.com/pyenv/pyenv


http://blog.csdn.net/eric_sunah/article/details/56289937

pyenv + virtualenv

```
pyenv install -v 2.7.14
pyenv versions 
pyenv rehash 
pyenv virtualenv 2.7.14 tensorflow-2.7.14
pyenv virtualenvs
cd /your/path
pyenv activate tensorflow-2.7.14

pip list
pip install 'xyz'

pyenv deactivate
```
