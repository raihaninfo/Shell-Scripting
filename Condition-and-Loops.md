# A recap on if-then-else

`If-then-else` logic does almost exactly what the name implies: if something-is-the-case,
then do-something or else do-something-else. In practice, this could be if the disk is full, then
delete some files or else report that the disk space looks great. In a script, this could look
something like this:

```
#!/bin/bash

file_name=$1

if [[ -f ${file_name} ]]; then
    cat ${file_name} # Print the file content.
else
    echo "File does not exist, stopping the script!"
    exit 1
fi
```

