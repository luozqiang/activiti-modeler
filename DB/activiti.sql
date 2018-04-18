/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.6.27 : Database - activiti
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`activiti` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `activiti`;

/*Table structure for table `act_evt_log` */

DROP TABLE IF EXISTS `act_evt_log`;

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_evt_log` */

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15002',4,'source',NULL,'{\"resourceId\":\"15001\",\"properties\":{\"process_id\":\"process\",\"name\":\"\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-B5099D54-8A71-490C-8876-BF2DCCF4F9C2\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-F9078A81-F1F5-4F6C-A35E-EA522BE52553\"}],\"bounds\":{\"lowerRight\":{\"x\":210,\"y\":90},\"upperLeft\":{\"x\":180,\"y\":60}},\"dockers\":[]},{\"resourceId\":\"sid-B070BEA4-BF99-4511-B089-CE10EFC0F6AA\",\"properties\":{\"overrideid\":\"usertask1\",\"name\":\"提交申请\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateUsers\":[{\"value\":\"张三\",\"$$hashKey\":\"2LV\"}],\"assignee\":\"01\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-82B43AC7-BD37-49A4-82FE-51BD23D33FF3\"}],\"bounds\":{\"lowerRight\":{\"x\":385,\"y\":115},\"upperLeft\":{\"x\":285,\"y\":35}},\"dockers\":[]},{\"resourceId\":\"sid-8F6F1797-A045-406F-B627-34D4FA7722C5\",\"properties\":{\"overrideid\":\"usertask2\",\"name\":\"部门申请\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateUsers\":[{\"value\":\"李四\",\"$$hashKey\":\"2PQ\"}],\"assignee\":\"02\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4004DF53-C10C-4C3A-BDDD-A0613EB477FA\"}],\"bounds\":{\"lowerRight\":{\"x\":535,\"y\":115},\"upperLeft\":{\"x\":435,\"y\":35}},\"dockers\":[]},{\"resourceId\":\"sid-B244B424-AFA6-47C3-A876-711AB3688592\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":763,\"y\":89},\"upperLeft\":{\"x\":735,\"y\":61}},\"dockers\":[]},{\"resourceId\":\"sid-F9078A81-F1F5-4F6C-A35E-EA522BE52553\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B070BEA4-BF99-4511-B089-CE10EFC0F6AA\"}],\"bounds\":{\"lowerRight\":{\"x\":284.78125,\"y\":75},\"upperLeft\":{\"x\":210.21875,\"y\":75}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-B070BEA4-BF99-4511-B089-CE10EFC0F6AA\"}},{\"resourceId\":\"sid-82B43AC7-BD37-49A4-82FE-51BD23D33FF3\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8F6F1797-A045-406F-B627-34D4FA7722C5\"}],\"bounds\":{\"lowerRight\":{\"x\":434.78125,\"y\":75},\"upperLeft\":{\"x\":385.21875,\"y\":75}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-8F6F1797-A045-406F-B627-34D4FA7722C5\"}},{\"resourceId\":\"sid-A02A72E7-771B-4A4B-997F-1EA48C43771F\",\"properties\":{\"overrideid\":\"usertask3\",\"name\":\"经理审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateUsers\":[{\"value\":\"王五\",\"$$hashKey\":\"2TL\"}],\"assignee\":\"03\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-130B5497-4AF7-4A52-A621-5788138773E7\"}],\"bounds\":{\"lowerRight\":{\"x\":685,\"y\":115},\"upperLeft\":{\"x\":585,\"y\":35}},\"dockers\":[]},{\"resourceId\":\"sid-4004DF53-C10C-4C3A-BDDD-A0613EB477FA\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A02A72E7-771B-4A4B-997F-1EA48C43771F\"}],\"bounds\":{\"lowerRight\":{\"x\":584.78125,\"y\":75},\"upperLeft\":{\"x\":535.21875,\"y\":75}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-A02A72E7-771B-4A4B-997F-1EA48C43771F\"}},{\"resourceId\":\"sid-130B5497-4AF7-4A52-A621-5788138773E7\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B244B424-AFA6-47C3-A876-711AB3688592\"}],\"bounds\":{\"lowerRight\":{\"x\":734.640625,\"y\":75},\"upperLeft\":{\"x\":685.875,\"y\":75}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-B244B424-AFA6-47C3-A876-711AB3688592\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15003',2,'source-extra',NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0-\0\0\0�\0\0\0Q.\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0��\0\0u0\0\0�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0���\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0�\0\0��+\0\0\Z�IDATx���tTս��=y#�`�KED-�]�\"\"\"XPK�.]��Uo+VUT��^|�ZD�\"&D\n>Q@��,\n�2)\\�B@	�� �d��߁3=&�$3��Z�f2��g������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�Z��\0�o�@ a˖-��:x���H�����6�>_ >>~o\\\\������={����\"��+⊸E\0T���gϞ=��Ҷm[���d�7on���885�D�&V�������)--�x�СQ����$�@\\W�(Z\0��m�6��Ϳ:묳�駟��6J���6YYY����>}��K\\��\"��+4�\0��\0�˯�t�bZ�jE�NNN�ݵk��Q�Fe̜9�[�\n�qE\\��\0�CS,���T���X���w��\r�L��w͞-���������ML|\"���������9r䇩����+⊸\"��+4tL�RZĪ9�bQQ������=��𗘃�ߙm�������ZдiSӾ}{tt���+⊸\"��+P�\0@�uG�X5\'�xr�~aJ�(w��=[�p\0kI�v�cbb�]�h�e�qE\\W�(Z\0�Cۄjם��:A�z5Q{Z�n�c�n&��+⊸\"�@�\0:���	�H����\'8Bmjٲ���7qE\\W�q��.�C\0 �t\"6�\n��g?���U+�\n�qE\\��c�@H�b����|�b�+W�q�\0���&�V���xz<A\\��(Z\0��%�u���kZ����&&�� W �\0�\0�_�Zu1M[��������\n�@�\0����P��J�����qP�\0@�:r`�s&��������Mf�W�9��+W\0E\0�\\~�\Z�\0L3�m��1󶚬�S̾m�M�s ��qD��P����ۏ�����q��F���&�ٺ �@\\጑\0�J=��M\0��ùu�T �+W\0E\0�-�DVW�_�q�\n�\0LP�:���A\0q�\n�	1�\0\0\0��\0\0\0\0(Z\0\0\0\0P�\0\0\0\0@��\'$dddܾv��;v�8;;��������\"h޼yqrr��������O�;��\Z\0\0��#G�+))�����?^l/m���K��e���}�����Ef������W\'N�8|�޽1]�t1�{�6g�y��E�IHH0�p��߿?�����a͚5#x��m��ꫯN�(\0��2|��A��^����%q�yH�����ko������aÖ؟�Ϛ5+��h�V�Xq��O?�����x���t���DGG�o	l�K�V���~�3s�m��֯_vzz�+)))����0gΜsD\0@m���\n�W�@�j<��}^o�\Z)���#\\���5��8���[8cƌ�h~��_�X98���\'�t~�������Q\0\0P�:,**�~��T�>�*?��Oͥ�^j:u�dZ�ha�7on<h���LVV�Y�r�Y�f�)..v���>o����G��Eº`Y�t��ŋ�|̘1��sϭ������t�ܹɤI��|�]w�O�6�e�2\0\0�A�r�-XRm��+�`�ׯ�3룬SN9Ź�~�����/w\n�?��,X������!�l��-\\l�V�������s����C���g�m�|��&���d�Qe\0\0P͂E#,�m��,*D�y�-�?n�r<\Z����<��u��|-����%�aY�`�������W�^��Gm��m:s�\0@Uh\rKtt�_݂����7&L�Q�Qz��ߵkWo�2%������p��)Z�R[#,ei�e�С�QQQ�s�\0@��i�\Z��<���Κ��д����w��GS�^�h\Z����O׶�Z�R��$))���\0\0@ei[c[�\\��ZâB����p�,ϦC=�%O�hAX�(Kff�-��866���^JJʩQQQ�F�1��v�\Z�޽{���+W ��.�7h�}u��UD�w���{s����љ�w���m�Cᢋ.�����t���\r�6m���\\�p_7dȐf\r�;���&;;۹��w���w�*�D^~�eSPPP鿵b�\n��U����SXXX���c�򟷑ŕ|��Ǧ���R�ݽ{�Y�pa��q9q��򫯾*w��L1TUG���wo���I�wڴif�ƍ������߶mqu4��m\\ͮJ\\�L���j�vw\n��]w���g8�)�< ��]�vDE\'��+]�v���?�9�ޜI����5�W7ن�&{�m�����7[�-�1cFQCy�����;�pn���*l���_����T�\\���<y�v�&\0�֭3=z�8����g��rZ�l�|A-Z��,[�,�h�^�:�\0���.0���ĕS�Lq�b����믿6:t0M�6u���L�֭��j�O?����/��\"�`����hϞ=M�>}������T\'�tr㴴4��Dk�̙3M�޽��w��<n�޽�\"B���ϊ)���M��u����7���y�G��)F۵k�[j�/_nz�����c�^j�(�O���n��|��g�{�d6�N�W�ظ��X\\��ŕ��8�>�IR��$\'\'��{Ӯb�#���w5�<��aeǎ�a�K/���m�����-�b���\r�<{{��<>X�dII}�!�J�w������I�����z����̛7�i��;��w��ٜs�9�^E}�oذ�yLL������o��d�zH:�����ϛ7�|3���9C�unw��=X<)9Q��Χ�z���\r8��\"C���~tY�x�s�Ν;��)�ܳgO�s�h���L8�zC%�e{ĉ�ȋ+ŀ}�����S���٪�Qa�Ə(��>����ovbC#r��OW\\q��8���ts�\r���y�c�.]꼮���C{l�k�P�5�8�`���G�^�TW���)�4�g��9e���w�{���ڢ��-�>O�hAX���>E=L�ԱcG��\\���w�m۪��3{{J�{4ճ�o͞=��\"w���}��f͎��ϙ3�?��M���ִ0%���%}�����;�t^����__Ի��{nb�r{-e�ܹN��7qP�k�Q�@��M^z�%�T�r�}�9���(�V��ҹ*������ό?��۷ϼ���K.1�}�kl��N�v��v�R��bBE�>o����E٘���	����\"W�FyD��p=G1���zo���7�t��>}��:�p4��e���mڴ�o��S��Tŕ=�{�:}�۷�����������\r��Rqqq+�0�ؤa�@9�y��^ߨ/A{��Tg^vu��Y����߲e�3z�L�\'ڛ\0x>�n.^W^y�3}G���^�]�vò=���t���o�1�?����$�=��w\r֟��\'\'qQ�g]S\"�)%�0v�5���/�tT��P���)9�ȇT�G������(�>o%�_|�3u����N�/����{��)�����i*Nվ�PqGZܩ�ޑ��~���tF�EkU4���謬,gDP�qD�f�E���Kz�\n�7�cP��裏��`i�q����۸\ZdoR\\�~tW��J��oI�4 j܄4T�ec%�_z�O�:hj��3�*�@Κ5˴i��I�����ʸq�̘1c�DO���;�<�������֜p+�����hQ���z�]�f��ދz�o��V��+�8=a�^{����>��c!K��(���\rY\\i��F�:u�,.4�pժUN�(IIIN���s$�\"+�.��2���:�#F8�[���ssM�:�<��CNѢBX;�hU{���d#-n��BCT�#�\Z	ܺuk��Y�뭷̨Q��������������Fq�Ũ�m�+R��Ih�Ǎ��%>>>`U_(�=z�y�wZ����9̕�����I?ZDb����ݻwś�׿�e�x�	��[�r��k-x��iM�-BuG\\\r\Z|��N=��Ӕ���j��\ZkʙKS�B9�B�GJTl\"�qU�$@�`ڍ%�)))���T\\L�4)�\0:Ԉ��W�M>�^�R�)~}��s[�i�H�׿�u����Vō�0ڰ�;Ң�X힗Fg����[zm�>�ӂ�S��D�WU�8�cCY�4Ҹ���NMo\\��(�3�.u�x4��L(Z��m�ʹ۱����*JOO�	�xذa6ֶ!.=�+�O	��9����^�lA����d*����;�Ԕ\n����D������z3G�]��7�p�3-CSo�TE���N�)�0���~g�\0�}��z�P��M;v��j���u�]�m��r�d����>��.V&�\"+���ij�F>4�3��i���[��*F�\\8�1�2���v����}�H�.ޑu���������[ES��\'�%�\n�({U6����2�Z�uY���=�P�\0\rH�-�ن�S(��$����z�m�|�6���z��\0h�Ue[��4i��~����{�&����9��W�\0�ԋ��\Z-@=�ȝ\n!-�uy����ׯ��8�L3S/����5*{����UYZܬ�U��qYq�v��Z��v�ꪫ*|�;L#\"z�v\ZSᢞ�o���!Q!Rv�D�.]�;Ң51Z�2*���ťi����J#\'Ş��9Q\\قg�[�l޼��O,�����u-@�����6ĝ��h�,_�\\=qK#��k��@�c/�/�\Z�y��^H��^�Ι>q�D��D����(��ϢŪ�v����+`��ee�[��hG=�Z�-����E��W�^i7��.K.�j�w�v�Q-�W�ؼ�k���+��u������SEm�FaTĪ8y�ׂ���l�xԖǊ=���Q�#-eitN���ɣ�Rq��J42����B�.�PQU�+[�,���9S���5�q\r�<��a%??��0�QZZ\Z�L�/�����H;�\Z�WK��{\"����uM�еֱ�vP�TmI�q�]���T��^K}�ka��O]�����\Z�[n������r��-�bw����g��\\p�^���&�;`Wգ�X���Ĳl�.Vvi(�TY�9�f91�ݿN������+��Vm����-�T��n\"*$���6jp�q\ZIv�ii�����w��1�Yg�U�oj\n���㍰�����r�\Z�@玪�s�=��j?�r� ��~��m��n�����ur�IM\r[�z�:U}��z��w:��\"܌3��#G�<\'=?.L�\r�����WF��6l�x�ϗe�w��C�hѢ��̡P���}��h�FE����߬����e�G\\�&Έ+⪡�j\\5�WÇ_d����\r�r���l�w�}��qY8�)�� ����{��֭[L�����؆�H:�����\Z�J$p���U5��Ē�\n}�W�UC��\n�0�����)Z,X����戕6ax�����,6O�\Z�=��C��>}����j���ɓ����;v�H�\0�ʘ5k�|{�D�KKK��h�:���f/��b��O��eᒧP� ,����8o޼C5���\"�^�z����͒%Kؚ\0\0T���6������g��qᢂ�@��۷��L\n�)O�hAXJOO�:r��ol#p�������I�&]l��f͚�m\0\0P�<%h�����&Lp�vU����c��fdd���<et8�)-[���i�����?���F\\4�����YZZ:�6�e\0\0P�g�ִ�߸��F\\ƍg���ʞ�Bz��?��#��l6.��V�!����:t��\'�|r�����������\\����s��_�j��8g�]\0\0P���a��@6����\Zmӯu�ݺu3=z�0;vtN��5L��N�z�j]��� �;¢����y\nEz2�\r���ߞn�SRR/��&�|zѢE��Ϝ9�SIII\'۠\\͔0\0\0P�y��1^s�BV�w�r�YS˴�%\\��D��W��Fa��ɓG���u�ܹ��={6�СC\\rrr[���СC;����7lذiٲeћ6m:�6:���999�,�\0\0u��\\�<�)�x�]�<}��L�<����(茰�9������[��\n�sw{��l��$�K��h�O�e���\0\0 dy���l�7Oi{,OQ��]����R=6R��D�������.\0\0\0�)\r��\0\0\0�h\0\0\0\0�\0\0\0\0-\0\0\0\0@�\0\0\0\0-\0\0\0\0(Z\0\0\0\0��\0\0\0\0E\0\0\0\0P�\0\0\0\0\0E\0\0\0\0�\0\0\0\0�h\0\0\0@�\0\0\0\0-\0\"�щ�\n��~D`?������qE\\W�h\0����]����@4\0���˴W�+W�q�\0����]���ρh\0rrr\n���\n�qE\\��\0<����gǎŁ@��Q��rss�����+⊸E\0x���k�M\0�����`ԣ���E�sȾ��kWW ��+�\n-\0PFQQѨ�����z����nnn�\r~���\n�qE\\�1��\0����=��z�ʽ{��*)))!>>��� ##������~��-#�@\\W�(Z\0�3g��<jԨ�v��9�~!HLLlb�90u\'+33sNVVV%\0}�����qE\\Wh,��^}��\'����^�����U�V?�l�򴤤���>N\r��&T��h��k�E���3�+W�q�\0���^���n�7{�Kw{I�ԘNĦ�\Z,��������\"��+�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@��&����\0\0\0\0IEND�B`�',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15005',2,'source',NULL,'{\"resourceId\":\"15004\",\"properties\":{\"process_id\":\"process\",\"name\":\"\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-5DD8F96B-84CB-4FA8-B27C-C5421C8C531C\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-FDE20EED-F5BA-4B75-916F-911E90D65739\"}],\"bounds\":{\"lowerRight\":{\"x\":134.25,\"y\":103},\"upperLeft\":{\"x\":104.25,\"y\":73}},\"dockers\":[]},{\"resourceId\":\"sid-13B1823C-CBE5-44B7-BD28-CC91B12C42D7\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-DC155310-13DD-43DB-98BB-C3CCCE9E0E39\"}],\"bounds\":{\"lowerRight\":{\"x\":363.25,\"y\":126},\"upperLeft\":{\"x\":263.25,\"y\":46}},\"dockers\":[]},{\"resourceId\":\"sid-4E4B7821-F579-4C80-A2D8-7B89089A3FEA\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-661C9462-5053-45B3-A872-5DC4A44BECDF\"}],\"bounds\":{\"lowerRight\":{\"x\":565,\"y\":125},\"upperLeft\":{\"x\":465,\"y\":45}},\"dockers\":[]},{\"resourceId\":\"sid-75DD681D-9ACE-4FB6-9506-5FAE11D4B4D5\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":733,\"y\":99},\"upperLeft\":{\"x\":705,\"y\":71}},\"dockers\":[]},{\"resourceId\":\"sid-FDE20EED-F5BA-4B75-916F-911E90D65739\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-13B1823C-CBE5-44B7-BD28-CC91B12C42D7\"}],\"bounds\":{\"lowerRight\":{\"x\":262.99224063637456,\"y\":87.84125376944716},\"upperLeft\":{\"x\":134.64838436362547,\"y\":86.51812123055284}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-13B1823C-CBE5-44B7-BD28-CC91B12C42D7\"}},{\"resourceId\":\"sid-DC155310-13DD-43DB-98BB-C3CCCE9E0E39\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4E4B7821-F579-4C80-A2D8-7B89089A3FEA\"}],\"bounds\":{\"lowerRight\":{\"x\":464.3505982213616,\"y\":85.7489496813946},\"upperLeft\":{\"x\":363.8994017786384,\"y\":85.2510503186054}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-4E4B7821-F579-4C80-A2D8-7B89089A3FEA\"}},{\"resourceId\":\"sid-661C9462-5053-45B3-A872-5DC4A44BECDF\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-75DD681D-9ACE-4FB6-9506-5FAE11D4B4D5\"}],\"bounds\":{\"lowerRight\":{\"x\":704.453125,\"y\":85},\"upperLeft\":{\"x\":565.40625,\"y\":85}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-75DD681D-9ACE-4FB6-9506-5FAE11D4B4D5\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15006',1,'source-extra',NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0�\0\0\0I�R�\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0��\0\0u0\0\0�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0���\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0�\0\0��+\0\0IDATx���tU��/�\0�!o$z)Z��̴#cgy-8E�:�-˩%t�>��^����m�ug�3�h;m�\"*�2�*UJ�����0�D^A 	! �$���?%^\nD�8I>���:\'���/������$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�r�\0\0�O&��ߺu��<x���Ç_|�С�t:�0g۰��d�u��N׮]�kkk��ꫯ�����\0d�\r6|94DSjjj�2���5KS�t��}h�V���+���7��>��p{EE����QPP����\'9�s�T*�8g)�kB K8�������__]]=y���kT� ˬ_��3���G��)j��h׮]��m����铟��*�i?�~��l��١C�&�~C(�唖�&%%%�!pO\nce��@��U��lذ����\Z\Z��\\rIҷo�$??_s�Lb�u����;6��˜!H|��n�<s���*�>�C�>;bĈdРA�F+�^��߿��ݻ�v��ɫgϞ�����\0dApسg�ݡ)���jS��g�L��棏>�NU�W\\�TRRrW1\0����]I���������H�ۚt�yn�׭�❥�]�Ʊ�-�����Ι3g����\0��e˖]�w��Gbp8USTw�P�{��,4F{6.J�Y����n�+^34E����---�ۛo��7����޴i���;�.1\\�*8l_�HRSU��><!��V�K��W�s�p���J*�:����fϞ=KE�eY�4���v�СCO2麆��r�kI�у\r���tͿ\'�;�)^3�ٳg���{h�V��Ϫ���8���m/5����&[�*`32dH������,Y�ת��������՝�TS��leç��R�yI��8Ss�O������(;�ӱ�4������&�����̜{�����T��\r�f���(����HUi�ύ��6�Fp��;�DS���u�ǚ���m��v�\Z8p�7ר@8z���j����|����ӷo�~�Tj�Jd�x�x�;m/�b�� <\0m���z��(;���+^��U\"��kt��I�44�=�@�d2)MQV5EΎ�u�ޯ���&���Y�������y]{)�^��W�����s�tO�_p���9�9odҵ�����I54E9)��נIρ���s����s�ҽ2��O��x��չ]�@pL}m�I���R@x\0:[St���2�چ`Agw�О���3��~�C�lL�^6��{\0��C��|��ɞM�=���5��珓��Nk�N������ܖ��<���8�1�nX�| ����>1���Lv��e�oȨd�G�k88:�8.v��\\�������U{�\'���\rI~å\n\0�����u۱�پ|�i/�ط�8)y�\\�Q�I8���\'�|��d�������\0tek�<��\r���&5v*\"���y���d˖�o�����\\r�?( <\0���\0:9˖\0\0\0�\0\0\0\0�V�\0\08����!uuurrrƄ/G�� l��V��L&�2��+���O̝;w��\0\0\0�̤I�&�������!t=ŷ����o��	����TXX�4|=����#<\0\0@@e2��g��k��	���&�̟?��@�z��nZ�z��]�v]Q^^ާ���KMMM�����ݻw���w���YAA��Û�u\0��&N�X�J�~�N��5>����|��M����d���I߾}�s�9\'9|�pRYY����$���Ɋ+����Ƨ]��ƤI���g!��v��G�۶m_o�#F�HƎ�|�CJBPH��� rb�ؾ}��5k�y��W\'L�:uwx�}���*\0?�ÜrCç>��dܸqɠA�N��=z4l�~r�UW5��&�?�|R__��W&��e��G{Xx��=��ScW�Z��u���),,L.��҆7��b��[|�_v�eɭ�ޚ��;o޼�y��<x��Gyd��\0�48��9��oh�b ��7���a��3EEE��ѣ����\'�����9#���4�T���c�=��E��|���s�}�5��S��Ġ���?�n\Z��z�ԩ�PU\0����8�^�g����/N�O����������?�����Xx퟇\0q��@�X�`�/�/_����+�ӟ��\n\r\'\Z?~|��|�ˡC��iڴi�[u��$�J=�x�C�q�U�1\rg#.g:a�\".a�!<��f̘�K�,)��w��\\t�E��\\pAr�=��UUUM��۾��\0@gO�\Z���x?~��\r��;���y�?o��@���/~qŲe˾v�w�����_o�ԩ]����H�j\0藺�����k�q t�����;���3]�Ԕ�zq�H�L&�ՎPw;�vb۶mυ7`��fNg >�����?����*�av�ה����t��:ՀS���z2x���0^���ə[WW�r�T\Zh7���ĉ�J�f����W�N���7�Y�%\\���s�=�x\Z׫�1O<�D��@�z���޾}��x�BK���x���i��~u�N�����w��̰�Z�$p�\Z���ɡ�\Z�wy&<6�[�nK{�\Z���=�Ma��a�8�A�/�k���1!|OÚ�x\"�x�����Ol��k�5>������@�ڳgϷBC�ӥK��YS�L����xZ�+<tÏm��jy�}:l��H@�����BMM��0n�MƂ���g��z��vs�7��[���0~}��\r��i�?jԨ���?.<�hQ�f����_�_Lŭ!�Z,//ohG�V�\nb��[AA���\'.\n;�y�w�^�)�S��$ygҤIK�ٌ��a�%��[\\z�%!4̈�7䊑��4lذ�O\\x��9��Ux�r����ȑ#s�攬�W\\Q�dɒv?���\Zv�_�[ة�?�Lc��(�TTT$+V��ǰLW�65 .�������TVV�*�	�@��O�tc�7����-.-jI\'��@�u���1���\'Z�g�����^�Nx8��n�� ���3}~�q��X�=���j���zoMQ�y饗�7�x#޽G5����0^�8��y����uz֦�Ӷ\'��Nx�r{��τԚz���\np��|z��:���,�w�Y������h��k�ڟ�¶m�bct�j4��j4C���0�[.���aJh����7�o:�׼�o|�!@TUU�h�8|���_���}�!˅7\\���N;Q��&�^�Oo�R~�����vx���s�������)\Z�W��p��iӦMW��UXXx���x��7�;��oQ\\���/~1���	Y7~㒤���3ͤM�8~kjjV\'<�HRYY٢�!��q*�Z�ѣGs��[�C�c�&,�w�}�?�a\0��y��������IB=�;˚��c� �ai�믺w�>\'ԧRSD\'��Tc`8��Z�yal�.�\r%���B��B��1�z���>�l[�li�������/W\n��.]�ԅt�ך�X�>��OL�����aV*�z���S9�݆�ɰ-��g�@\0څ�c�i�����xr����83fL�������գG�C���}\n\n\nZ�gƵa@���֎����N��Λ7o�r@C#?�\\\Z�P{�cf��߼�������%�]�jU�w���P\\\\��|��8��x�ԓ�-*���۶m����7o��J��P�2�8u;����O|7�钰�}�t��;w���&M��u�\r!\"y��瓢��f�.Z�(^ͺ18����%<d���{f��գ����Tk�����}I�V�;ְcܔN���?�A�?����*@��?\r۵�N�G�n�c�oߞ<��3��:���o��)o��VYY9{���Gb*n-o��F<\r듪�1v����{Bp\0�?���?n�����z��\Z�n7�xz�|�>�N�;�PVV���@���j፷6��k\r���kjjj�v�i5\0��1%9v�����?��Y�B��ܹ3��Csrr��Q��@x��Y��Zc�ᡇ�o��T\0��⇥�L�p���߰aC2}��%Gg\">�{��^��ի߽�d諾֑�h(<�qZm߾}�.\\x�%��ٳ_�����(�j\0\0�\'.�\r7_iq��?N��[���� �|���>~�!�	������H�r�t;Q[[[��_�z�#�.����~�͛7�,^������8\0Й�����\'�36�<�B}�j�g�}��@�K/�45jT2lذ�o߾\r�ÊK�b`��[�|y��G���7�8�c\r��䱎V+����K����?����\Z4��^{׮]�ӧO���].\0tFq�����f�S���b�X�bE��>�_��r<ơ��T�-��7��C��9mڴw�z뭣��7n\\��o}�����_;ڴ\Z\0�?�\r��u��M!\0�.9���4��)���ӑ?�5�����\r�j��{��&L�Pq�7���{F���fΜ������e!]�#N�\0�a�OY�dQQѐt:���+�����a�W��[\\���/����dg9S���5N�=��S3/^\\��w�������_y�g̘��ȑ#�T}Mx�[�\0p�x��p���\r�]\'�n�!�s?�я�ڵk�d����ǌ�{ذa=08???��������ܸq��_|�țo�9���..W{���|���\0:O�xwZmݺu�[�vm�Zݱ�oϰU�-�k�SM�\0 <p\n��\0\0hiζ\0\0\0\0��\0\0\0\0\0��\0\0\0\0\0��\0\0\0 <\0\0\0�\0\0 <\0\0\0�\0\0 <\0@��#�Je��Bd��{�n�T��\r����k���)�7�*�}���wWUU)Dطoߚp�R%@x\0�@׮]�h��C�=���7T\"�t�������+D(//?n��@���_�\"SY`Ϟ=ok��SMM��eee��LF1�V�޽{/\r��R\n�6P[[;����������ڵk��(;�=�8���\ncE1�К5k���C�u�]��j��\0��q�ƭ���{}�ΝGT��lڴ����MQ�����\\RRr�����*++�ݻ�3�t����ІBx���U�����m���jSii�k���������Ϯ]�v�\0���a�������J�=�Qhy�J\04eΜ9��z�򊊊����ӽ[�n>ph��vժU����ƍ���d�ٳgo�<y�]�vM��޽{w�\n�rJ֬Y3���䓡���>�$ <\0Y��r�-+CS�?2���\"h�Z��\r6<�iӦ�cp����RTT�����/---�]SS�V*��	���1s��u�����֭[��12���:/<V$\\C�7N��ŋ/	�п���0`��AA�~�>�S��B�����5eee�����m�K�,�h�~��ߎ�����k�vy��U�����8,\rۯ��)�i�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0������	�=��\0\0\0\0IEND�B`�',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('17502',1,'test_model.bpmn20.xml','17501','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"process\" isExecutable=\"true\">\n    <startEvent id=\"sid-B5099D54-8A71-490C-8876-BF2DCCF4F9C2\"></startEvent>\n    <userTask id=\"usertask1\" name=\"鎻愪氦鐢宠\" activiti:assignee=\"01\" activiti:candidateUsers=\"寮犱笁\"></userTask>\n    <userTask id=\"usertask2\" name=\"閮ㄩ棬鐢宠\" activiti:assignee=\"02\" activiti:candidateUsers=\"鏉庡洓\"></userTask>\n    <endEvent id=\"sid-B244B424-AFA6-47C3-A876-711AB3688592\"></endEvent>\n    <sequenceFlow id=\"sid-F9078A81-F1F5-4F6C-A35E-EA522BE52553\" sourceRef=\"sid-B5099D54-8A71-490C-8876-BF2DCCF4F9C2\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-82B43AC7-BD37-49A4-82FE-51BD23D33FF3\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"缁忕悊瀹℃壒\" activiti:assignee=\"03\" activiti:candidateUsers=\"鐜嬩簲\"></userTask>\n    <sequenceFlow id=\"sid-4004DF53-C10C-4C3A-BDDD-A0613EB477FA\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <sequenceFlow id=\"sid-130B5497-4AF7-4A52-A621-5788138773E7\" sourceRef=\"usertask3\" targetRef=\"sid-B244B424-AFA6-47C3-A876-711AB3688592\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_process\">\n    <bpmndi:BPMNPlane bpmnElement=\"process\" id=\"BPMNPlane_process\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-B5099D54-8A71-490C-8876-BF2DCCF4F9C2\" id=\"BPMNShape_sid-B5099D54-8A71-490C-8876-BF2DCCF4F9C2\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"180.0\" y=\"60.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"285.0\" y=\"35.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"435.0\" y=\"35.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-B244B424-AFA6-47C3-A876-711AB3688592\" id=\"BPMNShape_sid-B244B424-AFA6-47C3-A876-711AB3688592\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"735.0\" y=\"61.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"585.0\" y=\"35.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-F9078A81-F1F5-4F6C-A35E-EA522BE52553\" id=\"BPMNEdge_sid-F9078A81-F1F5-4F6C-A35E-EA522BE52553\">\n        <omgdi:waypoint x=\"210.0\" y=\"75.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"285.0\" y=\"75.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-82B43AC7-BD37-49A4-82FE-51BD23D33FF3\" id=\"BPMNEdge_sid-82B43AC7-BD37-49A4-82FE-51BD23D33FF3\">\n        <omgdi:waypoint x=\"385.0\" y=\"75.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"435.0\" y=\"75.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-4004DF53-C10C-4C3A-BDDD-A0613EB477FA\" id=\"BPMNEdge_sid-4004DF53-C10C-4C3A-BDDD-A0613EB477FA\">\n        <omgdi:waypoint x=\"535.0\" y=\"75.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"585.0\" y=\"75.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-130B5497-4AF7-4A52-A621-5788138773E7\" id=\"BPMNEdge_sid-130B5497-4AF7-4A52-A621-5788138773E7\">\n        <omgdi:waypoint x=\"685.0\" y=\"75.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"735.0\" y=\"75.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('17503',1,'test_model.process.png','17501','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0}\0\0\0���H\0\0�IDATx����o��p~�����dK柰�����Ar�;�����HȔ��Ģ1$�d1!1�.]B��	\\[�W�1tb���z�UD�E>{�;n9J��o��㑼��\n����|�����g�2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�e˒$y����~���M\n��Iyzzz�C��;LN��\\ɕ\\��X��N��b2>>n�\\�r%9x��P�Oɕ�+��+\0R�qS�K�h���Y�2r%Wr@��!x�t&��\\��+� U�Q嶤J6�+#Wr%W\0,ɒ������3=[&\'�w��bT�r%Wr%W\04@�^N>ۿ)9�w�]�S�JV��J��\n�:/ًg�|O�V�ҙn�d�J��J�\0���=�ɶK6>���\\ɕ\\�\0u^��6�X��1�d�J��J�\0P�F�ʕ\\ɕ\\P�%?�c����)G%+Wr%Wr@��칣���d�c�Q�ʕ\\ɕ\\P�%{ux0��@�������c�Q�ʕ\\ɕ\\P�%狿pO�Ư)F%+Wr%Wr@#��͛ɹc��P|�Z|L9*Y��+��+\0�d�@���;�9��1w	U�r%Wr%W\0�c�޼����K���w3le�����.���+��+��NJ���m�.���+��+cS\0P盂Z�m�߻p�R�ʕ\\ɕ\\��\\�2�R�ʕ\\ɕ\\𐗬Q�r%Wrel\n\0l\n���+��+cS\0`S`��\\ɕ\\�\0��d�J����\0iH��\'�����;w��踶v�ډ���dŊI.����/����+�m����1%�d��ȕ��4e�ٟf2��am�+̹0��:%L9�������ﳲ�9l>���^{�u��%��^200�\'�r9���b19q�D6\r�K/�t��_���ں�3�d��\\�2r���~��\'����2����Ya@\r�����_��aÆ���[��Z�:u*ٸq�|>v���?�l*Y%+WF��\\-���4,���b#0��N���<�gϞ��>����f`�}��%---%G\r����+#WF�J&�Y������~6�M�x㍤��/�ꫯ�o��vr-r�ƍ�3�=�l߾=y�g�n�;j\0�l�����f͚dhh(Y.\\H���jժ�x�����+#WF��!x\",�oUo:;;\'Oe��������?W�9�70�\"!��Z_X��_kk����U�re���ռ�To���&�\n�E�s��)����S���tG�}�ٱ��{̳�d��\\�2r5�\Z��S�������\\�S��n�:�T\"�\ZW���-[���k�޽{K�l�Sϸ�U�re����l�\rAO���n�7S���a�޽�������\'���_uxN�*Y�2re�V�cG��!��)C�;���\Z�\Z�(A�A���4�>}z��%�d��ȕ��Yl\n\n�{�Hx1tuu9Z@c�w*���Gg���e4���������J�*Y�2re�jz�ĕ����W�^]��I�T�)W���\Z�Ν;�ر#I����O�[�7�s_u����d~�d��\\ɕ\\��[�������曋�>��4�:����qm`` �M��c�.�[�M�=wV�x�wL����+��+Ө�\n_�Uy���Q�\'�gU�/�V�4��k�N�����)-��E���o�>�p��U�r%Wre\Z5W���*__����w>����h�HCinnN��r�����[٦`�����éJV�ʕ\\ɕi�\\�)U~�PCz��\'����V�4���A����3Jvi�\\��+�z0����*���r���i)(�J�v��}��x&�y�����x�ɕ\\ɕi�\\Ż;R\0)X�f�x��\\�|�s��M���r�H�d�?9�<,�+Y��+����ɕk\n %�6m:����߿�������n�S��A������W�r%Wr%W��+�>)y뭷v�}������>�w�ݴ�)Y%+Wr%Wr%W��>��W_}�g�W��!�;\Z������N��S�JV��J��Qs�h�i��8���vGc\ZZ[[�?O�8�֩C��vس�d��\\ɕ\\ɕ\\�\"޷��X���\\��IWWW�Q�\Z�s�=�|���)-kjj:^�9Ϻ�U�r%Wr%WrU���ʂ=-X�����\'��n�f�B������݋�#��/��������U�r%Wr%WrU-�>�,������I�ǐ�_��V�Q�\ZZ<w����444�(����=��	���<�K�d���?�7��+���%�N	s��xooo��� n�n�Z}�u�r�\\6���(��!�t�ґ���/�{8J�X���+�Z�2�̊�EǕ#s=�(��)G�6ղ�lKkk���:b��\rAx!o��*Y%+WF��\\��As�� ^c/>��T�ŋ���!�c�3��s�ܵ�>��y\\|<���o�O�/`Ϫ�U�re����B�SU/��� �� ��,��ZO�w*�7&{�w��+W�0�.�׭S��;�G�.�7�Ϗ�<y�4��8p�+l*�ǋu���d��\\�2r���*��X��,^tO��Asss����̑#G�;�r�<�(�J��/_�����/�7o�8����Y�u�z_�*Y�2re�j��)w6��X���;\n�ݺ�\"��0�;/����0����\0�d��\\�2re��d��\\�2r��U�re���\0JV�ʕ�+#W\0(Y%+WF��\\�d��\\�2r��U�re���\0JV�ʕ�+#W\0(Y%+WF��\\�d��\\�2r��U�re���\0JV�ʕ�+#W\0(Y%+WF��\\�d��\\�2r��U�re���\0JV�ʕ�+#W\0(Y%+WF��\\�d��\\ɕ\\�@�*Y��+�2r��U�r%Wre�\n\0%�d�J����\0JV�ʕ\\ɕ�+\0����UnKgʡd\'��ȕ\\�\0�:t��H�XTpK`����J��\\��+� U}}}������믿.)���[,؞��/�<%WF��J�\0H]���D�P8�sDM�����V�r%Wr%W\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���\'`,���z\0\0\0\0IEND�B`�',1);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',1,'MyProcess.png','1','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0\0�\0\0\0F�.\0\0�IDATx���l��]�cȕ�j�`�Ĉ?ji@-6)��xH�F��Sk�#�T��4�Um(\rb\rb%B[��\Z,P�є���֦�v�?R�G6/m�ti��I:�&�5���o�g����9�s�{��Q����������}^�\0\0Dj]��\0\0�vQt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�RtVP(�����Ǉ�����������ZXX�t,-�`��]�&���4��������|���W����؛�=����ۺuk�M�R��p�\"A	F3]� t��S[x�411122r�/��9}�tXjÍs�ԩNU�%�tE���N\ra�\Z\Zz`�W/.^0���G޸q����;W\r�`/L���Ptj�#�+����<~�͛��q� A	���6A�E�����GFnY\\*�f�s���;���Ж��{jr� 䊢�L�Px���ť�L3s��On������;�U�`�M���Qt�������X\\z7����A���Y�Y=5;w����d���J����U��7��2ccc���������(I^�����|�B���sK�z�\'�~�b���Br�����8�ҝ�>����#���١��NGw�%؃��!o�e�y~q�|i�c�sIr�r��R�����$����g�u��閱��ɉɉ����ե���~����|ι�g���:�U�`N���i{�)\n333;v�Ԇjtt4�gzz:o��������ťs�	�滗���|h���������_��ť$yg)y{1yk1	���3/�s�9a�;\\J����O��hp^�����@d���F��;nx�����o�C�x�4?���������EmӦM�y���B�N:�痒��%/]�@hf���|��t�W���������s/T|nOM~Y	J�7\'?	6�ጰ�[\r\r\r�ٳ\'��N�Ġ-����\\�o��Bsqq��z�[?��l�Ӓ�B��\\Yd/%��M~|.YL��.�tӺuX�������=�|�����g���{s�`=a�k���򒁁�P�:�����?6v��Z���X��ϳ�޼y�m�:[���锞6�&�N���ɳG����?�������?Y��>�������\"+A	���\'�jaU����~��s��|�3�a�o�gdd���1s�~ȁ������㓓�-U������w��Ņr!����.\'o�<�<�~r���߼����_�����/_?I�]H޽p��>S�=5�Yd%(�ޜ�$X!��O��u�g���������\\�~���v���:�+t�̎��r½yzz��[N�����N���pD--�$����ٷ��\\�)�z��Ϳ������y!�q!y������e����T|nOM~Y	J�7\'?	�+y�(i_m\\q*����������7;;���+evl��������\n]�#�êX(�?������K�s�O����O�x�[O��/��߇�����=���f_8��+?����v�m_�,��`oN~L���M�ޝ;��t���_\'}^�/dq\r�96v�ڵ��XUϾ}���e򵵤�ȾU>��̧�~B��?��\'*>��&?��%؛��S��o�NX�W�з��������N��\'�ccnnnhh(ÖS�;����={V�嵤�Ȟ5�N~Y	J�7\'?	���̤-�ڞ�)��y4���ݻ;�st����rB�μ�x��\rk�\r�+��3����\"+A	���\'��p^(�����L����_����В��Wʼ�殻>��彸Ȟ6�N~Y	J�7\'?	��ӥR����fr:x���������N�\"�d�����p�/��ғ:ឝ�~6��ȾiZ��,��`oN~L��R#	V3<#<�woi������E�ɪ�����p�kS�)�ƍ��W\n���M���EV����O�ἐ�<MVO礳a�@i�yx%}�Ū����������{w��joK����NOq�=eZ�5^d%(A���y!�\r���w�y�W�2?/�U۶m۳gO[�������	�=Z:Nn��}��U|�\"��EV�4yN0���e��g���7mڴf�K�[ձ1::�̟�\\ͼz�؆\rY�mR|\r�뮻�t�|����G>R��������ny�r\r.����}{Tq-f��W�1�E�j���Y�{!��,��$��������dy^ n�:6�����ι�}}}Y�mI��P	����;���ῗ.���n��*�]]3_F�ϭ�R�u��(o	Vߌ5o�k�b;\r�h�D�`��Y�f/�fl&����tvH�t-������J��g��f5�����K�N�c�-׼�&��k��۷Gײ�5��[h�n|��\r6xC�לW�w�[�o�����=�`ځ���V-M���΂DoU�������Y����ޖ�x��19V�������7��ꅠ�C�njŷ���v�c��*���v���7\Zz���zl&��GM�Ś9|$X3�p^(��Mg��O_�����Vu_i��&��I�1���ԧ¿����G��ЉvL��ճ��*�n�ъ������Z.:�M���^1�ӯyO�y�vGw��n�zK�7$�8��v�N�9[ڸ�ҡy�:6&&&ػ��E�ГOmܸ1��\r^����`ttt```rr2��-�D?h�4����T���\"��SV�X�{�aFyK���Y}�7N���k�]�F����I�f�\rސ`��y���_�����/9R����К�/�nU���ݻ�}���	Ej��Of��W���LMM�|��.��*H��X��4���[���۽�l�����7x�7�M�w�5ȮGlpc��%��S	6Np׮]�[ ,ݙ��ݹ�������_�ڪ��p/���Egddd���Y�튊����N�:��\r._���\\��ZqƻV~�k�Qcm���[��vn2��Sk~�l5��iֻ��G�5��ϗn����wΝ����y����C����5V{l����A���C�W֣���1�Ko�l�mx����S�V�fV{�f5֦ݬ���o�W]~�kH����H��3m&&	6/<\0.�&��=��!}����e��j���~����6��~6���֎I�\\z��5�@�;W|��Bܖ]+]�Z��@�v����UW��\ZL�hū�`3��8��ä�e$������^�|��>�s�-�͎��uz�&�=6\n�B(��x5�pxl�0p�ԩL��I�e���t˥7j^�O������z��@�v��񵌩�6�fUe�q{�\ZV��E���g�����X�P�>@Z�T�\r,,,��v���8��S�877��]��dplLOO�v��<��\\]d�e>?]�.?k��\r>����._}���j�8�zڗ`���WT/��,�pu��1��oɊc��$تݻw�����o��g��cisڶm[�w�.�ͱq�-�~/��#GJ�yf��5���jZ��,��`oN~Lmڴ�TMBGYͫ$�A8��Z���@6�����ƍ�����gΆ�u802��ZR\\d_1�N~Y	J�7\'?	��?��ߟ�k��W\'�8�������vz��>����������s�-?�hV_XK,�ݾ�JP��9�I�\\�%���BMi�%=�T�_ݽ{w�w����177�w�k��;V�-u��$�E��壦���\"+A	���\'�\n333��:늿�V�f�ȹ����FJ��e|l,,,l޼y��{N�9��wa�x�}��e�%����~ϴ:�Yd%(�ޜ�$Xm~~>�K�i�	���v�����?22R~�Г|Ǌ����(\n�|�M���4�\n\n��.�]�\r�(�%�Ev޴:�Yd%(�ޜ�$XSx�cǎ��Wq�}h||�O�J�:6�]���M��-[B���1����m��.�u�\'k�͔�W\\d�kZ��,��`oN~l ��?���������N�Ġ��F�P���	�����˟�-gzz:W��U����/Ǵ4�Yd%(�ޜ�$��p^+8/\r\rU��������Y2�5�����k�}���#����\"+A	���\'A���2��������e��|w�������*	J�\'W	B�(:��ڵkr�/[�5�<u���D���J����U��7��2Ǐ���\n�^N^2M�������t:��$(��\\%y��T�qŶ�ɋ������th�HP�=59LrEѩT(��?6;��I�i<�N�u:�e$(�ޙ|&����0???4t���L�̙zV�p6:x𫝎�	J�&�	B~(:���Άuv׮?M��M����788p��?u:��$(��\'�	BN(:u\n��ɉ��NM�թS�%�a���_��3>>266��tD+����J�@�Y���\'&�p��_j�e�������-a��t,-�`9	v�nL:K�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@�\0 Z�\0-E\0���\0DK�\0���\0\0�Rt\0�h):\0@��@��\r#wi�\0\0\0\0IEND�B`�',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('20002',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('22502',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25002',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25004',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('27502',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('27504',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('3',1,'MyProcess.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"提交申请\" activiti:async=\"true\" activiti:assignee=\"张三\"></userTask>\n    <userTask id=\"usertask2\" name=\"部门审批\" activiti:assignee=\"李四\"></userTask>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"usertask3\" name=\"经理审批\" activiti:assignee=\"王五\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"20.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"90.0\" y=\"130.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"240.0\" y=\"130.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"540.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"390.0\" y=\"130.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"55.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"90.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"345.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"195.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"240.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"495.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('30002',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('30004',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('32502',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('35002',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('37502',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('40002',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('40004',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('42502',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('42505',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('42506',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('5002',1,'MyProcess.png','5001','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0�\0\0\0S¡\0\0�IDATx���l��]�cȕ�j�`�Ĉ?\Zi@-6)��xH�F��Sk�#�4��4�Um(-b\rb%B[��\Z,P�є���hS�]�����k�5]�-k�ΥI{M���_v��/�������z�ȱ�����s��}g��&\0���_\0\0��)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)�(�JSSScccCCCkzU��t���NNN���u;�H�L�W��7A(S8Zٻwo��������t߾W�97?ߛ��=�{��ٲeK�MҒ��p�\"A	���J�\n����\0b|||xx�����͟3�s�͓i�K7Ή\'�TS��*��\"A��p4�V�����v���Y�l|��\r6=z��q5 A	��9A��p4�W-�t����G6m��n�Հ%�#S����Qk�޽��7͟/�v��_���ۿ��Ю A	��0AhH�B�T\Zx������v����x�o���v;��$(�^��%�(W����?�ne>>�{m��Z�g��l���ݎ�2	J��P	B3\n�FGG�<�?]�n\Z�a��v!{y>���칳�ӧ��|��8�����-eO���f����݁n�����;]�g�vt�IP�=8�J�Q8��~��Ç��?�<�1��,;s1{�|�ֹ��,��?�s�5?�����ٱ�ٱ�������7�����3=8�Ϝ����vt�IP�=8�J�	/�Rizz����J\\�~bdd$�gjj�h����������O�\'�_�^��^����/��͇��������/�ϲw�go�go�giy�����toN���W!A	��\'�v�8/LNNzq��*�M�S:�R�N�T:���y��}�����޶�α����lܸ�8/���`�S���3�S�e�.\\�@jH��~�o�|�����s���<W�=5�Y�$(�ޜ�$�Z:/�3¢?�388�k׮�K������ctff�����X��?�z<�Ė-�L�����#���,,X�W�K�݅��ُNg�Yv����7ܰf�֬���n��ħ=[�=5�Y�$(�ޜ�$�LZ����6��l`` �n��&�ctǎ�=<��E�F�<�̡M�6mݺ���va�z�2�sӣ�����~����}��������h쏮X�z�P����g���{s��`�������?��������4۶�9<<\\s��صh�|gi�<F�Q566611�Qը���{���P����`�U&�����[�K��N���{j��o��~�������7�ϲ�g�w�^�����ܞ��,v�`oNq����\'6n��s����䛧ҹ`�ڵ�Ou���t{WX�܎��6�Q555��Q�K�N��:@:�ϟ�qe���޽=���\\z�5��Go�͏}�w~���ُJ�����,-w�|��s{j���IP��9�I�ZZ�SW�􆑑��U��vl�vg�s���<��bYr;F��Ɩ�6*�^I��+�[�Y��>�������gf?4���/=����|���z���>�������~��s/�������ݷ�zK���%؛S�+ʏB+����ۗp:������Qy��/�\\��9Fw�ر���Ϟ=�����uda�{�z>�����$S��O�|bOMq;	J�7�8	V�G��tҒ���������\r\ru{�X��љ������Fyn��3�v�Z��ב����t���IP��9�I�lzz��6���F�<��Õ��ܹ��;��p����\Zh�����׭X�o�\\Z�.�i:��,v�`oNq,K�r?��P�y��k�z}���r�����6�s��[�2��؝4�Nq;	J�7�8	&SSS�r��ח:�r:x������q���E�b�����P�/��ѓ��e?۴�ؽa:��,v�`oNq���f�4�xF�o���f������,Ų�ѹ��|P�(φ\rV�W���N�8��%؛S��y���y=�Q�u��[.�+Sөe������㡅����\'&&��۲���f��؝0��\n/v��)l��P�������v�W�r?/��u�nݺu׮]����}���{P/��R�x������S�Q�]�;	J�9�t^��S\Z��߸q��/yY�1:22�Οg[μr�Ⱥuy�m��Z4�\\sM����?���|���/,v?��ʖ�\\��%��`�w��Q͵�Q1\\��lq�AWog�B��߲��`:/�?qvHg����</�2�u��Bl��s�L___^{[V��ɵ�^��O}��{V�.� b*[���fW�Η��s���{�oFEK��flx�.-���x#nV}�5�gÛ�:܆H��+�tv�\\�J�/�XVf���g�\Z^��y^.��ʖ^]�_���=����̨��ߚ@ۼp�K�o��\\r^-޹f�[��׶��H��.���M�h*���,ȊYVf�ׯ���(y�m���__�o�.Hw���������;d��:�Ԣo�s���oF�J��]yO��?���:�\n	�_�{M��ڹ�H�a��P~�١�UVr�Ų2}����3�_�J��O���ߩ���G��cS�r�*��b5o��h�ƛ}Jܬ䝿�	V�ԋ�h�\r�����ru\'��Fnvgi��[\'Xy�%��p��S�{)��Ѳ������v�-bÆ\ry�m��k���<22200011��9�]X�1�l��25�i��]�)�^,���1��%��Ƭ��[\'���\r߮~#.�^H��\Z���\r	6K0�����{��������������e�;w������\'�-[>���^6===99���C�fU�zmjX�_�������z�n%X�˭o�fnQ_��ȮGlqc6���l���;ʷ@Z�s?#ܽ}{y�ccc+���bY�h:�R�\r-���{���ko��.���T�GW����]������hA�yת�t�2j-h7�o��۹�L�O��-K���\Z���vn�	64;;[�����9}&�3¦M��Ou��;Jǖ{����h:X�!���Һp�h�T�\\~㧋]�׿��fW��6�ڻ˨��ݬ���o�W]}�%$�]�$�:�vb�`����m�g�9�*/�|���r����|�{��s��6-��FLe��7Z\\Q�T�sѷ-�!�V�������ݬ���o�E3]B��+Z�*$��>�Ϋ�n��2\\���Dy�o�����y���fGGG���,�r��R���līq��tݺ�\'N䲟mZX�1�-��hxE?Y�\Z����m��q�V��J��B�n�U��g�a�H�Y���g���,bޕ�� e*����*�����x���pff�ۻ�R�p�NMM�r뭫����bw$��ɺs���g��^���ֿ����/�b�y��\n\'�L\\�5o�_Q��:J����	ƅ����%k/ �N�ܹ���}}}����W��4��[�v{�X�|�ћ7o��{u/>\\~..�/�}��+��)�b\'A	��\'���7�+B�\n�y��t\"H��ʦV�ior��1:77�aÆ�~z�䛧���\\���,,v/�N�8��%؛S�+�=���_)\nK��*�^?^i}}}�����n�t������s,���S۸y��z8�/�#��}���{s��`��*�KJu�ӗ;���%n�Ν��!�%�ctff&U�t�,�;)��t�md��ŋ/�N�8��%؛S�kLOOW��X��{+����c����[��F�Xr>F���6mڴm۝\'�<��w�t�=�����%uda����t���IP��9�I����l�/�UjG:M�>����{���p��S_��!�c�T*�#�֧��o`߷{w���.Քܿ��,,v���)�b\'A	��\'���cѻ�^k����>466�DW��c4\"w�qGj�7oޜ�D�������o���t�-[>��5�W��b���g���{s��`�P��n�\Z\Z\Z:x�`��d�{��J����t�U~̸�)��6���\n�\n��e��޳/~�t4�Y�$(�ޜ�$��t^H+:/֜FGGw���Y�U�9FWF:�_}�?.^<l:��,v�`oNq�f�W����.f/���;��\\�~}���L���)T�Ќ�q�;vLL|�����5�8y���x���L���)T�Ќ�q��G��_�+���`ڜ��ߞ���vt�IP�=8�J�Q8j�u�֋�������vhW��{j\n� 4�p�*�JCC;x��9�zN�ؗ����vhW��{g�� 4�p40;;;8x���t�͘f�V�tVؿ�kݎ�	J���	B=������nǎ?βgM�LO߳~���������W�?A��p4U*�&&Ƈ�>:9�\'N<�e����MM�������Pz��-B�\\}su%��E�߿|��׮��6_�wu��nl즴�u;�H���vWc�P�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@8�\0�p\0\0�\0 ��\0�S8\0�p\n\0N�\0\0�)\0@��$�������\0\0\0\0IEND�B`�',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('5003',1,'MyProcess.bpmn','5001','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"提交申请\" activiti:assignee=\"张三\"></userTask>\n    <userTask id=\"usertask2\" name=\"部门审批\" activiti:assignee=\"李四\"></userTask>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"usertask3\" name=\"经理审批\" activiti:assignee=\"王五\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"20.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"90.0\" y=\"130.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"240.0\" y=\"130.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"540.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"390.0\" y=\"130.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"55.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"90.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"195.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"240.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"345.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"495.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','45001',19);
insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('schema.history','create(5.21.0.0)',1);
insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('schema.version','5.21.0.0',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10001','myProcess:2:5004','7501','7501','usertask2','10002',NULL,'部门审批','userTask','李四','2017-07-10 20:10:27.630',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('2502','myProcess:1:4','2501','2501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-07-10 19:52:41.338','2017-07-10 19:52:41.365',27,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('7502','myProcess:2:5004','7501','7501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-07-10 20:08:54.269','2017-07-10 20:08:54.279',10,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('7503','myProcess:2:5004','7501','7501','usertask1','7504',NULL,'提交申请','userTask','张三','2017-07-10 20:08:54.279','2017-07-10 20:10:27.596',93317,'');

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('10003',NULL,'participant','李四',NULL,'7501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('7505',NULL,'participant','张三',NULL,'7501');

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('2501','2501',NULL,'myProcess:1:4','2017-07-10 19:52:41.338',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);
insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('7501','7501',NULL,'myProcess:2:5004','2017-07-10 20:08:54.269',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10002','myProcess:2:5004','usertask2','7501','7501','部门审批',NULL,NULL,NULL,'李四','2017-07-10 20:10:27.631',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('7504','myProcess:2:5004','usertask1','7501','7501','提交申请',NULL,NULL,NULL,'张三','2017-07-10 20:08:54.281',NULL,'2017-07-10 20:10:27.532',93251,'completed',50,NULL,NULL,NULL,'');

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

/*Table structure for table `act_procdef_info` */

DROP TABLE IF EXISTS `act_procdef_info`;

CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_procdef_info` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('1','HelloWorld入门',NULL,'','2017-07-10 19:48:48.160');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('17501','test_model',NULL,'','2017-11-26 12:52:11.069');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('5001','HelloWorld入门',NULL,'','2017-07-10 20:08:27.125');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('15001',7,'test_model','12313123',NULL,'2017-11-23 09:36:13.000','2017-11-23 10:47:32.000',1,'{\"name\":\"test_model\",\"revision\":1,\"description\":\"测试model\"}',NULL,'15002','15003','');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('15004',4,'test2','12313123',NULL,'2017-11-23 14:06:23.000','2017-11-23 14:08:18.000',1,'{\"name\":\"test2\",\"revision\":1,\"description\":\"test2---\"}',NULL,'15005','15006','');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('20001',2,'lutiannan','12313123',NULL,'2017-12-03 15:34:50.757','2017-12-03 15:34:50.944',1,'{\"name\":\"lutiannan\",\"revision\":1,\"description\":\"lutiannan---\"}',NULL,'20002',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('22501',2,'lutiannan','12313123',NULL,'2017-12-14 15:13:30.565','2017-12-14 15:13:31.241',1,'{\"name\":\"lutiannan\",\"revision\":1,\"description\":\"lutiannan---\"}',NULL,'22502',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('25001',2,'lutiannan','12313123',NULL,'2017-12-14 18:07:18.944','2017-12-14 18:07:19.733',1,'{\"name\":\"lutiannan\",\"revision\":1,\"description\":\"lutiannan---\"}',NULL,'25002',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('25003',2,'lutiannan','12313123',NULL,'2017-12-14 18:08:03.500','2017-12-14 18:08:03.588',1,'{\"name\":\"lutiannan\",\"revision\":1,\"description\":\"lutiannan---\"}',NULL,'25004',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('27501',2,'lutiannan','12313123',NULL,'2017-12-14 18:16:44.038','2017-12-14 18:16:44.343',1,'{\"name\":\"lutiannan\",\"revision\":1,\"description\":\"lutiannan---\"}',NULL,'27502',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('27503',2,'lutiannan','12313123',NULL,'2017-12-14 18:17:16.207','2017-12-14 18:17:16.288',1,'{\"name\":\"lutiannan\",\"revision\":1,\"description\":\"lutiannan---\"}',NULL,'27504',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('30001',2,'lutiannan','12313123',NULL,'2017-12-14 18:21:34.100','2017-12-14 18:21:34.309',1,'{\"name\":\"lutiannan\",\"revision\":1,\"description\":\"lutiannan---\"}',NULL,'30002',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('30003',2,'lutiannan','12313123',NULL,'2017-12-14 18:22:03.421','2017-12-14 18:22:03.508',1,'{\"name\":\"lutiannan\",\"revision\":1,\"description\":\"lutiannan---\"}',NULL,'30004',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('32501',2,'lutiannan','12313123',NULL,'2017-12-14 18:31:50.761','2017-12-14 18:31:51.037',1,'{\"name\":\"lutiannan\",\"revision\":1,\"description\":\"lutiannan---\"}',NULL,'32502',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('35001',2,'lutiannan','12313123',NULL,'2017-12-15 08:19:18.256','2017-12-15 08:19:18.523',1,'{\"name\":\"lutiannan\",\"revision\":1,\"description\":\"lutiannan---\"}',NULL,'35002',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('37501',2,'activitimodel','12313123',NULL,'2017-12-15 08:25:26.102','2017-12-15 08:25:26.285',1,'{\"name\":\"activitimodel\",\"revision\":1,\"description\":\"activitimodel---\"}',NULL,'37502',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('40001',2,'activitimodel','12313123',NULL,'2017-12-15 15:45:05.076','2017-12-15 15:45:05.764',1,'{\"name\":\"activitimodel\",\"revision\":1,\"description\":\"activitimodel---\"}',NULL,'40002',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('40003',2,'activitimodel','12313123',NULL,'2017-12-15 15:50:16.136','2017-12-15 15:50:16.213',1,'{\"name\":\"activitimodel\",\"revision\":1,\"description\":\"activitimodel---\"}',NULL,'40004',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('42501',2,'activitimodel','12313123',NULL,'2017-12-19 19:38:31.795','2017-12-19 19:38:32.216',1,'{\"name\":\"activitimodel\",\"revision\":1,\"description\":\"activitimodel---\"}',NULL,'42502',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('42503',2,'activitimodel','12313123',NULL,'2017-12-20 10:33:07.774','2017-12-20 10:33:08.476',1,'{\"name\":\"activitimodel\",\"revision\":1,\"description\":\"activitimodel---\"}',NULL,'42505',NULL,'');
insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('42504',2,'activitimodel','12313123',NULL,'2017-12-20 10:33:07.785','2017-12-20 10:33:08.476',1,'{\"name\":\"activitimodel\",\"revision\":1,\"description\":\"activitimodel---\"}',NULL,'42506',NULL,'');

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('myProcess:1:4',1,'http://www.activiti.org/test','My process','myProcess',1,'1','MyProcess.bpmn','MyProcess.png',NULL,0,1,1,'');
insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('myProcess:2:5004',1,'http://www.activiti.org/test','My process','myProcess',2,'5001','MyProcess.bpmn','MyProcess.png',NULL,0,1,1,'');
insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('process:1:17504',1,'http://www.activiti.org/processdef',NULL,'process',1,'17501','test_model.bpmn20.xml','test_model.process.png',NULL,0,1,1,'');

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('2501',1,'2501',NULL,NULL,'myProcess:1:4',NULL,'usertask1',1,0,1,0,1,6,'',NULL,NULL);
insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('7501',2,'7501',NULL,NULL,'myProcess:2:5004',NULL,'usertask2',1,0,1,0,1,2,'',NULL,NULL);

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('10003',1,NULL,'participant','李四',NULL,'7501',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('7505',1,NULL,'participant','张三',NULL,'7501',NULL);

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

insert  into `act_ru_job`(`ID_`,`REV_`,`TYPE_`,`LOCK_EXP_TIME_`,`LOCK_OWNER_`,`EXCLUSIVE_`,`EXECUTION_ID_`,`PROCESS_INSTANCE_ID_`,`PROC_DEF_ID_`,`RETRIES_`,`EXCEPTION_STACK_ID_`,`EXCEPTION_MSG_`,`DUEDATE_`,`REPEAT_`,`HANDLER_TYPE_`,`HANDLER_CFG_`,`TENANT_ID_`) values ('2503',1,'message',NULL,NULL,1,'2501','2501','myProcess:1:4',3,NULL,NULL,'2017-07-10 19:52:41.366',NULL,'async-continuation',NULL,'');

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('10002',1,'7501','7501','myProcess:2:5004','部门审批',NULL,NULL,'usertask2',NULL,'李四',NULL,50,'2017-07-10 20:10:27.631',NULL,NULL,1,'',NULL);

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
