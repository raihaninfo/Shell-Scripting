# Script header
In our scripting endeavors, we always include a header at the beginning of the script. While
this is not necessary for the functioning of the script, it can help greatly when other people
are working with your scripts (or, again, when you're working with other people's scripts).
A header can include any information you think is needed, but in general we always start
with the following fields:
- Author
- Version
- Date
- Description
- Usage

## Example 
```
#!/bin/bash
#####################################
# Author: Raihan
# Version: v1.0.0
# Date: 20/10/2021
# Description: Our first script!
# Usage: ./hello-world.sh
#####################################

# Print the text to the Terminal.
echo "Hello World!"
```

## Hello World

You are probably wondering about that first line. The second (or third, if you count the
empty line) should be clear, but that first one is new. It is called the `shebang`, but is
sometimes also referred to as a `sha-bang`, `hashbang`, `pound-bang`, and/or `hash-pling`. Its function is pretty simple: it tells the system which binary to use to execute the script. It is always in the format of `#!<binary path>` . For our purposes, we will always use the `#!/bin/bash` shebang,


```
#!/bin/bash

echo "Hello World!"
```
