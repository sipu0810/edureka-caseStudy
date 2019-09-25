git init
unzip sample-project.zip
apt install unzip
unzip sample-project.zip
ls
rm sample-project.zip
git status
git add .
git commit -m "CS version control system"
git config --global user.name "shipra swaroop"
git remote add origin https://github.com/sipu0810/edureka-caseStudy.git
git push -u origin master
ls
cd sample-project/
git branch
git checkout -b newFeature
git branch
vim newFeature.html
git add .
git commit -m "branch created with new Feature"
git log
git checkout master
git log --oneline master
git merge newFeature
git log --oneline master
git status
git add .
git commit -m "done"
git push -u origin master
history
