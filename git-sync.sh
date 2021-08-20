git remote add upstream https://git.openembedded.org/meta-openembedded
git fetch upstream
git checkout master
if [ $? -eq 0 ]; then
    git rebase upstream/master
    if [ $? -eq 0 ]; then
        git push -f
    fi
fi
