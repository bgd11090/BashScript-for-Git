# Bash script for Git

A script that serves us to automate all changes to all repositories of the given path. <br /> There is an option to (if it doesn't exist) create a file called "ignore.txt" in which we can type in the names of the repository we want to skip.

## Getting Started

 Enter the full path to the directory where you have multiple git repository. <br /> 

Example: <br />
  >"C:/RandomDir/DirWithMultipleRepos"

## Potencial prerequisites

If you want to exclude some repository
- You need to create ignore.txt file on the path (for example, "C:/RandomDir/DirWithMultipleRepos/ignore.txt").
  - It is necessary to write the names of the repository in the ignore.txt file. <br />
  - For example if you have 10 repos with names Repo01,Repo02,...,Repo10 <br /> and you want to exclude Repo03 and Repo07 your ignore.txt needs to look like: <br />
  >Repo03<br />
  Repo07<br />
  (and blank line in the end [because of this](https://unix.stackexchange.com/questions/18743/whats-the-point-in-adding-a-new-line-to-the-end-of-a-file)) 

   