
<div align="center">
<br/>

  <h1 align="center">
    Pear Admin Boot
  </h1>
  <h4 align="center">
    开 箱 即 用 的 Spring 快 速 开 发 平 台
  </h4> 

  [预 览](http://boot.pearadmin.com)   |   [官 网](http://www.pearadmin.com/)   |   [群聊](https://jq.qq.com/?_wv=1027&k=5OdSmve)   |   [社区](http://forum.pearadmin.com/) | [更新](http://forum.pearadmin.com/posts/fb16cb02ba2347a6ac236c434e07f8e1/detail)

</div>

<p align="center">
    <a href="#">
        <img src="https://img.shields.io/badge/Pear Admin Layui-3.1.0+-green.svg" alt="Pear Admin Layui Version">
    </a>
    <a href="#">
        <img src="https://img.shields.io/badge/Spring Boot-2.3.0+-green.svg" alt="Jquery Version">
    </a>
      <a href="#">
        <img src="https://img.shields.io/badge/Layui-2.5.6+-green.svg" alt="Layui Version">
    </a>
</p>

<div align="center">
  <img  width="92%" style="border-radius:10px;margin-top:20px;margin-bottom:20px;box-shadow: 2px 0 6px gray;" src="https://images.gitee.com/uploads/images/2020/1019/104805_042b888c_4835367.png" />
</div>


#### 项目介绍  :jack_o_lantern: 

Spring Boot + Security + MyBatis + Thymeleaf + Activiti 快速开发平台

 项目不定时更新，建议 Star watch 一份

#### 模块划分

|功能名称     |实现方式     |完成度     |功能名称     |实现方式     |完成度     |
| --- | --- | --- | --- | --- | --- |
|核心框架     |Spring Boot     |已完成     |接口文档     |Swagger     |已完成     |
|权限管理     |Spring Security     |已完成     |定时任务     |Quartz     |已完成     |
|流程控制     |Activiti     |已完成     |代码生成     |MyBatis Plus     |已完成     |

#### 内置功能

1.  用户管理：用户是系统操作者，该功能主要完成系统用户配置。
2.  权限管理：配置系统菜单，操作权限，按钮权限标识等。
3.  角色管理：角色菜单权限分配、设置角色按机构进行数据范围权限划分。
4.  字典管理：对系统中经常使用的一些较为固定的数据进行维护。
5.  参数管理：对系统动态配置常用参数。
6.  通知公告：系统通知公告信息发布维护。
7.  操作日志：系统正常操作日志记录和查询；系统异常信息日志记录和查询。
8. 登录日志：系统登录日志记录查询包含登录异常。
9. 定时任务：在线（添加、修改、删除)任务调度包含执行结果日志。
10. 代码生成：前后端代码的生成（java、html、xml、sql）支持CRUD下载 。
11. 系统接口：根据业务代码自动生成相关的api接口文档。
12. 服务监控：监视当前系统CPU、内存、磁盘、堆栈等相关信息。
13. 在线构建器：拖动表单元素生成相应的HTML代码。
14. 连接池监视：监视当前系统数据库连接池状态，可进行分析SQL找出系统性能瓶颈。

#### 项目结构

```
Springboot
├─annex  项目SQL文件
│
├─pear-common 公共模块
│  ├─config 框架集成配置
│  ├─constant 通用常量
│  ├─exception 异常处理
│  ├─plugins 自定义组件
│  │   ├─ datasource 多数据源组件
│  │   ├─ sysLog 行为日志组件
│  │   ├─ repeat 表单重复提交组件
│  │   └─ resource 文件资源池组件
│  ├─tools 工具类
│  └─web WEB 处理封装
│
├─pear-entrance 启动模块
│  ├─api 通用接口
│  └─security 框架权限配置
│
├─pear-entrance 启动模块
│  ├─static 静态资源
│  ├─templates 页面文件
│  ├─logback-spring.xml 日志配置
│  ├─application-dev.yml 开发环境配置
│  ├─application-prod.yml 线上环境配置
│  ├─application-test.yml 测试环境配置
│  └─application.yml 配置文件
│
├─pear-modules 业务模块
│
│  ├─pear-generator 代码生成
│  │   ├─ config 配置文件
│  │   ├─ controller 接口
│  │   ├─ mapper 数据仓库
│  │   ├─ service 服务
│  │   └─ domain 实体
│  │
│  ├─pear-system 系统业务
│  │   ├─ controller 接口
│  │   ├─ mapper 数据仓库
│  │   ├─ service 服务
│  │   └─ domain 实体
│  │
│  ├─pear-schedule 定时任务
│  │   ├─ controller 接口
│  │   ├─ mapper 数据仓库
│  │   ├─ handler 操作封装
│  │   ├─ service 服务
│  │   ├─ task 任务实现
│  │   └─ domain 实体
│  │
│  └─pear-process 工作流程
│      ├─ controller 接口
│      ├─ reousrce 编辑器资源接口
│      ├─ param 参数实体
│      └─ domain 实体
│  
└─pom.xml   maven.xml


```

#### 开源共建

1. 欢迎提交 [pull request](https://gitee.com/Jmysy/Pear-Admin-Boot/pulls)，注意对应提交对应 `master` 分支

2. 欢迎提交 [issue](https://gitee.com/Jmysy/Pear-Admin-Boot/issues)，请写清楚遇到问题的原因、开发环境、复显步骤。

#### 软件截图

![输入图片说明](https://images.gitee.com/uploads/images/2020/0409/232343_75438e29_4835367.png "1DC_YSZ{{Z__FA_)D22ZV~K.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0409/232400_fbeaaab5_4835367.png "FV{6]DVHU_]7@WAOX4O$(7Q.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0409/232408_9bd7fff2_4835367.png "FH1)%5~7(Q8$@%69D0D20$5.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0913/162014_9f59485b_4835367.png "文件管理.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0409/232417_fd3a4c75_4835367.png "}_QW$N(7@_O]%(3U@ES~XGM.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0912/000746_282ce497_4835367.png "QQ图片20200912000740.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0409/232427_f20eecfd_4835367.png "_HYELQRSQ(B8]8BXK[0J}@T.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0409/232438_4dbe9ace_4835367.png "9XFJLJMCRL@`945V{B04K~L.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0409/232506_04c112d6_4835367.png "0Z`V9H`PUT4E_2282@KAB]K.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0409/233500_61ecc41d_4835367.png "UGF{USQ1(YWCG(JMI[JG@FP.png")

Pear Admin 开发 进行中  :camel: 
