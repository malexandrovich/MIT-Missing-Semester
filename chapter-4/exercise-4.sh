# Works on Windows, but I didn't find solution for MacOS.
journalctl | grep -e "userspace" | head -n 10 | sed -E 's/^.*= (.*)s\./\1/g' | R --slave -e 'x <- scan(file="stdin", quiet=TRUE); summary(x)'

# trying to use "log show" for mac but didn't got the final rsults as expected:(
