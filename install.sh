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

test -f "$HOME/.$myshell"rc && source "$HOME/.$myshell"rc || echo "Could not source $HOME/.$myshell"rc && exit 1

echo "Added the bin directory to the PATH"

# Make all files in the bin directory executable
find "$HOME/Scripts/bin" -type f | while read -r file; do
    chmod +x "$file"
done

echo "All files in the bin directory are now executable"
