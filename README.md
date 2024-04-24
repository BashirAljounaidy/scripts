# My Bash Scripts

Welcome to my collection of handy bash scripts that have made my life as a developer easier. These scripts are designed to streamline various tasks, automate repetitive actions, and improve productivity. To make the most of these scripts, consider adding their path to your environment variables and installing them in your home folder.
## Project installation Explanations :
install.sh 
```
Start
 |
 | [Check Shell Type]
 |  |
 |  |-> If Zsh
 |  |    |
 |  |    |-> Backup zshrc
 |  |
 |  |-> If Bash
 |  |    |
 |  |    |-> Backup bashrc
 |  |
 |  |-> Unsupported Shell
 |  |    |
 |  |    |-> Display Error and Exit
 |
 | [Make Scripts Executable]
 |  |
 |  |-> For each file in "$HOME/scripts/bin"
 |       |
 |       |-> Make executable
 |
 | [Modify Shell Configuration]
 |  |
 |  |-> Source Shell Configuration
 |  |    |
 |  |    |-> Add bin directory to PATH
 |  |    |    |
 |  |    |    |-> Export PATH
 |  |    |    |
 |  |    |    |-> Source config file
 |
 | [Execute Shell]
 |  |
 |  |-> Launch Shell in Login Mode
 |
End
```


## Getting Started

To start using these scripts, follow these steps:

1. Clone this repository to your local machine.

2. For added convenience, consider installing these scripts in your home folder to access them globally.

```bash
bash ~/scripts/install.sh
```

## How to Use

Please make sure to read the script's comments and documentation to understand its purpose and usage. Feel free to customize these scripts to suit your specific needs.

## Contribution

If you have any useful bash scripts that you would like to share or improve upon the existing ones, feel free to contribute to this repository. Together, we can create a valuable collection of bash scripts to enhance our development experience.

## License

This project is licensed under the [MIT License](LICENSE).

Happy scripting! 🚀
