# vimrc
方便同步多台虚拟机的vimrc配置
## 要求:
 - 操作系统: Debian/Ubuntu
 - vim: >=8.0 with Python 2 or Python 3 support. ([编译安装vim](https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source)不复杂，一劳永逸。)
## 安装
#### 准备工作
```
  sudo apt-get update && sudo apt-get install git ctags -y
```
#### clone
```
  git clone https://github.com/llinvokerl/vimrc.git
```
#### install
```
  cd vimrc/ && sh install.sh
```
## 卸载
```
  cd ~/ && rm -rf .vim .vimrc .vimrc.bundles
```
