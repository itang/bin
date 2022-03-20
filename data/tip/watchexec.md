# watchexec

## Usage

    Watch all JavaScript, CSS and HTML files in the current directory and all subdirectories for changes, running npm run build when a change is detected
    $ watchexec -e js,css,html npm run build

    Call/restart python server.py when any Python file in the current directory (and all subdirectories) changes:
    $ watchexec -r -e py -- python server.py
