## git and github 

* clone：copy with history
* remote
* branching model
 + try not deleting a branch
 + usually when you are a part of the group
* Fork: like branching but create a new repository
 + open source projects
 + Pull request
 
* staging: `git add`
 + saying: "yes, this is something I want to save"
 + should add new files
* commit: 
 + **2 in 1 step**: `git commit -a -m "message"`
     + only commit already tracked files
* push 

* create branch 

## How to: synch with the original repository

		$  remote add upstream XXX/old_fork.git
		
(only have to do this once, check yo have the up `remote -v` to see)


		$  fetch upstream
		$  merge upstream master
		$  add -A *
		$  commit -m "merge branch"
		$  push origin master

