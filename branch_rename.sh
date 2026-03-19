# NOTE: the name you will give the branch must already be changed in your version control of choice (GitHub, GitLab, etc.)

# How to run this: 
# 	chmod +x ./branch_rename.sh
#	./branch_rename.sh <BRACNH_NAME>
git branch -m "$1" "$1" 
git fetch origin
git branch -u origin/"$1" "$1"
git remote set-head origin -a
