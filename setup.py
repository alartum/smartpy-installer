import subprocess

import setuptools

cmd = "bash setup.sh"
subprocess.run(cmd.split(), check=True)

setuptools.setup(
    setup_requires=["pbr"],
    pbr=True,
)
