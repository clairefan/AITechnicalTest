INSERT INTO `aitest`.`demoweb_category` (`categoryid`, `categoryname`, `fatherid`) VALUES ('00001', 'root', '0');
INSERT INTO `aitest`.`demoweb_category` (`categoryid`, `categoryname`, `fatherid`) VALUES ('00002', 'apparel and accessories', '00001');
INSERT INTO `aitest`.`demoweb_category` (`categoryid`, `categoryname`, `fatherid`) VALUES ('00003', 'clothes', '00002');
INSERT INTO `aitest`.`demoweb_category` (`categoryid`, `categoryname`, `fatherid`) VALUES ('00004', 'tops', '00003');
INSERT INTO `aitest`.`demoweb_category` (`categoryid`, `categoryname`, `fatherid`) VALUES ('00005', 'bottoms', '00003');
INSERT INTO `aitest`.`demoweb_category` (`categoryid`, `categoryname`, `fatherid`) VALUES ('00006', 'suits', '00003');
INSERT INTO `aitest`.`demoweb_category` (`categoryid`, `categoryname`, `fatherid`) VALUES ('00007', 'cover all', '00003');
INSERT INTO `aitest`.`demoweb_category` (`categoryid`, `categoryname`, `fatherid`) VALUES ('00008', 'cap', '00002');


INSERT INTO `aitest`.`demoweb_product` (`productid`, `productname`, `price`, `categoryid`, `available`) VALUES ('00001', 'jacket01', '12.99', '00004', '1');
INSERT INTO `aitest`.`demoweb_product` (`productid`, `productname`, `price`, `categoryid`, `available`) VALUES ('00002', 'shirt01', '9.99', '00004', '1');
INSERT INTO `aitest`.`demoweb_product` (`productid`, `productname`, `price`, `categoryid`, `available`) VALUES ('00003', 'dress01', '29.99', '00007', '1');
INSERT INTO `aitest`.`demoweb_product` (`productid`, `productname`, `price`, `categoryid`, `available`) VALUES ('00004', 'dress02', '19.99', '00007', '1');



INSERT INTO `demoweb_user` (`UserID`,`UserName`,`Password`,`Sex`,`Birthday`,`Phone`,`Email`,`EmployeeID`,`Activity`) VALUES (1,'1','202cb962ac59075b964b07152d234b70','',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `demoweb_user` (`UserID`,`UserName`,`Password`,`Sex`,`Birthday`,`Phone`,`Email`,`EmployeeID`,`Activity`) VALUES (2,'admin','21232f297a57a5a743894a0e4a801fc3',NULL,NULL,NULL,NULL,NULL,NULL);


INSERT INTO `aitest`.`demoweb_permission` (`permissionid`, `permissionname`) VALUES ('1', 'select');
INSERT INTO `aitest`.`demoweb_permission` (`permissionid`, `permissionname`) VALUES ('2', 'delete');
INSERT INTO `aitest`.`demoweb_permission` (`permissionid`, `permissionname`) VALUES ('3', 'insert');
INSERT INTO `aitest`.`demoweb_permission` (`permissionid`, `permissionname`) VALUES ('4', 'update');

INSERT INTO `aitest`.`demoweb_role` (`roleid`, `rolename`, `description`) VALUES ('1', 'administrator', 'administrator');
INSERT INTO `aitest`.`demoweb_role` (`roleid`, `rolename`, `description`) VALUES ('2', 'employee', 'employee');
INSERT INTO `aitest`.`demoweb_role` (`roleid`, `rolename`, `description`) VALUES ('3', 'manager', 'manager');

INSERT INTO `aitest`.`demoweb_role_permission` (`id`, `roleid`, `permissionid`) VALUES ('1', '1', '1');
INSERT INTO `aitest`.`demoweb_role_permission` (`id`, `roleid`, `permissionid`) VALUES ('2', '1', '2');
INSERT INTO `aitest`.`demoweb_role_permission` (`id`, `roleid`, `permissionid`) VALUES ('3', '1', '3');
INSERT INTO `aitest`.`demoweb_role_permission` (`id`, `roleid`, `permissionid`) VALUES ('4', '1', '4');
INSERT INTO `aitest`.`demoweb_role_permission` (`id`, `roleid`, `permissionid`) VALUES ('5', '2', '1');
INSERT INTO `aitest`.`demoweb_role_permission` (`id`, `roleid`, `permissionid`) VALUES ('6', '3', '1');
INSERT INTO `aitest`.`demoweb_role_permission` (`id`, `roleid`, `permissionid`) VALUES ('7', '3', '4');

INSERT INTO `aitest`.`demoweb_user_role` (`id`, `userid`, `roleid`) VALUES ('1', '1', '2');
INSERT INTO `aitest`.`demoweb_user_role` (`id`, `userid`, `roleid`) VALUES ('2', '2', '1');
