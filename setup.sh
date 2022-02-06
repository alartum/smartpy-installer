#!/bin/bash

echo --yes --prefix smartpy | xargs bash <(curl -s https://smartpy.io/cli/install.sh)
printf "from .smartpy import *\n" > smartpy/__init__.py
# Patch modules
sed -i "s/from browser import/from .browser import/" smartpy/smartpy.py
sed -i "s/import smartpyio/from . import smartpyio/" smartpy/smartpy.py
sed -i "s/import sys, traceback, json, browser, smartpyio/import sys, traceback, json\nfrom . import browser, smartpyio/" smartpy/smartpyc.py
sed -i "s/from browser import alert, window/from .browser import alert, window/" smartpy/smartpyio.py
