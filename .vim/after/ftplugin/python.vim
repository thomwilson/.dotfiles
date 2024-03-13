setlocal colorcolumn=119
setlocal shiftwidth=4 tabstop=4 autoindent
let g:ale_linters = {'python': ['ruff', 'pyright']}
let g:ale_fixers = {'python': ['ruff', 'ruff_format']}
let g:ale_python_ruff_executable = "/home/thom/python/venv/bin/ruff"
let g:ale_python_ruff_format_options = "--config /home/thom/Repos/FourJaw/ruff.toml"
let g:ale_python_ruff_options = "--config /home/thom/Repos/FourJaw/ruff.toml"
let g:ale_python_pyright_executable = "/home/thom/python/venv/bin/pyright-langserver"
let g:ale_python_pyright_config = {
\ 'python': {
\   'pythonPath': "/home/thom/python/venv/bin/python",
\   'analysis': {
\     'typeCheckingMode': 'off',
\     'extraPaths': [
\        '/home/thom/Repos/Repo/CoreLibrary',
\        '/home/thom/Repos/Repo/WebApp',
\     ],
\   }
\ }
\}
