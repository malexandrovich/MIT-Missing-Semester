cd missing-semester
author=$(git log -s -n1 --pretty='format:%an %ae%n' README.md)
echo "Answer for exercise 1"
echo "Author of the last change in README.md file : $author"
echo "Answer for exercise 2"
sha=$(git blame _config.yml | grep "collections:" | awk '{print $1;}')
answer2=$(git show -s --format=%B $sha)
echo "The commit message associated with the last modification to the collections: line of the _config.yml : $answer2"
