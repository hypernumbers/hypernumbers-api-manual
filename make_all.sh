s#!/bin/bash
cd /home/gordon/hypernumbers-api-manual
echo "update the version number"
release=`cat ./_config/_release`
echo "old $release"
major=`echo $release | cut -d. -f1`
minor=`echo $release | cut -d. -f2`
revision=`echo $release | cut -d. -f3`
revision=`expr $revision + 1`
newversion=$major.$minor
newrelease=$major.$minor.$revision
echo "new release $newrelease"
echo "$newrelease" > ./_config/_release
cp ./_config/_conf.py conf.py
now=`date`
echo "version = '$newversion'" >> conf.py
echo "release = '$newrelease'" >> conf.py
echo "Documentation Version" > ./contents/version.rst
echo "=====================" >> ./contents/version.rst
echo "" >> ./contents/version.rst
echo "Version: $newrelease" >> ./contents/version.rst
echo "Generated: $now" >> ./contents/version.rst
echo "making html"
make html
echo "making sitemap"
echo "http://documentation.hypernumbers.org/index.html" > ./_build/html/sitemap.txt
ls -d --full-time ./contents/* ./images/* | ./sitemap.gawk >> ./_build/html/sitemap.xml
echo "copying favicon"
cp favicon.ico ./_build/html
echo "making latex"
make latex
cd ./_build/latex
echo "making pdf"
make all-pdf
cd ../../
echo "uploading pdf"
echo "making epub"
make epub
cd ../epub
ebook-convert HypernumbersAPI.epub Hypernumbers.mobi
cd ../html
cd /home/gordon/hypernumbers-api-manual
echo "over and out..."