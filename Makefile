all:
	git add .
	git commit -m 'Commiting all changes'
	git push

pushGitConfig: .gitattributes .gitignore 
	git add .
	git commit -m 'Changed git configurations files'
	git push

pushDocker: docker-compose.yml
	git add .
	git commit -m 'Changed docker-compose.yml'
	git push

pushBinary: InitialContentPackage.tar.gz
	rm -r mountPoint
	git add .
	git commit -m 'Updated the database content'
	git push

compress: mountPoint
	tar -czvf InitialContentPackage.tar.gz mountPoint

reset: 
	rm -rf .git
	git init
	git branch -m main
	git add .
	git commit -m 'Reset the history for storge preservation'
	git remote add origin git@github.com:xlp0/XLPWikiMountPoint.git
	git push origin --mirror --force
	git gc --aggressive --prune=all     # remove the old files

clean: 
	rm -r mountPoint
	git init
	git add .
	git commit -m 'Initial commit'
	git remote add origin git@github.com:xlp0/XLPWikiMountPoint.git
	git push --mirror --force