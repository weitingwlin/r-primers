# Working with scripts and .R files



## Open a .R file
(Besides clicking File--> Open File ...)
 
Open a file using command line (Make sure the file is in your [working directory](https://github.com/weitingwlin/r-primers/blob/master/Documents/Set_up_working.md#elements-in--set_pathr)):
		
  		file.edit("script_ex_sequence.R")
  		

This command [calls a function](Functions_use.md), and the function `file.edit` open the file with the name **set_path.R** for you.

## Run scripts
(Besides Copy-Pasting script to console...)

With a .R file open, you can highlight the scripts you want to run now, and either 

1. hit the **Run** bottun 
2. Ctrl+Enter 

### Run scripts in .R files
If you want to run all the script in a .R file, you can

1. open the file and hit the **Source** bottun 
2. even without the file open, type `source('FILENAME.R')`

  example:
  		
		source("script_ex_sequence.R")

## Comments (un-comment)
Adding a `#` in front makes everything follows **comments**. Comments are for human to read, will not be executed.

Use comments to add note, create sections, and with proper indention, make your code "readable".

#### Another useage of comments
When writing/testing a code or function, use `#` to temporarly disable a line of code, and you can easily enable the line by removing the `#`.

Or, adding the "testing scripts" after `#`, just highlite it and run when needed. (for example see the last line in **set_path.R** ([GitHub link](https://github.com/weitingwlin/r-primers/blob/master/R_files/set_path.R)))


## Mark down (.md or .Rmd)

Markdown is a text-to-HTML tool, certain software (and GitHub) translate your text (saved as .md files) into HTML. Write your documents (like ReadMe file or THIS file) in markdown style, it will be easier to read on GitHub. 

I use [MarkdownPad](http://markdownpad.com/) to edit my markdown files.

 
##### R markdown 
R markdown is a similar text-to-HTML tool. But I have not digged in.   