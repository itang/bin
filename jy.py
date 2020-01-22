#!/usr/bin/env python

# pylint: disable=C0103
# pylint: disable=C0111

# pip install pytoml
# pip install pyfunctional

import os
import os.path
# import subprocess
import pytoml as toml
from functional import seq


def xdg_open(url):
    os.system('xdg-open {} > /dev/null 2>&1'.format(url))


TOML_FILE = 'jiayou.toml'
toml_file = os.path.join(os.path.dirname(__file__), TOML_FILE)
print('load urls from %s...' % toml_file)

with open(toml_file, 'rb') as f:
    obj = toml.load(f)
    seq(obj['urls']).for_each(xdg_open)
    # for url in obj['urls']:
    #    os.system('xdg-open {}'.format(url))
    # subprocess.call("xdg-open {}".format(url), shell=True)
