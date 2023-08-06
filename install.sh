#!/usr/bin/env bash
# Or #!/usr/bin/env zsh

if [[ $SHELL == *"/zsh" ]]; then
    myshell="zsh"
elif [[ $SHELL == *"/bash" ]]; then
    myshell="bash"
else
    echo "Unsupported shell: $SHELL"
    exit 1
fi

# Add the bin directory to the PATH
echo 'export PATH="$HOME/Scripts/bin:$PATH"' >> "$HOME/.$myshell"rc

exec myshell

test $PATH == "echo $HOME/Scripts/bin:$PATH" && echo "Successfully added the bin directory to the PATH" || echo "Failed to add the bin directory to the PATH"


# Make all files in the bin directory executable
find "/home/$(whoami)/Scripts/bin" -type f | while read -r file; do
    chmod +x "$file"
done

echo "All files in the bin directory are now executable"
