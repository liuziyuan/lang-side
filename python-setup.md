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
```
step3:
open a new terminal,and input `pyenv`, if output is right, then you could leran pyenv by https://github.com/pyenv/pyenv

