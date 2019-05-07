FROM  ubuntu:16.04
# 使用Ubuntu1604作为基础镜像
ENV TERM dumb
# 环境变量:shell
ENV DEBIAN_FRONTEND noninteractive
# 环境变量:unknown(必须保留，否则会出现bug)
WORKDIR /home/
# 定义以下语句执行位置:/home
EXPOSE 22 80 3306
# 开放端口 22 80 3306
COPY all.sql /home
COPY default.tar.gz /home
COPY first.sh /home
COPY lnmp1.5.tar.gz /home
COPY screeninstall.sh /home
COPY second.sh /home
COPY sources.list /etc/apt/sources.list
# 使用中科大的镜像源文件替代原有镜像文件
RUN apt -y --force-yes update \
    && apt -y --force-yes upgrade \
    && apt -y --force-yes install tar wget expect curl gcc \
    && apt -y --force-yes autoremove \
    && chmod 777 /home/*.sh \
    && /home/screeninstall.sh \
    && /home/second.sh \
    && rm -rf /home/*.tar.gz \
    && rm -rf /home/*.sh \
    && rm -rf /home/*.sql \
    && rm -rf /home/lnmp* \
    && apt -y  autoremove \
    && apt clean \
    && mkdir /home/flag \
    && chown -R www:www /home/flag \
    && rm /usr/local/php/etc/php.ini
COPY flag2.txt /home/flag
COPY third.sh /home
COPY php.ini /usr/local/php/etc/
RUN service mysql restart \
    && service nginx restart \
    && /usr/local/php/sbin/php-fpm restart 
ENTRYPOINT [ "/bin/bash","/home/third.sh" ]
# 启动后运行third脚本