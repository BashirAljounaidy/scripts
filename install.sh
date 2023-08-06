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


# Make all files in the bin directory executable
find "$HOME/Scripts/bin" -type f | while read -r file; do
    chmod +x "$file"
done

# Add the bin directory to the PATH
test -f "$HOME/.$myshell"rc && source "$HOME/.$myshell"rc && echo '."$myshell"rc founded ' ||  touch "$HOME/.$myshell"rc && echo '."$myshell"rc created ' || echo '."$myshell"rc not created ' && exit 1
# edits 
echo 'export PATH="$HOME/Scripts/bin:$PATH"' >> "$HOME/.$myshell"rc
echo 'source "~/$HOME/Scripts/extend/*"' >> "$HOME/.$myshell"rc

exec $myshell

#check if it is work 
command -v myecho >/dev/null && echo "os" || echo "os not found"
#check if it is work
command -v os >/dev/null && echo "os" || echo "os not found"
