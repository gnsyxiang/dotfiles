#!/bin/bash
# ~/##bootstrap (在仓库中)

echo "Bootstrapping system setup..."

soft_path=~/xia/soft
install_path=/usr/local/bin

# 安装常用软件
if grep -q "Ubuntu" /etc/os-release; then
    version=$(grep 'VERSION_ID' /etc/os-release | cut -d '"' -f 2)
    case "$version" in
        "20.04")
            echo -n -e "\e[32m"
            echo "=================================================="
            echo "Ubuntu 20.04 (Focal Fossa)"
            echo "=================================================="
            echo -n -e "\e[0m"
            ;;
        "22.04")
            echo -n -e "\e[32m"
            echo "=================================================="
            echo "Ubuntu 22.04 (Jammy Jellyfish)"
            echo "=================================================="
            echo -n -e "\e[0m"

            sudo rm -rf \
                ${install_path}/nvim \
                ${install_path}/lazygit

            sudo ln -s ${soft_path}/neovim/nvim-0.11.4/bin/nvim ${install_path}/nvim
            sudo ln -s ${soft_path}/lazygit/lazygit-0.55.0/lazygit ${install_path}/lazygit
            ;;
        *)
            echo "未知版本: $version"
            ;;
    esac

    sudo apt update

    sudo apt install -y tree net-tools tig silversearcher-ag
    sudo apt install -y git vim xclip
    sudo apt install -y autoconf libtool make bear

    rm -rf ~/.config/nvim
    ln -s ~/xia/git/nv_config ~/.config/nvim

    fonts_path=~/.local/share/fonts
    mkdir ${fonts_path}
    cp -ar ${soft_path}/nerd-font/Hack ${fonts_path}
    fc-cache -f

    sudo mkdir /mnt/nfs
    sudo chown uos:uos /mnt/nfs
    rm -rf ~/nfs && ln -s /mnt/nfs ~/nfs
fi

# 运行解密（假设已经配置了 GPG）
yadm decrypt

# 应用交替配置
yadm alt

# 设置 dotfile 外的其他链接

echo "Bootstrap complete!"

