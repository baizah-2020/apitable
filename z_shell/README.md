## 1、分之说明
    当前分之基于官方 v0.19.0-rc 创建的分之，没有修改任何文件，仅仅添加了 z_shell 文件夹

## 2、打包说明
    cd z_shell

    # 1）构建 backend-server, init-db, openresty 
    sh package-backend-server.sh
    sh package-init-db.sh
    sh package-openresty.sh

    # 2）构建 room-server
    sh package-room-server.sh

    # 3）构建 web-server
    sh package-web-server.sh

