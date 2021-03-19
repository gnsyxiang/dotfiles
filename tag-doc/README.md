rcm使用
=======

参考：https://www.jianshu.com/p/e21089d118c1

## 安装

```
mac
brew tap thoughtbot/formulae
brew install rcm
```

```
ubuntu
sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
sudo apt-get update
sudo apt-get install rcm
```

## mkrc

* 基本使用

```
mkrc -v .gitconfig
```

> note: 把家目录下的`.gitconfig`移动到`~/dotfiles/gitconfig`，同时建立软链接文件
> 管理的文件可以是目录，在`dotfiles`目录与原目录一致

* 高级用法

```
mkrc -v -t ubuntu .gitconfig
```

> note: 按照tag来管理配置文件，会生成`tag-ubuntu`目录

## rcup

* 基本使用

```
rcup -v
```

> note: 把`mkrc`没有带参数的保存的文件全部恢复

* 高级用法

```
rcup -t test
```

> note: 把`tag-test`目录下的配置文件恢复

