

```
#!/bin/bash

# Run a command that should always work:
mktemp
TEMP=$?
# Run a command that should always fail:
mkdir /home/
DIR=$?
echo "mktemp returned ${TEMP}, while mkdir returned ${DIR}!"

```

we would create a temporary directory with a random
name. Because the random name is sufficiently long and we should always have write permissions in /tmp/ , we would expect the `mktemp` command to almost always succeed and thus return an exit status of 0. We save the return code to the `TEMP` variable by
running the variable assignment directly after the command.
<hr>
Next, we run a command which we expect to always fail: mkdir /home/ . The reason we
expect this to fail is because on our system (and on pretty much every Linux system), the `/home/ ` directory already exists. In this case, it cannot be created again, which is why the command fails with an exit status of 1. Again, directly after the `mkdir` command, we save the exit status into the `DIR` variable.
<hr>

## if-then-exit

our goal is to print the contents of a file using `cat` command. However, before we do that, we check if the file exists, and if it doesn't, we exit the script with a message to the caller that specifies what went wrong:

```
#!/bin/bash

FILE=/tmp/random_file.txt
# Check if the file exists.
if [[ ! -f ${FILE} ]]; then
echo "File does not exist, stopping the script!"
exit 1
fi

# Print the file content.
cat ${FILE}
```

## if-then-else

```
#!/bin/bash

FILE=/tmp/random_file.txt

# Check if the file exists.
if [[ ! -f ${FILE} ]]; then
echo "File does not exist, stopping the script!"
exit 1
else
cat ${FILE} # Print the file content.
fi
```
