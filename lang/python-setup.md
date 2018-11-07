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

https://github.com/pyenv/pyenv/wiki/Common-build-problems, for fix python compile issue

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


vscode env setting
```
{
    "python.linting.mypyPath": "/home/liuziyuan/.pyenv/versions/2.7.14/envs/test-2.7.14/lib/python2.7/site-packages",
    "python.pythonPath": "/home/liuziyuan/.pyenv/versions/2.7.14/envs/test-2.7.14"
}
```
note: 
python path: `/home/liuziyuan/.pyenv/versions/2.7.14`
python virtualenv path: `/home/liuziyuan/.pyenv/versions/2.7.14/envs/test-2.7.14`
we need to use the virtualenv path

step3:
python will not support python2, so we will use python venv to replace virtualenv.
```
   1. open project forlder
   2. command: python -m venv .
   3. source bin/activate
```
then , venv will be activate.

https://code.visualstudio.com/docs/python/python-tutorial, this is python turorial at vs code 
