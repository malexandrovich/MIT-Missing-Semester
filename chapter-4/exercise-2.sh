# shellcheck disable=SC2002

echo "1st question:"
cat /usr/share/dict/words | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -v "\'s$" | wc -l
echo "-------"

echo "2st question:"
cat /usr/share/dict/words | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -v "\'s$" | sed -E "s/.*([a-z]{2})$/\1/" | sort | uniq -c | sort -n | tail -n3
echo "-------"

echo "3st question:"
cat /usr/share/dict/words | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -v "\'s$" | sed -E "s/.*([a-z]{2})$/\1/" | sort | uniq | wc -l

echo "4th question:"
cat /usr/share/dict/words | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -v "\'s$" | sed -E "s/.*([a-z]{2})$/\1/" | sort | uniq > last_letters
source exercise-3.sh > all_letters
diff --changed-group-format="%<" --unchanged-group-format="" all_letters last_letters
