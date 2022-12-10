DATE_VAR="Fri 9 Dec 2022 20:19:19 BST"

#NAME="Zara Ali"
#echo $NAME

git add .
git commit -m "test2"
GIT_COMMITTER_DATE=$DATE_VAR git commit --amend --no-edit --date $DATE_VAR
git push