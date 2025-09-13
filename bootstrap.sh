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

            neovim_version=nvim-0.10.4
            lazygit_version=lazygit-0.53.0

            ;;
        "22.04")
            echo -n -e "\e[32m"
            echo "=================================================="
            echo "Ubuntu 22.04 (Jammy Jellyfish)"
            echo "=================================================="
            echo -n -e "\e[0m"

            neovim_version=nvim-0.11.4
            lazygit_version=lazygit-0.55.0

            ;;
        *)
            echo "未知版本: $version"
            ;;
    esac

    apps=(
        "nvim:${soft_path}/neovim:${neovim_version}"
        "lazygit:${soft_path}/lazygit:${lazygit_version}"
    )

    for app_info in "${apps[@]}"; do
        IFS=':' read -r _app_name _app_path _version <<< "$app_info"

        if [ ! -d "${_app_path}/${_version}" ]; then
            tar xjf "${_app_path}/${_version}.tar.bz2" -C "${_app_path}"
        fi

        sudo rm -rf "${install_path}/${_app_name}"
        sudo ln -s "${_app_path}/${_version}/bin/${_app_name}" "${install_path}/${_app_name}"
    done

    sudo apt update

    sudo apt install -y tree curl net-tools tig silversearcher-ag openssh-server open-vm-tools open-vm-tools-desktop samba
    sudo apt install -y git yadm vim xclip
    sudo apt install -y autoconf libtool make bear

    sudo systemctl enable --now ssh
    sudo ufw allow ssh

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

