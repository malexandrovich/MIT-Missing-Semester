history 1 | awk '{$1="";print substr($0,2)}' | sort | uniq -c | sort -n | tail -n 10 > log.txt

cat log.txt

rm log.txt

# the first command in my list was "git branch"
# so I will create an alias for it

alias gb="git branch"

