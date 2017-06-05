# k2_netkeeper

---

- 感谢miao师傅和chen的贡献[源码在此](https://github.com/miao1007/Openwrt-NetKeeper)

# k2_netkeeper用法如下：

 ```
 curl -kso k2.sh https://raw.githubusercontent.com/hongwei666/k2_netkeeper/master/k2.sh
 chmod +x k2.sh && sh k2.sh
 ```

 ---

# 手动使用说明：

1、 mipsel2.4.7下面是MT7620系列的so文件，本版本是自己编译的2.4.7版本的。

   如果某些省份不能正常使用请到miao1007的github下载他事先编译好的so,[地址在此](https://github.com/miao1007/Openwrt-NetKeeper/releases)。解压得到自己对应省份的so文件。

2、 在windows下使用winscp上传到/usr/lib/pppd/2.4.7/下。
   然后在/etc/config/network中，在config interface 'wan'下面添加`option pppd_options 'plugin 你的省份的so文件名'`
- 校对时间等待连接成功
- 一定要保证时间的正确。请用各自校园的ntp服务器校对时间，地址不同，请自行查询ntp地址。


---
# license

- GPL-3.0
- NO TAOBAO USE!!!