#!/bin/bash
# ~/##bootstrap (在仓库中)

echo "Bootstrapping system setup..."

soft_path=~/xia/soft
install_path=/usr/local/bin

# 安装常用软件
    sudo apt update

    sudo apt install -y git tig yadm

    sudo apt install -y tree curl net-tools
    sudo apt install -y openssh-server open-vm-tools open-vm-tools-desktop

    fonts_path=~/.local/share/fonts
    mkdir ${fonts_path}
    cp -ar ${soft_path}/fonts/nerd-font/Hack ${fonts_path}
    fc-cache -f

    sudo mkdir /mnt/nfs
    sudo chown uos:uos /mnt/nfs
    rm -rf ~/nfs && ln -s /mnt/nfs ~/nfs

# 运行解密（假设已经配置了 GPG）
#yadm decrypt

# 应用交替配置
#yadm alt

# 设置 dotfile 外的其他链接

echo "Bootstrap complete!"

