# vimrc
方便我同步多台虚拟机的vimrc配置
## 要求:
 - 操作系统: Debian/Ubuntu
 - vim版本: >=8.0 with Python 2 or Python 3 support. ([编译安装vim](https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source)不复杂，一劳永逸)
## 安装
#### 准备工作
```
  sudo apt-get update && sudo apt-get install git ctags silversearcher-ag -y
```
#### clone
```
  git clone https://github.com/llinvokerl/vimrc.git
```
#### install
```
  cd vimrc/ && sh install.sh
```
#### 在本地安装字体以适应vim-airline状态栏的符号
```
  git clone https://github.com/powerline/fonts.git && cd fonts && ./install.sh && cd ../ && rm -fr fonts
```
iTerm2->preference->profiles->text->font 选择for Powerline结尾的字体即可
## 卸载
```
  cd ~/ && rm -rf .vim .vimrc .vimrc.bundles
```
