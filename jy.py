#!/usr/bin/env python

# pylint: disable=C0103
# pylint: disable=C0111

# pip install pytoml

import os
import os.path
#import subprocess
import pytoml as toml
from functional import seq
toml_file = os.path.join(os.path.dirname(__file__), 'jiayou.toml')
print "load urls from {}...".format(toml_file)
with open(toml_file, 'rb') as fin:
    obj = toml.load(fin)
    seq(obj['urls']).for_each(lambda url: os.system('xdg-open {}'.format(url)))
    # for url in obj['urls']:
    #    os.system('xdg-open {}'.format(url))
    #subprocess.call("xdg-open {}".format(url), shell=True)
