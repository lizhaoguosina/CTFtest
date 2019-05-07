# 2019.04.28CTF的docker
这是使用了DVWA加wordpress3.0的靶场系统
## 框架
ubuntu+lnmp作为基础框架

php为5.2.07

mysql为5.1.73

使用nginx为代理服务器

数据库为root/Xxb@2019

需要在screen里面运行

## 强烈建议
### 不可缺少步骤
确保拥有list.all.txt中所列举的所有文件。由于GitHub文件大小限制，项目中可能缺少一些必须文件，可在使用前运行get.sh进行所需文件的补充，

### 可选部分

docker安装可以使用installdocker.sh进行安装

文件需要在ubuntu16.04+以上运行。安装完docker之后在/etc/docker/daemon.json中加入以下内容：

{
  "registry-mirrors": ["https://docker.mirrors.ustc.edu.cn/"]
}

之后重启docker服务

sudo systemctl restart docker

### 安装过程

进入git项目文件夹之后， 运行docker build . （.不可省略）

在docker依据Dockerfile文件build结束后会出现12位16进制字符串，可使用 docker tag <字符串> <自定义名称>将其重命名

### 运行docker

重命名结束后，使用 docker run -i -t -p <外部端口>:<内部端口> <自定义名称> 命令运行docker。

欲停止运行此docker，在命令行界面随意输入字符即可（直接回车也ok）

可使用screen来同时开启多个docker

祝大家使用愉快
