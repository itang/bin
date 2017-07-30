#!/usr/bin/env python

# pylint: disable=C0103
# pylint: disable=C0111

# pip install pytoml

import os
#import subprocess
import pytoml as toml
from functional import seq
with open('jiayou.toml', 'rb') as fin:
    obj = toml.load(fin)
    seq(obj['urls']).for_each(lambda url: os.system('xdg-open {}'.format(url)))
    # for url in obj['urls']:
    #    os.system('xdg-open {}'.format(url))
    #subprocess.call("xdg-open {}".format(url), shell=True)
