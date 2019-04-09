# !/bin/bash

# Init python env with pyenv and virtual-env
# 1. Switch to python3
echo "1. switch to python3..."
pyenv local 3.7.0 && python -V 

# 2. Make an independent virtualenv named py3dev
echo "2. make an independent virtualenv named py3dev..."
pip install virtualenv && virtualenv py3dev

# 3. Active virtualenv
echo "3. Active virtualenv..."
source py3dev/bin/activate

# 4. Install python packages
echo "4. Install python packages..."
pip install -r requirement.txt

echo "Finish!"