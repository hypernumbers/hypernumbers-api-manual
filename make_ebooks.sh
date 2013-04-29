#!/bin/bash
cd /home/gordon/manual
cp ./_config/_conf.py conf.py
make epub
cd ../epub
ebook-convert BuildingApplicationsWithVixo.epub BuildingApplicationsWithVixo.mobi
echo "over and out..."