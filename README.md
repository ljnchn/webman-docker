# webman-docker
webman docker 环境部署

## 复制环境变量
`sudo cp .env.example .env`

## 启动命令
`sudo docker-compose up -d mysql redis`

### 可选命令
- mysql
- redis
- mongo
- phpmyadmin
- meilisearch

## 导入外部 SQL 文件（[参考链接](https://www.cnblogs.com/denghb/p/12309831.html)）

### 拷贝 SQL 文件到 MYSQL 容器
`sudo docker cp ./mysql/webman.sql webman-mysql-1:/webman.sql`

### 进入MySQL容器
`sudo docker exec -it webman-mysql-1 bash`

### 执行sql导入
`mysql -uwebman -pwebman_pass -D webman < /webman.sql`

## 主环境

php 跟 nginx 安装在主环境比较方便