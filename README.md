# ENEL373-Group20

///ALU Project///

Currently a full 8 bit adder can be simulated through the fullAdder project
The projects are currently built to run on 16.3, so to convert to 16.2 you 
will need to save them as a new project by following the popups from the 
Vivado Software.

To use components, import them into the project, DO NOT COPY THEM IN, we will
want the components to all be in the same place, as it allows for easier testing
and makes for a cleaner workspace. The same follows for components.
The projects for each component can be found in the Vivado Projects directory,
this is where you will probably need to check error logs.

If you haven't downloaded git, download the cmd line version for windows here 
https://git-scm.com/download/win

to first get the code run the command in the directory you want it to exist
git clone https://eng-git.canterbury.ac.nz/osp15/ENEL373-Group20.git 


To update your local code to the same as gits use the command line
git pull
in your cmd in the git base i.e ENEL373-Group20 directory
to put things onto the git, use the commands
git add -A --this adds all of the changed or new files into the git path
git commit -m "<your message here>" -- this commits your git path to your local git storage, make sure to use a meaningful message
git push -- this pushes your git path to the gitlab

Hopefully we wont have to deal with merges and stashing with git.
