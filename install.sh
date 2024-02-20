#!/bin/bash
echo Git/wget is required for this installation, it should be installed with your package manager.
echo 3.
sleep 1
echo 2..
sleep 1
echo 1...
sleep 1
#!/bin/bash

# Check which Linux distribution is being used
if [ -f /etc/os-release ]; then
    . /etc/os-release
    case "$ID_LIKE" in
        arch)
            # Arch Linux
            sudo pacman -S git wget
            ;;
        debian)
            # Debian-based distributions
            sudo apt-get update
            sudo apt-get install git wget
            ;;
        fedora)
            # Fedora
            sudo dnf install git wget
            ;;
        rhel)
            # Red Hat Enterprise Linux and CentOS
            sudo yum install git wget
            ;;
        suse)
            # OpenSUSE
            sudo zypper install git wget
            ;;
        alpine)
            # Alpine Linux
            sudo apk add git wget
            ;;
        gentoo)
            # Gentoo
            sudo emerge dev-vcs/git wget
            ;;
        slackware)
            # Slackware
            sudo pkgtool install git wget
            ;;
        *)
            if command -v nix-env &> /dev/null; then
                # Nix
                sudo nix-env -i git wget
            else
                echo "Unsupported distribution: $ID, ($ID_LIKE)"
                sleep 600
            fi
            ;;
    esac
else
    echo "Unknown distribution"
    sleep 600
fi


mkdir ~/.config
cd ~/.config
git clone https://www.github.com/koplayz/dotfiles
cd dotfiles
cp -r * ~/.config
echo Saving if existing old zshrc
sleep 1
mv ~/.zshrc ~/.zshrc.bak
mv ~/.config/zshrc ~/.zshrc
rm -rf ~/.config/dotfiles
rm  ~/.config/clean.png
rm  ~/.config/cleanlauncher.png
rm  ~/.config/copy.sh
rm  ~/.config/install.sh
rm  ~/.config/lastedited.txt
rm  ~/.config/README.md
rm  ~/.config/apps.png
rm  ~/.config/wallpaper.png

cd ~/.oh-my-zsh/themes
wget https://raw.githubusercontent.com/KoPlayz/omz-themes/main/koplayz.zsh-theme
echo " "
echo " "
echo Finished. Copied koplayz/dotfiles TO ~/.config.
echo Program configs copied are:
echo hypr, kitty, neofetch, swaylock, waybar, wofi, oh-my-zsh.
echo You may need to install oh-my-zsh.
echo You can install the ones you want to use.