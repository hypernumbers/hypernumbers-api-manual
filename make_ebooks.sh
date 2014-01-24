#!/bin/bash
cd /home/gordon/hypernumbers-api-manual
cp ./_config/_conf.py conf.py
make epub
cd ./_build/epub
ebook-convert HypernumbersAPI.epub HypernumbersAPI.mobi