# XLPWikiMountPoint
A repository for gzipped directory content XLPWiki's mountPoint directory.

The purpose of setting up this repository is to create a version-controlled mountPoint information content in an independent git repository.

This separation is to accomplish two things:
1. reduce the size of history trail of other repositories that might include the gzipped content.
2. Allow proper annotation a content editorial framework for the information content contained in this mountPoint.

The following method was offered by [heshanlk] in https://gist.github.com/stephenhardy/5470814

```
git init
git add .
git commit -m 'Initial commit'
git remote add origin [repo_address]
git push --mirror --force
```


[heshanlk]:https://gist.github.com/heshanlk
