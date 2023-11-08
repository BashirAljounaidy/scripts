#!/usr/bin/env bash
# Or #!/usr/bin/env zsh

if [[ $SHELL == *"/zsh" ]]; then
    myshell="zsh"
    cp ~/.zshrc ~/.copy_backup_zshrc

elif [[ $SHELL == *"/bash" ]]; then
    myshell="bash"
    cp ~/.bashrc ~/.copy_backup_bash

else
    echo "Unsupported shell: $SHELL"
    exit 1
fi


# Make all files in the bin directory executable
find "$HOME/scripts/bin" -type f | while read -r file; do
    chmod +x "$file"
done

# Add the bin directory to the PATH
source "$HOME/.$myshell"rc
# edits 
echo 'export PATH="$HOME/scripts/bin:$PATH"' >> "$HOME/.$myshell"rc
echo source "$HOME/scripts/config" >> "$HOME/.$myshell"rc

exec "$myshell" -l