CREATE TABLE `f_user` (
  `id` varchar(30) NOT NULL COMMENT 'id',
  `login` varchar(30) NOT NULL COMMENT '账号',
  `password` varchar(30) NOT NULL COMMENT '密码',
  `role` tinyint(4) DEFAULT '0' COMMENT '角色{0:普通用户,1:管理员}',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `phone` varchar(30) DEFAULT NULL COMMENT '电话',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(30) DEFAULT NULL COMMENT 'QQ',
  `wechat` varchar(30) DEFAULT NULL COMMENT '微信',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态{0:禁止,1:激活}',
  `create_at` varchar(24) DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(30) DEFAULT NULL COMMENT '创建人',
  `update_at` varchar(24) DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(30) DEFAULT NULL COMMENT '更新人',
  `delete_at` varchar(24) DEFAULT NULL COMMENT '删除日期',
  `delete_by` varchar(30) DEFAULT NULL COMMENT '删除人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';