安装SpaceVim
============



## 安装vim8

* 查看版本

```
vim --version
```

* 卸载低版本vim

```
sudo apt remove vim
```

* 安装vim8

```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```

## 安装SpaceVim

* 安装

```
curl -sLf https://spacevim.org/install.sh | bash
```

* 卸载

```
curl -sLf https://spacevim.org/install.sh | bash -s -- --uninstall
```

## 安装字体

* 下载

```
git clone https://github.com/powerline/fonts.git ~/.fonts
sh ~/.fonts/install.sh
```

* 配置

在`terminal->Edit->Preferences->Prefiles`配置，
选择的字体为`Ubuntu Mono derivative Powerline Regular`, 字体大小13












