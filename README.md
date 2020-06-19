

## Build container

```bash
docker build -f Dockerfile -t sample-exp .
```

## Run

```bash
docker run -it --rm sample-exp:latest
```

error:

```bash
$ docker run -it --rm sample-exp:latest     
Traceback (most recent call last):
  File "/usr/local/lib/python3.7/site-packages/git/__init__.py", line 83, in <module>
    refresh()
  File "/usr/local/lib/python3.7/site-packages/git/__init__.py", line 73, in refresh
    if not Git.refresh(path=path):
  File "/usr/local/lib/python3.7/site-packages/git/cmd.py", line 278, in refresh
    raise ImportError(err)
ImportError: Bad git executable.
The git executable must be specified in one of the following ways:
    - be included in your $PATH
    - be set via $GIT_PYTHON_GIT_EXECUTABLE
    - explicitly set via git.refresh()

All git commands will error until this is rectified.

This initial warning can be silenced or aggravated in the future by setting the
$GIT_PYTHON_REFRESH environment variable. Use one of the following values:
    - quiet|q|silence|s|none|n|0: for no warning or exception
    - warn|w|warning|1: for a printed warning
    - error|e|raise|r|2: for a raised exception

Example:
    export GIT_PYTHON_REFRESH=quiet


During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/local/bin/catalyst-dl", line 5, in <module>
    from catalyst.dl.__main__ import main
  File "/usr/local/lib/python3.7/site-packages/catalyst/dl/__init__.py", line 4, in <module>
    from catalyst.core import *
  File "/usr/local/lib/python3.7/site-packages/catalyst/core/__init__.py", line 10, in <module>
    from .state import State
  File "/usr/local/lib/python3.7/site-packages/catalyst/core/state.py", line 8, in <module>
    from catalyst.core import utils
  File "/usr/local/lib/python3.7/site-packages/catalyst/core/utils/__init__.py", line 4, in <module>
    from catalyst.utils import *
  File "/usr/local/lib/python3.7/site-packages/catalyst/utils/__init__.py", line 67, in <module>
    from .pipelines import clone_pipeline
  File "/usr/local/lib/python3.7/site-packages/catalyst/utils/pipelines.py", line 4, in <module>
    from git import Repo as repo
  File "/usr/local/lib/python3.7/site-packages/git/__init__.py", line 85, in <module>
    raise ImportError('Failed to initialize: {0}'.format(exc))
ImportError: Failed to initialize: Bad git executable.
The git executable must be specified in one of the following ways:
    - be included in your $PATH
    - be set via $GIT_PYTHON_GIT_EXECUTABLE
    - explicitly set via git.refresh()

All git commands will error until this is rectified.

This initial warning can be silenced or aggravated in the future by setting the
$GIT_PYTHON_REFRESH environment variable. Use one of the following values:
    - quiet|q|silence|s|none|n|0: for no warning or exception
    - warn|w|warning|1: for a printed warning
    - error|e|raise|r|2: for a raised exception

Example:
    export GIT_PYTHON_REFRESH=quiet

```