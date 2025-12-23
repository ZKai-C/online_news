## 快速开始
## 配置环境
## IDEA Redis JDK17 VUE3 MySQL8 Node18

1. 运行 `resource/oneline_news.sql`，创建数据库
   1. `mysql -h localhost -u root -p` 登录数据库
   2. `source /path/to/resource/sql/kila_kila_blog.sql` 运行 SQL 文件
2. 修改 `onlinenews-backend/news/src/main/resources/application.yml` 中的配置，主要有以下两项：
   1. `spring.datasource` 中的 `url`、`username` 和 `password` 改成你自己的
   2. `spring.redis` 的 `password` 改成你自己的，没有设置 redis 密码的话可以去掉该项配置
3. 启用 Redis 运行`.\redis-server.exe .\redis.windows.conf`
4. 在 IDEA 中导入 onelinenews-backend 项目，启动 `NewsApplication`
5. 进入 kilakila-frontend 目录，打开终端，运行以下命令：
   ```shell
   npm install
   npm run serve
   ```
6. 在浏览器中打开网页 [http://localhost:8080/](http://localhost:8080/)
