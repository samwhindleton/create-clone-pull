# Create/Clone, and Pull Shell Scripts

## Create directories, clone repos, and git pull for multiple students with bash scripts

* Works on Linux, Mac, & Windows(with Git Bash)

* Refer to my [Windows Batch File Guide](https://github.com/samwhindleton/make-files-script#windows-guide) to create a Windows batch file.

### Create & Clone

**Script**: [create-students-dirs-and-clone-repos.bash](https://github.com/samwhindleton/create-clone-pull/blob/master/create-students-dirs-and-clone-repos.bash)

* Creates directories for all students from the `students` array.

* Clones student repo into their directory

### Git Pull

**Script**: [git-pull-all-students-repos.bash](git-pull-all-students-repos.bash)

* `git pull origin master` from all student repos.

### Download

To download, run the following from your terminal:

```
$ git clone https://github.com/samwhindleton/create-clone-pull.git
```

### Use

Open files in a plain text editor, nano, vim, whatever float your boat. And edit the variables to required values.

In order to run the scripts we need to change its file permission to read, write, execute. Read more about Permissions [here](https://www.linux.com/learn/understanding-linux-file-permissions).

Run the following from your terminal:

```
$ chmod 700 create-students-dirs-and-clone-repos.bash && git-pull-all-students-repos.bash
```

Run the scripts by running the following from your terminal:

```
$ ./create-students-dirs-and-clone-repos.bash

$ ./git-pull-all-students-repos.bash
```

<span style="color:magenta;"><i>Note:</i></span> Creation time will vary and depend on number of students, repo size, internet speed, etc.

<span style="color:red;"><b>Optional/Recommended</b></span>

Revert the `create-students-dirs-and-clone-repos.bash` file permission to its default value of read, write by running the following from your terminal.

```
$ chmod 644 create-students-dirs-and-clone-repos.bash
```
