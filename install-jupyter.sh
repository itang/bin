#!/bin/bash

pip install jupyter

curl -sSL https://raw.githubusercontent.com/alexarchambault/jupyter-scala/master/jupyter-scala | bash

echo 'tip: 

$ jupyter console --kernel scala

$ jupyter notebook
'
