# R studio
Open it!

## Console, prompt, command
In the console window, there is a `>`, called prompt, you can type something after the prompt (or copy-paste), the text you typed is called **command**:

For example, type :
 
	1 + 1

This is an example of **Arithmetic operation** (calculations).
In the console you can also do [**Logical operation**](logical_operation.md):

	1 > 0

### Calling functions
At the console, you can also call a function:

   	ls()

Here, `ls` is a function that **returns** the list of things in your **environment** (see the later section).

More about using functions [here](Functions_use.md). 

### Variables 
Another thing you can do is declare or assign value to a variable.

#### Declare a variable
("Declare" means "create, specify, define, name" a variable...)

In R, you usually declare a variable, and give it a **value** at the same time, using `<-` ("smaller than" and "minus"):

	X <- 1

With this **command** you declare a variable `X`, and give `X` a value 1.

Type the vairable name to see the values.

	X

You can save whatever is returned (the result) in a new or existing variable.

	X <- 1+1

Note that with the above command you change (update) the value of `X`. Type `X` to check the new value of variable `X`.

### Previous command
Use **up** and **down** keys to toggle through your previous commands. 

## Environment (workspace)
Now, R memorized your variable X and its value. X will appear on the **environment** window. You can also use function `ls()` to see what is in your environment. 

## Scripts (.R files)
Besides typing your commands, you can also copy-paste the commands... 

**Scripts** refer to the command texts, usually saved in .R files.

You can create a new .R file by clicking the icon, or [open one existing .R file](https://github.com/weitingwlin/r-primers/blob/master/Documents/Working_with_scripts.md#open-a-r-file). (Don't know where to start? [Downlowd this file](https://github.com/weitingwlin/r-primers/blob/master/R_files/script_ex_sequence.R) and open in R studio.) 

### Learn more about [working with scripts and .R files](Working_with_scripts.md)

## Everthing else (help, figure, package...)

**Help** is where you can check [how to use a function](Functions_use.md).

**Figure** is where you see your plots.

**Packages** is where you see your installed and loaded [packages](Packages.md).