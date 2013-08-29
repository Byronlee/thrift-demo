thrift-demo
===========

## thritt的 学习
### 首先明白几个概念：
* web service : http://baike.baidu.com/view/67105.htm
* RPC : http://baike.baidu.com/view/7287257.htm?fromId=32726&redirected=seachword
* thrift : http://baike.baidu.com/view/1698865.htm  
首次接触thrift，可能对它很模糊，不知道它是干什么的，很想赶快有一个大概的了解，于是乎，了解之后就想到了web service一词．感觉他们做的事情很相似，于是乎我就这么一搜就出来了，[RPC简介，及与web service的对比](http://kyfxbl.iteye.com/blog/1745550), 于是乎你就知道了thrift是干什么的，到底有什么用，解决什么问题！！

### 按照官方的教材安装好了thrift,然后迫不及待的想跑一个例子，然后就整了这几个：
### demo1

### Usage

### use custom thrift client
```shell
cd demo1
ruby myauthclient.rb
ruby myauthserver.rb
```

###　demo2

## Usage

### use custom thrift client
```shell
cd rb
ruby server.rb
ruby client.rb
```
### use thrift client by twitter
```shell
gem install thrift_client
cd rb
ruby server.rb
ruby twitter_thrift_client.rb
```
### demo3是　官方的一个例子，一样的去运行客户端和服务端代码
