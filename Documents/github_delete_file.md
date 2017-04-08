## How to hide deleted file (from the surface) in github

   After deleting the file

### 1. Create a branch, commit the change

Say the branch name is `branch2`.

`git checkout -b branch2`

`git add -A*`

`git commit "test delete another file"`

### 2. Push to the branch

`git push origin branch2`

### 3. Merge the branch to the `master` branch

The general reference for how to: [Merging an upstream repository into your fork](https://help.github.com/articles/merging-an-upstream-repository-into-your-fork/)

##### 3.1 Switch to `master`

`git checkout master`

##### 3.2 Merge the branch 

Say **https://github.com/weitingwlin/r-primers** is the URL of your depository

`git pull https://github.com/weitingwlin/r-primers.git branch2`

### 4. Push the new master branch

`push origin master` 

## 
Now the deleted file will not shown in the repository, but you can still retrieve them in the **history**. 