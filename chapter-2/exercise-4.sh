touch example.html
echo "<p>Hello World</p>" >> example.html
find . -type f -name "*.html" -print0 | xargs -0  tar -cvzf archive.tar.gz
ls
rm archive.tar.gz
rm example.html
