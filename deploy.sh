mdbook build

# If the gh-pages branch already exists, this will overwrite it
# so that the history is not kept, which can be very expensive.
git worktree add --orphan -B gh-pages gh-pages
cp -r book/ gh-pages
git config user.name "Deploy from CI"
git config user.email ""
cd gh-pages
git add -A
git commit -m 'deploy new book'
git push origin +gh-pages
cd ..