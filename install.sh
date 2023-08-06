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
test -f "$HOME/.$myshell"rc && source "$HOME/.$myshell"rc
# edits 
echo 'export PATH="$HOME/Scripts/bin:$PATH"' >> "$HOME/.$myshell"rc
echo source "$HOME/Scripts/config" >> "$HOME/.$myshell"rc

source "$HOME/.$myshell"rc

#check if it is work 
command -v myecho >/dev/null && echo "Scripts installed successfully" || echo "Scripts not found"
#check if it is work
command -v os >/dev/null && echo "Alias installed successfully" || echo "! Alias not installed"

source "$HOME/.$myshell"rc
