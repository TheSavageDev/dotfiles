# dotfiles

My dotfiles and instructions on how to install Hyper and oh-my-zsh.

- [dotfiles](#dotfiles)
  - [Install zsh](#install-zsh)
  - [Install oh-my-zsh](#install-oh-my-zsh)
  - [Change your dot files.](#change-your-dot-files)
  - [Hyper Terminal](#hyper-terminal)
    - [Mac](#mac)
    - [Windows](#windows)

**Note** These are for MacOS. For Windows...good luck. You can do this with PowerShell, if you aren't using PowerShell...you're missing out. Instructions for creating a profile.ps1 are at the bottom.

## Install zsh

I really like zsh and Mac is actually going to default to zsh in the future. So, hop on the bandwagon now!

1. Try zsh --version. If it is > 4.3.9 then you're good, probably. But there are newer versions.
1. If you have Homebrew installed run `brew install zsh zsh-completions`
1. If you don't have homebrew run `port install zsh zsh-completions`
1. Make it your default `chsh -s $(which zsh)`
1. Close terminal program and reopen.
1. `echo $SHELL` if it says `/bin/bash` reboot your machine. Try again. Should say `/bin/zsh`

## Install oh-my-zsh

oh-my-zsh makes zsh even better and more customizable.

[GitHub Repo | https://github.com/robbyrussell/oh-my-zsh]

1. Install via curl `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
1. That's it

## Change your dot files.

1. Open up your terminal and `cd ~` if not already there.
1. If you are using bash you can use `.bash_profile` or `.bashrc` to add your aliases and functions.
1. If you installed zsh you use `.zshrc` to add aliases and functions.
1. Some of my dot files are specific to the themes I am using. You may not want or need them. Don't take what I am using wholesale. I have a few aliases that are project/website specific that you can remove or change. For example if I type `GitHub` and press enter it will take my to my GitHub Profile. You probably want to change that at the very least.

## Hyper Terminal

I use Hyper terminal for my terminal application. It runs on Electron so it is fast and very customizable.

### Mac

```sh
brew update
brew cask install hyper
```

### Windows

```choco install hyper``` Note: You'll have to have choco installed. I've never installed it so review before using.

### profile.ps1

To create a profile that runs every time PowerShell is opened do the following:

```ps
cd $env:USERPROFILE\Documents
md WindowsPowerShell -ErrorAction SilentlyContinue
cd WindowsPowerShell
New-Item Microsoft.PowerShell_profile.ps1 -ItemType "file" -ErrorAction SilentlyContinue
powershell_ise.exe .\Microsoft.PowerShell_profile.ps1
```

**Note**: I haven't tested this on newer versions of PS. So some things might need to be changed.

In profile.ps1:

```ps
function Your-Function {
  # The logic
}

Set-Alias YourAlias Your-Function
```

Then refresh your session with `. $profile`

I hope this still works~
