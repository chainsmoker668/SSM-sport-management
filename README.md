# SSM-sport-management
基于SSM的运动会管理系统（练手项目）
后端主要技术栈 SSM（Spring+SpringMVC+MyBatis）
前端则在JSP页面的基础上添加了相应的Ajax，jstl

管理员账号固定：admin 密码：123 
管理员登陆时，会通过表单提交账号密码，然后控制层判断 账号栏是否为空 或 密码栏是否为空，然后调用服务层去查询此账号是否存在，存在则比对密码，相同则登陆成功并将管理信息添加到session以作安全过滤。管理退出时移除session。

管理员页面包括：修改密码，学生报名审核，学生成绩发布，更正学生信息，报名情况查看统计
（包括了模糊查询以及分页功能）

学生页面包括：学生报名比赛，学生成绩查看
