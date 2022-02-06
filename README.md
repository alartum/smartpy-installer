# smartpy-installer
Wrapper around the [SmartPy](https://smartpy.io/) install scripts.
## Environment

1. Basic **conda** setup:
   1. download [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
     ```bash
     $ wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
     ```
   2. install it
     ```bash
     $ bash Miniconda3-latest-Linux-x86_64.sh
     ```
   3. reload your terminal, so that `base` environment is activated
   4. install essential packages
     ```bash
     $ conda install -c conda-forge "mamba>0.18"
     ```

2. Create conda environment (**double-check** that name in `environment.yaml` coincides with the one in the commands below!); using `update` as proposed [here](https://github.com/mamba-org/mamba/issues/633#issuecomment-812272143):
   ```bash
   $ conda create -n nodejs-env
   $ mamba env update -n nodejs-env --file environment.yaml
   ```
3. Activate it:
   ```bash
   $ conda activate
   ```

## Development

### Environment
1. Install [`pre-commit`](https://pre-commit.com/#3-install-the-git-hook-scripts) (config provided in this repo)
   ```bash
   $ pre-commit install
   ```
2. (optional) Run against all the files to check the consistency
   ```bash
   $ pre-commit run --all-files
   ```
3. You may also run [`black`](https://github.com/psf/black) and [`isort`](https://github.com/PyCQA/isort) to keep the files style-compliant
   ```bash
   $ isort .; black .
   ```
4. Proposed linter is [`flake8`](https://flake8.pycqa.org/en/latest/)
   ```bash
   $ flake8 .
   ```

### Installation (editable mode)
```bash
python -m pip install -e .
```

### Deinstallation
```bash
python -m pip uninstall smartpy-installer
```
