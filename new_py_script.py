#!/usr/bin/env python3
import sys
import os

print(sys.argv)
file_name = (sys.argv[1] if len(sys.argv) > 1 else None) or 'main.py'

content = '''#!/usr/bin/env python3
#
# Usage: .py
#

from collections import namedtuple
from dataclasses import make_dataclass
from enum import Enum
from sys import argv
import re


def main():
    print('Hello, World!')


###
##  UTIL
#

def read_file(filename):
    with open(filename, encoding='utf-8') as file:
        return file.readlines()


if __name__ == '__main__':
    main()
'''

if __name__ == "__main__":
    with open(file_name, 'w', encoding='utf-8') as f:
        f.write(content)
    try:
        os.system(f'chmod +x {file_name}')
    except Exception as e:
        print(e)
