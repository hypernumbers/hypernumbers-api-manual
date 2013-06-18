#!/bin/bash
cd /home/gordon/vixo-api-manual
cp ./_config/_conf.py conf.py
make epub
cd ./_build/epub
ebook-convert WordPressAndVixo.epub WordPressAndVixo.mobi