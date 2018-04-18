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

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15002',4,'source',NULL,'{\"resourceId\":\"15001\",\"properties\":{\"process_id\":\"process\",\"name\":\"\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-B5099D54-8A71-490C-8876-BF2DCCF4F9C2\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-F9078A81-F1F5-4F6C-A35E-EA522BE52553\"}],\"bounds\":{\"lowerRight\":{\"x\":210,\"y\":90},\"upperLeft\":{\"x\":180,\"y\":60}},\"dockers\":[]},{\"resourceId\":\"sid-B070BEA4-BF99-4511-B089-CE10EFC0F6AA\",\"properties\":{\"overrideid\":\"usertask1\",\"name\":\"Êèê‰∫§Áî≥ËØ∑\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateUsers\":[{\"value\":\"Âº†‰∏â\",\"$$hashKey\":\"2LV\"}],\"assignee\":\"01\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-82B43AC7-BD37-49A4-82FE-51BD23D33FF3\"}],\"bounds\":{\"lowerRight\":{\"x\":385,\"y\":115},\"upperLeft\":{\"x\":285,\"y\":35}},\"dockers\":[]},{\"resourceId\":\"sid-8F6F1797-A045-406F-B627-34D4FA7722C5\",\"properties\":{\"overrideid\":\"usertask2\",\"name\":\"ÈÉ®Èó®Áî≥ËØ∑\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateUsers\":[{\"value\":\"ÊùéÂõõ\",\"$$hashKey\":\"2PQ\"}],\"assignee\":\"02\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4004DF53-C10C-4C3A-BDDD-A0613EB477FA\"}],\"bounds\":{\"lowerRight\":{\"x\":535,\"y\":115},\"upperLeft\":{\"x\":435,\"y\":35}},\"dockers\":[]},{\"resourceId\":\"sid-B244B424-AFA6-47C3-A876-711AB3688592\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":763,\"y\":89},\"upperLeft\":{\"x\":735,\"y\":61}},\"dockers\":[]},{\"resourceId\":\"sid-F9078A81-F1F5-4F6C-A35E-EA522BE52553\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B070BEA4-BF99-4511-B089-CE10EFC0F6AA\"}],\"bounds\":{\"lowerRight\":{\"x\":284.78125,\"y\":75},\"upperLeft\":{\"x\":210.21875,\"y\":75}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-B070BEA4-BF99-4511-B089-CE10EFC0F6AA\"}},{\"resourceId\":\"sid-82B43AC7-BD37-49A4-82FE-51BD23D33FF3\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8F6F1797-A045-406F-B627-34D4FA7722C5\"}],\"bounds\":{\"lowerRight\":{\"x\":434.78125,\"y\":75},\"upperLeft\":{\"x\":385.21875,\"y\":75}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-8F6F1797-A045-406F-B627-34D4FA7722C5\"}},{\"resourceId\":\"sid-A02A72E7-771B-4A4B-997F-1EA48C43771F\",\"properties\":{\"overrideid\":\"usertask3\",\"name\":\"ÁªèÁêÜÂÆ°Êâπ\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateUsers\":[{\"value\":\"Áéã‰∫î\",\"$$hashKey\":\"2TL\"}],\"assignee\":\"03\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-130B5497-4AF7-4A52-A621-5788138773E7\"}],\"bounds\":{\"lowerRight\":{\"x\":685,\"y\":115},\"upperLeft\":{\"x\":585,\"y\":35}},\"dockers\":[]},{\"resourceId\":\"sid-4004DF53-C10C-4C3A-BDDD-A0613EB477FA\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-A02A72E7-771B-4A4B-997F-1EA48C43771F\"}],\"bounds\":{\"lowerRight\":{\"x\":584.78125,\"y\":75},\"upperLeft\":{\"x\":535.21875,\"y\":75}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-A02A72E7-771B-4A4B-997F-1EA48C43771F\"}},{\"resourceId\":\"sid-130B5497-4AF7-4A52-A621-5788138773E7\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B244B424-AFA6-47C3-A876-711AB3688592\"}],\"bounds\":{\"lowerRight\":{\"x\":734.640625,\"y\":75},\"upperLeft\":{\"x\":685.875,\"y\":75}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-B244B424-AFA6-47C3-A876-711AB3688592\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15003',2,'source-extra',NULL,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0-\0\0\0•\0\0\0Q.\0\0\0 cHRM\0\0z&\0\0ÄÑ\0\0˙\0\0\0ÄË\0\0u0\0\0Í`\0\0:ò\0\0pú∫Q<\0\0\0gAMA\0\0±é|˚Qì\0\0\0sRGB\0ÆŒÈ\0\0\0bKGD\0ˇ\0ˇ\0ˇ†Ωßì\0\0\0	pHYs\0\0ƒ\0\0ƒï+\0\0\Z˝IDATx⁄Ì›tT’Ω«Ò=y#ê` KED-¢]≠\"\"\"XPK‰©.]÷»Uo+VUT¨Ù^|’ZD°\"&D\n>Q@Öä,\nÚ2)\\•B@	·í êdÊÓﬂÅ3=&Úú$3ﬂœZ≥f2ôôg˛Ï˘ˇ˜Î\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÄZ‰„\0®oÅ@ aÀñ-˜é:x‡˘H˚˝òö6>_ >>~o\\\\‹ ‚‚‚…={ˆ¸ú∏\"Æà+‚ä∏E\0Të˝Úøgœû=œù“∂m[ìîîdö7on¢¢¢885§D &V¶††¿‰‰‰)--›xË–°Q˝˚˜œ$Æ@\\Wƒ(Z\0†∂m€6ÛÊÕø:Î¨≥ÃÈßüÆû6J ŒŒ6YYYáÅ¿>}˙ºK\\Å∏\"Æà+4—\0ıï\0ÿÀØ∫tÈbZµjEÍNNNé›µk◊¿Q£FeÃú9Û[‚\nƒqE\\Å¢\0éCS,≤≤≤TêòòXÓ˜áwöú\rÛLŒ∆wÕû-üõÉ˚∂ò¯¶≠ML|\"ØÜ‚‚‚îƒÁ‰‰9r‰á©©©ªà+‚ä∏\"Æà+4tL¬RZƒ™9·öbQQ˝öøô¬=ﬂÈóòÉπﬂôm´ßõ¢ÇÌ¿Z–¥iS”æ}{ttÙüâ+‚ä∏\"Æà+P¥\0@⁄uGãX5\'¸xr∑~aJé(wøÇ=[ñp\0kIªvÌícbbŒ]¥h—eƒqE\\Wƒ(Z\0¿C€Ñj◊ùäÊÑ:AÔ§z5Q{Z∑nùcØn&Æà+‚ä∏\"Æ@—\0:ØÅ∂	≠H†¥∏‚\'8BmjŸ≤Âˆ™7qE\\WƒqÖÜ.ÜC\0 ît\"6Ì\nÉ˙g?á”ÏU+‚\nƒqE\\°°c§@HÈbúà≠Å|˝bà+Wƒqä\0®Çÿ&ßV¯ªòxz<A\\Å∏(Z\0†û%üuπââkZÓ˛Ëÿ&&˘Ïû W Æ\0ä\0®_ÕZu1M[û‹˚õ∑æê‚\nƒ@—\0ıØ¥¯Pπ˚JÔÁ¿Ä∏qP¥\0@˝:r`∑s&È¬›À˝Ó¿ﬁMf€WØ9èà+W\0E\0Ñ\\~ˆ\Zõ\0L3˜m©1Û∂ö¨ïSÃæmÀMÄs Ä∏qD∂éPØ‘πÛ€èúû… óqø˜F”˙º&¡Ÿ∫ Æ@\\·åë\0ıJ=ëïM\0º‘√πu’T à+W\0E\0‘-ıDVW¿_¬q‚\nà\0LPØ:˜ù»A\0q‚\n¿	1“\0\0\0Ä¢\0\0\0\0(Z\0\0\0\0P¥\0\0\0\0@®±\'$ddd‹ævÌ⁄;vÏ∏8;;˚îÇÇÇò¢¢\"hﬁºyqrrÚˆƒƒƒÂˆ·Oç;ˆé\Z\0\0ïë#G∂+))‰Û˘Æ≤?^l/mÌ•ôΩŸKéÕe÷Ÿﬂ}ùûññˆEf≈ ﬂˇ˛˜W\'Nú8|ÔﬁΩ1]∫t1Ω{˜6gûy¶±EäIHH0∂pÒÌﬂø?Ó˚ÔøÔêôôŸaÕö5#x‡Åmò¯Í´ØN„(\0Ä∫2|¯AˆÍ^øﬂﬂÀ%q«yHÇΩ¥∑økoØïññ˛Ô∞a√ñÿüßœö5+ï¢h‰V¨XqÁ”O?˝◊¸¸¸x˚ü€tÎ÷ÕDGGóo	l·¢K´V≠Ãœ~ˆ3s€m∑˘÷Ø_vzz˙+)))ÊÊÊﬁ0gŒúsD\0@m±πâ\nëWÅ@ˇj<Ω∑}^o˚\Z)∂àπ#\\ÛäÑ5˚ü8ÊΩ˜ﬁ[8c∆å´h~˘À_∑X98ˆ˝…\'üt~˚Ì∑øæ˚ÓªˇõQ\0\0PÜ:,**ÍØ~øˇT˜>Â*?˝ÈOÕ•ó^j:uÍdZ¥haö7on<hÚÚÚLVVñYπr•Y≥fç)..vü÷”>oÌ·√Gá„®E¬∫`Y∫tÈÚ≈ãˇ|Ãò1Ê‹sœ≠—ÎıÔﬂﬂtÓ‹π…§Iì˛|◊]w≈Oõ6Ìeé2\0\0®A¡rΩ-XRm¡Ì+Í`Ì◊Øü3Î£¨SN9≈πú~˙ÈÊÚÀ/w\nò?¸–,X∞¿îññÍ!Õl˛Û¶-\\l·V¨ÏÜ∞•ñπsÁ˛¸¯Cç◊Ÿgümû|Ú…&∂ÅôdÑQe\0\0PÕÇE#,Ûmë·,*DûyÊ-¬?n¡r<\ZÅ—„ı<≠—uŸ◊|-‹ÚäÑ%≠aY∞`¡’˜ﬂ•ˇ„Wñ^Ô—Gm˚ím:s¥\0@Uh\rKttÙ_›ÇÂ¸Ûœ7&L¯Q·QzûûﬂµkWo·2%úÚäÑÌ∂p·¬)Z√R[#,eiƒeË–°ÒQQQØsƒ\0@ï®®iÓ\Zç∞<¯‡ÉŒöïö–¥±ﬂ˝Ówﬁ¬GS≈^£h\Z®˘ÛÁO◊∂≈ZÉRó–$))©”ƒ\0\0@ei[c[∞\\£€Z√¢B£¶ã∑p—,œ¶C=√%O°hAX—(KffÊ-⁄÷866∂Œˇ^JJ ©QQQ˜F“1∂«vº\Z‹ﬁΩ{≥ëà+W Æ™.ò7h—}ußÑUDØw˝ı◊{s£ä†Å—ôÓwÌ⁄£mäC·¢ã.äãèèÔ†π©tòü≤\r‡º6m⁄ÿ˜\\€p_7d»êf\rıÕæ˛˙Î&;;€π˝›wﬂ˝Ëw⁄*ÚD^~˘eSPPPÈøµb≈\nçÙU¯˚úúSXXXÓ˛±c«Úü∑ë≈ï|¸Ò«¶§§§Rè›Ω{∑Y∏paµ˛q9q•œÚ´Øæ*wø‚L1TUGé©woºÒ∆I„w⁄¥if„∆çŒÌıÎ◊Ôﬂ∂mqu4ÆÚm\\ÕÆJ\\ÈL˜ˆÍj›vw\n´◊]wù∑Û∂g8‰)Ù< ¨¨]ªvDE\'é¨+]ªvÕ˘Á?ˇ9ÿﬁúI«⁄ÁÛ5±W7ŸÜ˚&{ºm£Ω¿˛¸7[ƒ-ô1cFQCyü⁄«˛é;Ópn˛˘Á*lùà _˛ÚÛ¡T¯\\≠âö<y≤vå&\0Î÷≠3=zÙ8Ó„µı§gø¸rZ∂lÈ|A-Z¥»,[∂,òhÆ^Ω:ò\0˘ÂóŒ.0ë™±ƒïS¶Lq¶b¸√ÊÎØø6:t0Mõ6uÓ‡ÅLÎ÷≠ù«jèO?˝‘˘å/∫Ë\"ß`éãã∆hœû=Mü>}à´è´‘‘T\'Ütr„¥¥4Ûìü¸DkÃÃô3MÔﬁΩÕ›wﬂÌ<nÔﬁΩ¡\"BÁÌ–œä)≈¡¶Mõúuó˚˜Ô7ﬂˇΩy‰ëGú«)F€µk¸[jó/_nzıÍºØÏc‘^jÊÇ(ûOä€€nªÕ|ˆŸgŒ{ãd6ÆN±W∑ÿ∏∫ÂX\\ÈÂç≈ï˝ˇ8»>œIRîØ$\'\'◊…{”Æbä#õü∏w5˙<Ö¢ae«é´a•K/Ω¥ÖmÆä¥¢•-ˆbØá∂\r˜<{{∂˝<>X≤dII}º!ıJÍw˚ˆÌ⁄˛⁄I˙ ≥ßûz™˜ãƒÃõ7œi‰’;•«wÓ‹ŸúsŒ9¡^E}°oÿ∞¡yLLÃ—ÊÛˆ€o◊¸dÁ∂zH:úõ¸¸Ûœõ7ﬂ|3ò∏Í9CáunwÔﬁ=X<)9QØòŒßûzäˇ»\r8Æ‹\"C±£›~tYºx±sˇŒù;ù¡)—‹≥gOs◊h›˚ÔøL8ïzC%úe{ƒâ´»ã+≈Ä}Ê˜øˇΩS˙¸ıŸ™˝QaÍ∆è(∆‘>©”ÂÊõovbC#r˙ºOW\\qÖÛ8ÆÙÙts¡\rçÍËyÓcñ.]ÍºÆ˛æ⁄C{lúkçPÎ5œ8„å`°≠ÈGë^∞TW™Ü)Æ4≤gãì9e„ ﬁwï{ª¢∞⁄¢◊˜-ç>O°hAX…ŒŒ>E=L°‘±cGı¥\\Ã—äwÓ∂m€™ÁÈ3{{J®{4’≥≠oÕû=€˘\"wì∏æ}˚öfÕéé‚œô3Á?ç°MÜ‚‹÷¥0%â˙Ú%}ôôôÊŒ;Ôt^”ÀÔ˜__‘ªÈ˝{nbÈr{-eÓ‹πNØº7qP≤kèQ‘@„ M^zÈ%Á≥TÒrﬂ}˜9£öä(ÍΩV—·•“π*ã∏äº∏≤œå?ﬁÏ€∑œº˙Í´ÊíK.1ˆ}ùkl¿ÄN·vñàvúRã£bBEè>oç¯π≈EŸò“Î∏‘	£‚√›\"W∏FyDãäp=G1Æ˚ﬂzoﬁı¢7›tìô>}˙è:Äp4ÆÏeÑç≠m⁄¥Ÿo„ÍS˚ÛT≈ï=∂{Úá:}Ì€∑˜˛ÿËÛäÑïÇÇÇ\râÜRqqq+€0ïÿ§aü@9Íy∫—^ﬂ®/A{å∂Tg^vu©«YΩÅ˙¢ﬂ≤eã3z¢L∑\'⁄õ\0x>—n.^W^y•3}GΩïﬁ^Ú]ªv√≤=‚Í…t©∑Úõoæ1è?˛∏”ÎÆ$◊=áêw\r÷ü˛Ù\'\'qQèg]S\"´)%ç0vÎ5Æ‰¬/‘tTßòPÇÈù„Ø)9Ó»áTßGö∏ä¨∏“(â>o%ˇ_|ÒÖ3uı·√N /º‡˜ﬁ{Ø”)∂Ù≥äµi*N’æ©PqGZ‹©Üﬁëñá~ÿ¸ÒètFäEkU4Ç£—Ë¨¨,gDPèqD≥fŒEØ©ÈKzå\nΩ7∑cPØıË£èÜ¨`i¨qÂÛ˘ö€∏\ZdoR\\©~tW◊˘Jô◊oI—4 j‹Ñ4TÙec%˝_zúO‡§:hjç¶3Ñ*î@Œö5À¥i”∆I˙Éø◊» ∏q„Ãò1cúDOãùœ;Ô<Á˝ÈÀﬁÌŸ÷úp+˙í÷∑∑hQè˜âzƒ]öf¶ãﬁãzºoΩıVÛ +Ø8=a◊^{≠Ûıê>ˆÿc!KîÄ(ÒÉÿ\rY\\i˝ÄF›:uÍ,.4Ìp’™UN≤(IIINú‘‰s$Æ\"+Æ.ªÏ2ßç—:ë#F8”[ï§ÎssMù:’<Ù–CN—¢BX;®hU{§‰Ùd#-në´BCTÏ∏#œ\Z	‹∫ukπ¬YèÎ≠∑Ã®Q£ú¯πÒ∆Éœ’˚—ˆ∫°FqÏ≈®≠mé+RÊÛIh‰«ç¢·%>>>`U_(ó=zÏyÁùwZÿ¬ÂÈ9Ãï˘¬ò£ΩI?ZDbè—ÊÓ›ªw≈õ¸◊ø˛eûx‚	ÁÀ[”rÙ¨k-x÷¬iMÔ-BuG\\\r\Z|æíN=ÍŸ”îä≤ÎjÉÊ\Zk ôKSŸB9ÕB£GJTl\"qU˘$@Èµ`⁄ç%ä)))¡ùÊT\\Lö4)∏\0:‘à´∆W¢M>‘^È≥R¢)~}Ùës[ﬂi⁄H‰◊ø˛uÒ⁄“V≈ç⁄0⁄∞¡;“¢ÑXÌûóFg‹—ﬂ˙[zm›>Ì¥”ÇèS£¢DøWU∂8—cCY∞4“∏Úˇ±NMo\\È˛(∑3¢.u≤x4®çL(ZÒãm√ π€±±±π∂*JOOü	«xÿ∞a6÷∂!.=∂+äO	Ä˝9œ˛ºÿ^“lA˘±Êà€d*ä˜©È;Íπ‘î\n—Ì¿£DΩîÍ—‘Üz3Gè]Ó˘7‹pÉ3-CSo¥TEºÎ N„)õ0ø…¸~gì\0˝}ı‰z•P“‘M;vÏ‚™jÙ˘›u◊]Œm≠çrßdπ¥Éì>ÁÍ.V&Æ\"+ÆÙŸijñF>4ÏÆ3çûi„Ô»[ŸÁ*FÙ\\8Ó¥1ç2´ÄÒv∂®É∆}ÔHã.ﬁëuÓËÚ€ﬂ˛ˆÑÔ[ESŸÿ\'Æ%«\nï({U6Æäää2ÏÔú°ZöuY¥Ëı=ˆP¥\0\rHã-∂ŸÜ∑S(ãõ$Ë‰•ëzÃmÉ|ÿ6∆Ò«zêî\0høUe[≥õ4i≤ÿ~ÒÁ’◊{Û&åÍ±‘Œ9«ÊWò\0∏‘ã®—\Z-@=—»ù\n!-àuyßÒÙÎ◊Ø‹„8‡L3S/ºíÔ˘5*{Œ‚™·ƒUYZ‹¨ÌÖU¥‘qYqÂv§ËZüóvÚ∫Í™´*|º;L#\"zév\ZS·¢ûıoø˝÷!Q!RvÕDó.]é;“¢51Zà2*òµ˛≈•iëﬁ≈˝J#\'≈û∏ä9Q\\ŸÇgù[¥lﬁºπ÷O,ÈÂ˝¨¨u-@íòò∏‘6ƒù¥Ìh®,_æ\\=qK#ıòk®’@øc/⁄/¿\Z yÙÂØ^Hßµ^∑Œô>q‚DÁã‚DΩ‡Í≠÷(çŒœ¢≈™ÉvíÇÅñ+`ºâeeí[ç‹hG=ûZÌ-ûºªôE∫ÜW¢^i7˘”.K.ıjÎwöv≤Q-®W‚®ÿºÊökà´é+πäu∏˝‚ø®∞SEmìFaTƒ™8yÌµ◊ÇÒ‡Ól®x‘ñ«ä=ﬁÀ›Qº#-eitNÖ∞€…£ˆRq™çJ42≠øÔÈöBÎ.ÓèPQUâ+[‡,µè◊9Sú—ß5Âq\rá<Ö¢a%??ˇõ0‹QZZ\Z¢LŸ/õŒˆ˙ﬁH;÷\ZÚ∂WKÏ¶{\"≠ºÜˆuMè–µ÷±àvP“TmI´q¥]®∂ÏT≤†^K}ëkaÛ”O]¢§ëÕ◊\ZÜ[nπ≈˘ΩŒÁrºı-˙bwã§ä®g≤Ï\\pı^æ¯‚ã&‘;`W’£œXã≥›ƒ≤l·.Vvi(≈TYä9€f91°›øNÙ˜à´é+ù»VmìªÂ∞Œ-•T±Ân\"*$¥©à6jpµq\ZIvßii∫ë‚·ÿw¢≥1ƒYgùUÓoj\nô⁄¿„ç∞∏ªò©òrã\ZÌ@Áé™‹sœ=Œ»j?Îr§ „ ~ÆÛméÚºnÍ°πππurÇIM\r[Ωzµ:U}«Ózß—w:êÊ\"‹å3Êﬂ#Gé<\'=?.L≥\r˜ŸÈÈÈWF Ò6lÿxüœóeËw™”Cπh—¢Ä˜Ã°Pˆ¸’}Ã…h FEªˆ‘’ﬂ¨©¸„⁄e G\\Ö&Œà+‚™°®j\\5·W√á_dûæ∫≠\r™rß “lÅwﬂ}◊˝qY8‰)å¥ Ï‰ÁÁè{ÀÍ÷≠[Lè∂‰ΩÒ∆ÿÜÎπH:æ∂·õÿË\Z∫J$pµë‰U5®Ôƒí∏\n}úWƒUC—ÿ\nñ0ã´óÌ≈)Z,X‡åÊ◊Êàï6axˇ˝˜É£,6Oô\Z«=ä–C∏ô>}˙ú¬¬¬çjÍ“‰…ìÁ˙˝˛;vÏHÁ®\0Ä ò5k÷|{µD∑KKKùıhÓ:°ö“f/æ¯b©ÕO‹©e·íßP¥ ,ÂÁÁﬂ8oﬁºC5›¡ß\"Ô≠^Ωz†œÁ˚Õí%Kÿö\0\0T≈Êÿ6ƒŸŸŸÊŸgü≠q·¢Ç≈@ÅÌ€∑ª”L\n√)O°hAXJOOœ:r‰»ol#p∞∂°⁄∆‡ÀIì&]lÇáfÕöım\0\0P’<%háß†–Ä&Lp¶vUáû˜ÿcèïfdd◊¸ÿ<et8Â)-[©©©iÖÖÖ˜è?æ∞∂F\\4¬Ú√üYZZ:≈6©e\0\0P≥gœ÷¥≠ﬂ∏ÖãF\\∆çg“““ û≤Bzú›?Ú»#ﬁÌl6.‹ÚVÎ!¨Ÿˇ¯:tË¡\'ü|rÍ‡¡É£Øø˛˙¶’\\úü˜‹sœÕ_µjïˆ8gö]\0\0P∂‡òaÛÌ@6≈ÁÛµ–\Zm”Øuπ›∫u3=zÙ0;vtN™Ì¨5LÖäNπzıj]¸á÷ Ñ;¬¢Û≈‹éy\nE¬ûz2Ü\r∂‚Ì∑ﬂûnÅSRR/π‰í&ï|z—¢EãÊœú9≥SIII\'€†\\Õî0\0\0P€yäÕ1^s∑BVÒ¢wÍrﬁYSÀ¥Ü%\\ÛäDÕµW◊ÿFa‰…ìG«≈≈uÌ‹πÛÓû={6Î–°C\\rrr[ùÈ¸–°C;ÛÚÚÚ7lÿ∞iŸ≤e—õ6m:ﬂ6:ã‡À999©,∫\0\0uîß\\´<≈)∂xÈ]Ö<}ôΩL˜<Ö¢ë÷(Ëå∞Ôå9≤›˙ıÎØ[∑Ó\n˚sw{—–lÇΩ$ŸK±ΩhÛOÌeÙ±Ü\0\0 dyäﬂÔlã7Oi{,OQæ¢]«÷ŸÀR=6RÚäD§¥¥¥Ï’«.\0\0\0‰)\rªá\0\0\0†h\0\0\0\0ä\0\0\0\0-\0\0\0\0@—\0\0\0\0-\0\0\0\0(Z\0\0\0\0Ä¢\0\0\0\0E\0\0\0\0P¥\0\0\0\0\0E\0\0\0\0ä\0\0\0\0†h\0\0\0@—\0\0\0\0-\0\"±—âä\n¯˝~D`?á≠ˆ™Ñ∏qE\\W†h\0èÑÑÑ]˚˜ÔÁ@4\0˚ˆÌÀ¥WÎà+Wƒqä\0àçç]ñüüœÅh\0rrr\nÏ’‚\nƒqE\\Å¢\0<äää˛g«é≈Å@ÄÉQø≤rssªŸÎπƒà+‚ä∏E\0xÙÍ’k•M\0æŒŒŒÊ`‘£ÃÃÃEˆs»æˆ⁄kWW Æà+‚\n-\0PFQQ—®¨¨¨Éåzêóó˜nnnÓ\r~øˇ‚\nƒqE\\°1àÊ\0µ‘‘‘=∑ﬁzÎ Ω{˜˛*)))!>>ûÉ¬ ##£´œÁ˚Ø~˝˙-#Æ@\\Wƒ(Z\0†3gŒ‹<j‘®ØvÓ‹9»~!HLLlbØ90u\'+33sNVVV%\0}˚ˆ˝Ä∏qE\\Wh,¯†^}Ú…\'ù£¢¢^åââπ§U´V?¥lŸÚ¥§§§∂ˆ>N\rÈº⁄&TªÓh´ÊÑkäEˇ˛˝3â+Wƒqä\0®¢Ö^ÏÛ˘n∂7{€Kw{I‡®‘òNƒ¶Û\Z,±óπë∏àï∏\"Æà+‚\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@ıˇ&Ó»â\0\0\0\0IENDÆB`Ç',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15005',2,'source',NULL,'{\"resourceId\":\"15004\",\"properties\":{\"process_id\":\"process\",\"name\":\"\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-5DD8F96B-84CB-4FA8-B27C-C5421C8C531C\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-FDE20EED-F5BA-4B75-916F-911E90D65739\"}],\"bounds\":{\"lowerRight\":{\"x\":134.25,\"y\":103},\"upperLeft\":{\"x\":104.25,\"y\":73}},\"dockers\":[]},{\"resourceId\":\"sid-13B1823C-CBE5-44B7-BD28-CC91B12C42D7\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-DC155310-13DD-43DB-98BB-C3CCCE9E0E39\"}],\"bounds\":{\"lowerRight\":{\"x\":363.25,\"y\":126},\"upperLeft\":{\"x\":263.25,\"y\":46}},\"dockers\":[]},{\"resourceId\":\"sid-4E4B7821-F579-4C80-A2D8-7B89089A3FEA\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-661C9462-5053-45B3-A872-5DC4A44BECDF\"}],\"bounds\":{\"lowerRight\":{\"x\":565,\"y\":125},\"upperLeft\":{\"x\":465,\"y\":45}},\"dockers\":[]},{\"resourceId\":\"sid-75DD681D-9ACE-4FB6-9506-5FAE11D4B4D5\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":733,\"y\":99},\"upperLeft\":{\"x\":705,\"y\":71}},\"dockers\":[]},{\"resourceId\":\"sid-FDE20EED-F5BA-4B75-916F-911E90D65739\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-13B1823C-CBE5-44B7-BD28-CC91B12C42D7\"}],\"bounds\":{\"lowerRight\":{\"x\":262.99224063637456,\"y\":87.84125376944716},\"upperLeft\":{\"x\":134.64838436362547,\"y\":86.51812123055284}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-13B1823C-CBE5-44B7-BD28-CC91B12C42D7\"}},{\"resourceId\":\"sid-DC155310-13DD-43DB-98BB-C3CCCE9E0E39\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4E4B7821-F579-4C80-A2D8-7B89089A3FEA\"}],\"bounds\":{\"lowerRight\":{\"x\":464.3505982213616,\"y\":85.7489496813946},\"upperLeft\":{\"x\":363.8994017786384,\"y\":85.2510503186054}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-4E4B7821-F579-4C80-A2D8-7B89089A3FEA\"}},{\"resourceId\":\"sid-661C9462-5053-45B3-A872-5DC4A44BECDF\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-75DD681D-9ACE-4FB6-9506-5FAE11D4B4D5\"}],\"bounds\":{\"lowerRight\":{\"x\":704.453125,\"y\":85},\"upperLeft\":{\"x\":565.40625,\"y\":85}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-75DD681D-9ACE-4FB6-9506-5FAE11D4B4D5\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('15006',1,'source-extra',NULL,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0∞\0\0\0I®RÎ\0\0\0 cHRM\0\0z&\0\0ÄÑ\0\0˙\0\0\0ÄË\0\0u0\0\0Í`\0\0:ò\0\0pú∫Q<\0\0\0gAMA\0\0±é|˚Qì\0\0\0sRGB\0ÆŒÈ\0\0\0bKGD\0ˇ\0ˇ\0ˇ†Ωßì\0\0\0	pHYs\0\0ƒ\0\0ƒï+\0\0IDATx⁄Ì›tUıù/ùì\0·!o$z)Zä£Ã¥#cgy-8E¡:Ì-À©%tï>¨ù^ΩÌ≤ÍÌm≈ugÍ™3Ìh;mù\"*ñ2ÿ*UJªäØçÄ0ºD^A 	! Å$Á‹ˇ?%^\nDÚ8I>üµˆ:\'áú÷/ÁøÛ˚ûˇÔù$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0–rî\0\0öO&ì…ﬂ∫uÎˇ<x‡‰√á_|Ë–°¸t:≠0g€∞‰‰d∫uÎˆN◊Æ]ãkkkˇ˘Í´Ø˛É™Ä\0dπ\r6|94DSjjj˛2‹ˆ“5KSîtÔﬁ}håVÑ∆ÛÅ+Æ∏‚7™“>Ö–p{EE≈√¯ËQPPêÙÈ”\'9ÁúsíT*•8g)ÓkB K8êîóó≠ØØ__]]=y¸¯ÒkTÑ À¨_ø˛3·èˆ£Gè†)jπ¶h◊Æ]È–mÆ≠≠ΩÈìü¸‰*’i?ﬁ~˚Ìß∑lŸÚŸ°Cá&Áü~C(§Âîññ&%%%’!pO\nceÅä@Î»U‡˝lÿ∞·ÀÀÀ\Z\Z¢ó\\rI“∑oﬂ$??_s‘LbªuÎñÙÓ›;6ù·Àú!H|È∂€n€<sÊÃ’*‘>ÇCÿ>;bƒàd–†A∆F+à^ÙÔﬂøÀÓ›ªˇvÚ‰…´gœû˝ñ™Ä\0dApÿ≥gœ›°) —µjSî€g¶LôÚÊ£è>∫NU≤W\\™TRRrW1\0ûË»¡]I˘∫ßíÚıíä≠HÔ€ötÎyní◊≠∑‚ù•Æ]ª∆±“-åïäääŒô3g∑™Ä\0¥ëeÀñ]ΩwÔﬁGbp8USTwÙP≤{„‚§,4F{6.JÓYü§ÚÚìnΩ+^34E˝˙ıÀ---˝€õoæ˘7ö¢Ïéﬁ¥i”Ôœ;Ôº.1\\ü*8l_ÒHRSUæ∑><!ù‘VÔKîˇW“s¿p¢ô∆J*ï:ºˇ˛Àfœû=KE†eY¨4©∂∂vﬁ–°CO2È∫Ü¶®r«kI˝—É\rè≈©tÕø\'ï;ó)^3ËŸ≥gÚ·∏{héVçÏœ™éé«8ú ﬁm/5ÑÏ•Îè&[ó*`32dHˇºººãñ,YÚ◊™¬–äãã«÷’’ù◊TS¥øle√ß™ßR±yIí…8SsıOÂÊÊ˛ô¶(;≈”±∆4µúØ˙¿Œ&ü€‘¯·Ãú{ÓπÂ·ÊÔTÑ†\rÑfËÖ¶(ß©¶ËHUiìœçü¥6ŒFpˆŒ;ÔºDSîù‚u‚ô«öí©Øm˙…v≥\Z8p‡7◊®@8zÙË®˜jä“È∫˜|æôáÊ”∑oﬂ~©TjºJdüx∏xÄ;m/¸b © <\0m†∫∫zê¶(;ÙÍ’+^‚œU\"˚ƒkt∏÷Iñ44¸=‰©@»d2)MQV5EŒé◊uÈﬁØ…ÀÎ&ú¬–Yö¢¸æÔ˘Ôy]{)ù^ˇ°WÖ±–Û§«sªtO˙_pµ¬–9Ù9od“µÁ…Áµœ…I54E9)´†◊†IœÅüÚÒsŒ˝Ñ†sË“Ω2‡ÇOúÙxºË’π]Ø@pL}mıIè’©R@x\0:[St¯§«2È⁄Ü`AgwÙ–û‰ÌÂ3Æº~¢CÔlLﬁ^6£·{\0Ñ†Cã·†|˝”…ûMø=Èﬂ‚5∂˛ÁèìÉäNkÈäNÔ€⁄‰˜Æ‹ñîˇ<Ÿ˜ˆ8µ1–nXî| ±·â¡·Ω>1≠≠©Lv¨¸e“o»®d‡GÆk88:É8.vΩı\\√Ã¬ÈÒ¯˝U{÷\'Á˛Ÿ\rI~√•\n\0≤óô‡¥ƒu€±…Ÿæ|Êi/µÿ∑£8)yÌßß\\∂QúI8›‡\'°|ﬂ÷d€Îˇ¶ÄÄ\0tekü<£Â\r≥´Ê&5v*\"ﬁŸÔìyü´∂dÀñÄoäö„˘–\\rÌ?( <\0˝¯ó\0:9Àñ\0\0\0·\0\0\0\0ÄVÊò\0\08Ö¢¢¢!uuurrr∆Ñ/GÜ≠ lΩ¬V∂ÚL&≥2¸€+πππOÃù;wá\0\0\0ùÃ§Iì&ÑõØß”È—!t=≈∑‰áÌ¬oÜ€	ıııˇTXX∏4|=ÛÒ«ü#<\0\0@@e2ôÒgÙk¬ÛÆ	ØÒ’&¶Ãü?ì@÷zÌµ◊nZΩzıî]ªv]Q^^ﬁß™™™KMMMíóóóÈ›ªw›¿ÅwıÔﬂYAA¡˜√õ˙u\0¯ˇ&NúXòJ•~ñNß˚5>ñõõõ|Ù£MÆºÚ d¯·Iﬂæ}ìsŒ9\'9|¯pRYYôîîî$≈≈≈…ä+í⁄⁄⁄∆ß]û˜∆§Iìæ÷g!ÑávÓ—GΩ€∂m_oŒ#FåH∆éõ|ËCJBPHÚÛÛì rbêÿæ}˚ê5k÷yı’W\'Lù:uwxÍ}˜ﬂˇ*\0?Ç√úrC√ß>ı©d‹∏q…†AÉN˙˛=z4lÁü~r’UW5âÖ&œ?ˇ|R__ø•W&ì˘e˘°G{Xx†Õ=ı‘ScW≠Zı´uÎ÷ı),,L.ΩÙ“Ü7˙âbÄà[|„_vŸe…≠∑ﬁöÑÁù;oﬁº›yÁùﬂ<x‡∏GydÉä\0ù48ƒá9°Ÿoh§b ¯∆7æ—aÏÈä3EEE…Ë—£ìü¸‰\'…ˆÌ€Ø9#àöé4·T≠Ì–cè=ˆ¢Eãñ|¸„Ôsﬂ}˜5ÑÇSá¶ƒ†Ò˝Ô?ÁÜn\Zû∑zÍ‘©ﬂPU\0†≥â«8Ñ^Ëgç¡·‚ã/N¶Oü˛ÅÇ√Ò‚Û‚Û?ˆ±èΩ˚XxÌüá\0qâ@õX∞`¡/ó/_˛•ªÓ∫+Á”ü˛Ù\n\r\'\Z?~|ÚùÔ|ßÀ°Cá˛i⁄¥iˇ[uÄŒ$ïJ=‹xåCúq˝U√1\rg#.g:aÊ\".aö!<–ÍfÃòÒØKñ,)˙Ówøõ\\t—EÕÚö\\pArœ=˜‰UUUMøÌ∂€æ¨ \0@gO«\ZÇ√ÿx?~˛≥\r«à;Ó∏„¯yØ?o≤@´˘≈/~q≈≤eÀævÁùwÊúÍ¿ù≥_oÍ‘©]ÍÍÍÏH”j\0Ôß∞∞ˇƒ‚ökÆq tæÒ˚ı∆;Ò‡Ë3]™‘î¯zqïH£L&Û’éPw;Àvb€∂mœÖ7`™πfNg >ˇ˘œ˜ò?˛ºÂ•*ﬁav¨◊îóóøºtÈ“:’ÄS˙ø·z2x‡ 0^ûÕ……ô[WW˜rÿT\Zh7„˜ƒâìJ•fùÓ¯çWéNß”Ô7ûY©%\\˝ı…sœ=◊x\Z◊´„1O<ÒDâ@ãz¡Ôﬁæ}˚ÄxåBKäØøxÒ‚èƒiµé~uƒN‰õ¬ŒÍw·˛Ã∞√Z¶$p≤\Z˙Üõ…°ô\Zâw¬òy&<6Ø[∑nK{Ï±\ZÇ¨ø=¬MaøÖa¸8ˆA¿/ﬂk¸Üê1!|O√ö¢x\"ôxä˚ñœ¬OlÛ⁄kØ5>Ùπ∞˝≥@ã⁄≥gœ∑BCü”•KóˇYS¶LÈ˘„ˇxZ∏+<t√èm∑ájy∏}:lÛÃH@ìÑÌ°˘BMMÕ¡0nûM∆Ç≤≤≤gç»zΩ√vsø7áÒ[∆Ô¸0~}‚¯\rèçiº?j‘®˝≈◊?.<åhQ≥fÕ˙´◊_Ω_L≈≠!ûZ,//ohGòV„î\nbàà[AA¡éâ\'.\n;ÿyªwÔ^™)ÇSÍ’$¬òyg“§IK‚ÆŸå¥˘aª%åﬂ[\\zõ%!4Ãà„7‰äëçﬂ4lÿ∞˝O\\x·Ö«9≤ΩUx»r°©˚˙»ë#sŒÊî¨‘W\\Q∑d…ív?≠∆˚\Zv¢_é[ÿ©Ó?∂LcÆ¶(˚TTT$+V¨à«∞LWç65 .ã∑Ö°Òàñ⁄TVV¶*∆	Ì@¯˚O£tc√7∆Ò§ˇ-.-jI\'º˛@·Åu‡¿Å1ü¯ƒ\'ZıgÜ∞“ˇÖ^∏Nx8µõn∫© Ñπ¸3}~ÿqÑùXõ=øâùjü‰ÿzoMQˆyÈ•óí7ﬁx#ﬁΩG5≤™õ’0^√8°˝y˜å£Õuz÷¶ƒ”∂\'øΩNx»r{ˆÏœÑ‘özˆÏœ\np’˚|z◊˜:√—Î,ìw¡YæÇ∂º°·h”Ákä⁄ü¯¬∂m€bctØj4ª”j4C∞Œ‰ú0¯¬ó[.ø¸ÚaJhúê’„7Üo:å◊º∆o|º!@TUUµhÄ8|¯Ò_∂˚ô}·!ÀÖ7\\èñûN;Q¸‰&®^âOoöR~ñÉˇ¨ûvxÂ·˜s∫œˇ¬˛å°)\Z‚Wùÿp∂éi”¶MWçÊUXXxœÈÜxæ¨7ø;∂ºoQ\\ﬁ˜≈/~1£ä∆	Y7~„í§˙∞≈3Õ§¬òMù8~kjjV\'<ôHRYYŸ¢·!æ˛q*ÑZ‘—£GsÛÛ[˜CÚ±c«&,àwÔ}è?™a\0ûÈy–ûÕ‡˘ÄÕÛIB=À;Àö˛∞c˝ ·ai®ÎØ∫wÔ>\'‘ßRSD\'õéTc`8∂øZ∂yal¸.é\r%Ç¨√BºòB˛±1úzØÒ˛>Æl[∂liˆƒØ§§‰¯/W\n¥®.]∫‘Ötú◊ö‚X˙>ÚƒOL˜ËﬁÅaV*ïz˙Ò«S9‡›Ü„…∞-˚ﬁgù@\0⁄Ö‹c€içﬂ∑ÔÖúúúxrò§∏∏83fLã˝«‚ÎÁ·Å’£GèCïïï}\n\n\nZÌg∆µa@Ω£˙÷é˚ùìNßÁŒõ7oçr@C#?ë\\\ZØP{Ïåcf†èﬂºººßÎÎÎˇ%ﬁ]µjU≤wÔﬁπP\\\\≤¥|˘Ú8ìﬂxÃ‘ì¬-*§Êı€∂m˚Î÷õ7oﬁ‚J’ÔP‚2±8u;”≈·‡O|7ÑÈí∞Ø}“tûÒ;wÓ‹ì&MäÀuØ\r!\"y˛˘Áì¢¢¢fˇ.Z¥(^Õ∫18º‹Æ°%<dπÜ{fıÍ’£ÆºÚ Tk˝Ã‚‚‚}IòV„è;÷∞c‹îNßüù?˛AÂÄ?˛êˇÉ*@ßø?\r€µÒN£Gèn÷c∂oﬂû<ÛÃ3ÔŒ:Ñ†Ûo°Ó)oΩÏVYY9{˘ÚÂGb*n-oºÒF<\rÎì™ﬂ1v¨ÛÊÕ{Bp\0Ä?ı¯„è?nñ∆˚±œz‡Å\Zñn7áxz÷|∞>ùNø;ÎPVVˆÑ@ãã”j·ç∑6Æ«k\r≈≈≈kjjj∂vÑi5\0Ä˜1%9v»“““‰á?¸·YàB…Ï‹π3˜ÿCsrræ“QñÌ@xˇ„¨Y≥™Zcˆ·°á oáT\0ËË‚á•ôLÊép∑°±ﬂ∞aC2}˙ÙÜ%Gg\">Ô{ﬂ˚^˝Í’´ﬂΩ®dË´æ÷ëŒh(<¥qZmﬂæ}´.\\x§%ŒÏŸ≥_¨ÆÆÆË(”j\0\0Ô\'.Ô\r7_iq‚ÓªÔé´?Nº¿[ì‚˜Ö í|˚€ﬂ>~∆!û	ÍÓ–«ÕÈHır¿t;Q[[[ÙÎ_ˇzÂà#Ú.∫Ë¢‹Ê~˝Õõ7ó,^º¯íêé«8\0–ôÑ∆ˇ±â\'∆36˝<ÙB}„jègü}∂·@ÍK/Ω45jT2lÿ∞§oﬂæ\r◊√äKìb`àÄ[æ|y‹“Géâ 7Œ8ƒc\rÔ¡‰±éV+·°˝º©K¬õ˙ˆ¸‡?øÔæ˚˙\Z4®Ÿ^{◊Æ]Â”ßOÔ“Ò].\0tFq¢∞∞’fƒS∏∆«bàX±bE√ˆ>é_ÕÛr<∆°£ˆTñ-µ≥7ı°Cáæ9m⁄¥wﬁzÎ≠£ÕÒö7n\\˜≠o}´æ∂∂ˆ_;⁄¥\Z\0¿?¨\r˝–u·ÓM!\0¸.9∂îÈ4Ω∂)ÂÂÂ”ë?å5Û–˛ﬁ‘\r”j˜ﬁ{Ôœ&LòPq„ç7ûüõ{F´òÍfŒúπ‰˜øˇ˝e!]ª#N´\0úaøOYˇdQQ—êt:˝π–+˝˜ıÂaãWÌÕ[\\‚œ“/™Øçıdg9S•–5N´=ı‘S3/^\\˚Ì∑wΩ¸ÚÀüÓÛ_yÂïgÃò—˚»ë#ÁÑT}Mx≥[™\0pÇx ¸pÛ¿±\r·°]\'‚ònØ!‚s?˙—èæ⁄µk◊d¯·€«å”{ÿ∞a=08???Ø∫∫˙ù˝˚˜‹∏q„ˆ_|Ò»õoæ9ºÆÆ..W{∞ºº|éÉ£\0:OàxwZm›∫uü[ªvm„¥Z›±ﬂoœ∞Uá-ûk¨SM´\0 <p\n¶’\0\0hiŒ∂\0\0\0\0Ä\0\0\0\0\0Ä\0\0\0\0\0Ä\0\0\0 <\0\0\0¬\0\0 <\0\0\0¬\0\0 <\0@á˙#öJe“È¥BdÅ{ÿnÍTÑ†\r‰‰‰‘kä≤¶)ä7ı*ë}ÚÛÛwWUU)Dÿ∑oﬂöp≥R%@x\0⁄@◊Æ]∑hä≤C¯=îÖõ7T\"˚tÈ“ÂÂ˝˚˜+D(//?nñ™@®ØØ_ö\"SY`œû=okä≤SMMÕ˝eeeµôLF1⁄V…ﬁΩ{/\r∑øR\nÄ6P[[;´¥¥Ù∞¶®Õ’Ì⁄µkÄ¶(;ç=∫8åëˇ\ncE1⁄–ö5kñÑﬂCÈu◊]˜™jÄ\0¥Åq„∆≠¨´´{}ÁŒùGT£Ìl⁄¥È•˙˙˙MQˆ™©©ô\\RRr¯¿Åä—*++Ï›ª˜3Èt˙õ™¬–ÜBx¯˚–Uá¶»¡∫m†™™jSiiÈükä≤€¯Ò„ﬂø£œÆ]ªvø\0—˙¡aıÍ’À……˘J¯=¨QhyπJ\04eŒú9∑ﬁzÎÚäääÎ˚ÙÈ”Ω[∑n>phΩ‡∞v’™U˘·Ó◊∆ç˜≤äd∑Ÿ≥goô<yÚ≤]ªvMçÏ°ﬁΩ{w∑\n”rJ÷¨Y3ø§§‰ì°ŒÌµ◊>´$ <\0Y“›rÀ-+CSÙ?2ôÃˆ\"häZ‘¡\r6<∑i”¶ãcp–µØ±RTTÙÙ˛˝˚/---Ì]SSÛV*ï 	°ªó1sˆ‚uˆÓ›˚ ÷≠[óá12†∫∫:/<V$\\CÎ≤7NÀ‚≈ã/	ç–ø‰ÊÊé0`¿¶AAø~˝>ÀSù≥BŸ˛   5eeeÔÑÊË‚–mèKï,√hø~˚€ﬂéÅ·Ô¬›k¬vyÿÚUÂ¨≈¿≈Î8,\r€Ø¬†)“iä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0≤ﬂˇí™±	ì=·Ã\0\0\0\0IENDÆB`Ç',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('17502',1,'test_model.bpmn20.xml','17501','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"process\" isExecutable=\"true\">\n    <startEvent id=\"sid-B5099D54-8A71-490C-8876-BF2DCCF4F9C2\"></startEvent>\n    <userTask id=\"usertask1\" name=\"ÈéªÊÑ™Ê∞¶Èê¢ÂÆ†Óá¨\" activiti:assignee=\"01\" activiti:candidateUsers=\"ÂØÆÁä±Á¨Å\"></userTask>\n    <userTask id=\"usertask2\" name=\"ÈñÆ„Ñ©Ê£¨Èê¢ÂÆ†Óá¨\" activiti:assignee=\"02\" activiti:candidateUsers=\"ÈèâÂ∫°Ê¥ì\"></userTask>\n    <endEvent id=\"sid-B244B424-AFA6-47C3-A876-711AB3688592\"></endEvent>\n    <sequenceFlow id=\"sid-F9078A81-F1F5-4F6C-A35E-EA522BE52553\" sourceRef=\"sid-B5099D54-8A71-490C-8876-BF2DCCF4F9C2\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-82B43AC7-BD37-49A4-82FE-51BD23D33FF3\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"ÁºÅÂøïÊÇäÁÄπ‚ÑÉÂ£í\" activiti:assignee=\"03\" activiti:candidateUsers=\"ÈêúÂ¨©Á∞≤\"></userTask>\n    <sequenceFlow id=\"sid-4004DF53-C10C-4C3A-BDDD-A0613EB477FA\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <sequenceFlow id=\"sid-130B5497-4AF7-4A52-A621-5788138773E7\" sourceRef=\"usertask3\" targetRef=\"sid-B244B424-AFA6-47C3-A876-711AB3688592\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_process\">\n    <bpmndi:BPMNPlane bpmnElement=\"process\" id=\"BPMNPlane_process\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-B5099D54-8A71-490C-8876-BF2DCCF4F9C2\" id=\"BPMNShape_sid-B5099D54-8A71-490C-8876-BF2DCCF4F9C2\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"180.0\" y=\"60.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"285.0\" y=\"35.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"435.0\" y=\"35.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-B244B424-AFA6-47C3-A876-711AB3688592\" id=\"BPMNShape_sid-B244B424-AFA6-47C3-A876-711AB3688592\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"735.0\" y=\"61.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"585.0\" y=\"35.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-F9078A81-F1F5-4F6C-A35E-EA522BE52553\" id=\"BPMNEdge_sid-F9078A81-F1F5-4F6C-A35E-EA522BE52553\">\n        <omgdi:waypoint x=\"210.0\" y=\"75.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"285.0\" y=\"75.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-82B43AC7-BD37-49A4-82FE-51BD23D33FF3\" id=\"BPMNEdge_sid-82B43AC7-BD37-49A4-82FE-51BD23D33FF3\">\n        <omgdi:waypoint x=\"385.0\" y=\"75.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"435.0\" y=\"75.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-4004DF53-C10C-4C3A-BDDD-A0613EB477FA\" id=\"BPMNEdge_sid-4004DF53-C10C-4C3A-BDDD-A0613EB477FA\">\n        <omgdi:waypoint x=\"535.0\" y=\"75.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"585.0\" y=\"75.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-130B5497-4AF7-4A52-A621-5788138773E7\" id=\"BPMNEdge_sid-130B5497-4AF7-4A52-A621-5788138773E7\">\n        <omgdi:waypoint x=\"685.0\" y=\"75.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"735.0\" y=\"75.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('17503',1,'test_model.process.png','17501','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0}\0\0\0Û¸œH\0\0ﬂIDATx⁄Ì›ˇo‘ıp~á˝˚¡dKÊü∞ˆÉÄ…¸Arÿ;•©§ßÀH»îî†ƒ¢1$∫d1!1ò.]B≤é	\\[ÀWõ1tbŸÖ“zåUDÓ®E>{ø;n9Jã◊o ›„ëºÇÙ\nòÀÛ˙|øÔÛ˘‹gŸ2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÄeÀí$y‰¸˘Ûª~ËÌÌM\nÖÇIyzzzíCá˝;LNÆå\\…ï\\ê∫X∞áNä≈b2>>n–\\πr%9x‡µP∏O…ïë+πí+\0RﬂqS∞K¶h«Ö¬Yπ2r%Wr@™‚!x∑t&îÏÑ\\πí+π UÒQÂ∂§J6ë+#Wr%W\0,…í˝Óõë‰¸Ò˜ì3=[&\'˛w¸öbT≤r%Wr%W\04@…^N>€ø)9Ωw√]øSéJVÆ‰JÆ‰\nÄ:/Ÿãg˛|O¡VÊ“ônÂ®dÂJÆ‰JÆ\0®˜í=˚…∂K6>¶ï¨\\…ï\\…\0u^≤ü6œX≤Ò1Â®dÂJÆ‰JÆ\0P≤F… ï\\…ï\\Pœ%?Ωc¶íçè)G%+Wr%Wr@ùóÏπ£øü±d„c Q… ï\\…ï\\PÁ%{ux0˘Ï@˚Ωá‚√◊‚c Q… ï\\…ï\\PÁ%ÁãøpO…∆Ø)F%+Wr%Wr@#îÏÕõ…πc∏˜P|¯Z|L9*Yπí+πí+\0Í∏d„@áéæ;„9∫Ò1w	U≤r%Wr%W\0‘c…ﬁºôåúÎK˛±Ôw3le‚˜ƒÔı.úíï+πí+π†NJˆ«ﬁmÛ.úíï+πí+cS\0PÁõÇZﬁmªﬂªp R… ï\\…ï\\êóÏ\\∂2 R… ï\\…ï\\êó¨Q≤r%Wrel\n\0l\nåíï+πí+cS\0`S`î¨\\…ï\\õ\0õ£dÂJÆ‰ ÿ\0iHí‰\'ÉÉÉ˘ù;wÏËË∏∂vÌ⁄âÊÊÊd≈äI.óª˝¬/åøÚ +Á∑m€÷Êû1%´dÂ »ïë´4e≥Ÿüf2ô’am≤+Ãπ0◊„:%L9Ã·±›·◊ﬂ∆Ô≥≤Ä9l>¸√^{ÌµâuÎ÷%ÔΩ˜^200ê\'Âr9â‚Ø≈b19q‚D6\r…K/Ωt˚Âó_æ–⁄⁄∫ 3®dï¨\\π2rµòû~˙È\'√¬åﬂŸ‘2üÑÔœYa@\r¬‚øÂı◊_øπa√Ü…ˇ≠[∑íZù:u*Ÿ∏q„≠|>v˘ÚÂ?˜l*Y%+WFÆå\\-§∞∞4,Ï˜Õb#0›∂NÅôè<≤gœûæÁü>ÈÓÓû’f`™}˚ˆ%---%G\rî¨íï+#WFÆJ&ìY—‘‘ÙüÍ~6õMﬁx„ç§ØØ/˘Í´Øíoø˝vr-r„∆ç…3é=ölﬂæ=yÊôg¶nÆ;j\0”l˙˚˚ˇ∂fÕödhh(Y.\\H¬£¥j’™ﬂxÜï¨íï+#WFÆÊπ!x\",‚oUo:;;\'OeÆ≈ÿÿÿ‰˜«?WΩ9ß70°\"!àÇZ_Xµä_kk´ù∏íU≤re‰ »’ºéTo⁄⁄⁄&è\nÃE¸sÒÈ)Îà◊ƒSÜÍ¡tGû}ˆŸ±Ç{Ã≥≠dï¨\\π2r5Ò\ZÇÍSÜ⁄€€ˇä–\\≈Sã∂n›:ıT\"Î\ZW¸î°-[∂å«k”ﬁΩ{KŸlˆSœ∏íU≤re‰ »’lÑ\rAOıÇ˘n™7Sé∂Ú†aÌﬁΩ˚èÒÒ˝˜ﬂ\'ãÌ≈_uxN…*Yπ2re‰™VÒcG´Ø!òÎ)C˜;ï®˙\ZÎ\Zˆ(AºA¸ÿ—4ú>}z‹—%´dÂ »ïë´Yl\n\nï{ºHx1tuu9Z@cãw*éœÁ£Gg´••e4ûÿËœ˝ùõ≠¸J…*Yπ2re‰jzÒƒïãã„ª˘WØ^]îµI¸T¢)W⁄Î\ZÃŒù;Óÿ±#I”ˆÌ€O≈[ç7˙s_uò≤ê…d~©dï¨\\…ï\\π∫[¯˙Í ˜Ω˘ÊõãΩ>©ﬁ4¸:Ö”——qm`` ’M¡±c«.Ñ[∑M¡=wV¸x∫wLî¨íï+πí+”®π\n_€UyºøøQ◊\'ÒgUˇ/›Vâ4îµk◊Nååå§∫)-Ü€EõÇÈoª>ıp™íU≤r%Wre\Z5W·˜Á*__Ëåßäw>Æ˙ˇ∏hïHCinnN Âr™õÇ¯ÔÖ[Ÿ¶`˙Ü’Ôòƒ√©JV… ï\\…ïi‘\\Ö)U~øPCzøè\'≠˙∑ÀVâ4‹¬ÙA®·Åπ3Jviç\\πí+πz0ìˆ˙ƒ*ëÜ≤rÂ €i)(ïJ£v‡˜}á‰x&ìy‚Ò«ƒ·xÔº…ï\\…ïi‰\\≈ª;R\0)X≥fÕx⁄◊\\æ|˘sÁÍM˚√Ær≠Hªd√?9Ì<,è+Yπí+πí´˙…ïk\n %õ6m:óˆßÌﬂøˇØÆÍøÎá·ßÒnçSÀıAñÏ˝æ∂‘W≤r%Wr%Wıì+ü>)yÎ≠∑v§}üÇˆˆˆΩ>ˇwÚ›¥Ô¥)Y%+Wr%Wr%Wˇ„>êíW_}ıg´WØ˛!≈;\Zóõöö˛ÂNÅµS≤JVÆ‰JÆ‰™QsÔh÷i‹—8óÀ›vGc\ZZ[[€?Oú8ë÷©Cù·Övÿ≥Ædï¨\\…ï\\…ï\\’\"ﬁ∑†≤XÔÏÏ\\îıIWWWıQÎ\Z”sœ=∑|˝˙ı)-kjj:^‹9œ∫íU≤r%Wr%WrU„¶‡… Ç=-XËé„ﬂ÷\'∑´nûfùB„ ÁÛÉ›››ã∫#à◊/ƒ›˜èùìäíU≤r%Wr%WrU-¨>©,⁄€⁄⁄Ï„I„«êÆ_ø˛VıQÎ\ZZ<wÆ•••444¥(Ç¡¡¡=·ﬂ	ªÔ«<€Kødó˘à?ã7πí+πí´%∂N	s•≤xoooü˜∆ n∂n›Z}¡uÎrπ\\6üœﬂ(ã∫!∏tÈ“ë¶¶¶/é{8J÷Xºπí+πZä2ôÃä E«ï#s=ï(˛π)Gú6’≤ŸlKkkÎıÖ:bèƒ\rAx!oÙÏ*Y%+WFÆå\\ÕÛàAsı∆ ^c/>éüTÎß≈ãä´Ø!àcù3Ïƒsπ‹µè>˙Ëªy\\|<ˆˆ€oøOä/`œ™íU≤re‰ »’B≠S¬åU/Í„Ê ﬁ« ﬁ‡,®úZOäw*é7&{Áùwíï+W˛0Â. ◊≠S‡˛;ÒG√.∫7üœèû<y≤4õ˚8p†+l*é«ãuúõßdï¨\\π2rµÎîÍè*ù„Xß¿,^tO≈ÕAsss±££„Ãë#Gæ;Óërπ<π(ïJ£ó/_˛ºßßÁ/õ7o˛8Ï‘œ«Y‹uªz_…*Yπ2re‰j±◊)w6≥ŸXß¿≈;\nÜ›∫\"⁄Êã0Â;/¨¯Î≈0›Òñ‡Ó\0®dï¨\\π2reù†dï¨\\π2rÄíU≤re‰ »\0JV… ïë+#W\0(Y%+WFÆå\\†dï¨\\π2rÄíU≤re‰ »\0JV… ïë+#W\0(Y%+WFÆå\\†dï¨\\π2rÄíU≤re‰ »\0JV… ïë+#W\0(Y%+WFÆå\\†dï¨\\π2rÄíU≤re‰ »\0JV… ïë+#W\0(Y%+WFÆå\\†dï¨\\…ï\\π@…*Yπí+π2rÄíU≤r%Wre‰\n\0%´dÂJÆ‰ »\0JV… ï\\…ïë+\0¶ÍÌÌUnKg °d\'‰ »ï\\…\0©:tË–H±XTpK`ÜááˇJˆ¨\\πí+π U}}}øÓÔÔˇÊÎØø.)∫˜é[,ÿûûû/√<%WFÆ‰JÆ\0H]¯¡˛D°P8«sDMÍü˜≥ıV∞r%Wr%W\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¸àˇ\'`,Â·˝z\0\0\0\0IENDÆB`Ç',1);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',1,'MyProcess.png','1','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0¯\0\0\0˝\0\0\0Fî.\0\0´IDATxúÌ›lú˜]®c»ï®jƒ`ˇƒà?ji@-6)˘ãxH‘FÇ∆Sk¯#≥T≠ã4—Um(\rb\rb%B[ï¡\Z,Pá—î “⁄÷¶êv¶?R˜G6/m÷ti∂¨I:ó&Ì5±ìáoÓ≤gÁ˚Âª¯9ﬂsﬂ{ΩÙQ‰ÿÁÁ¸‹˚ûÔÛæ≥}^ó\0\0Dj]ßø\0\0ÄvQt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—RtVP(¶ßß«««ááá÷ı™∞Ô·õööZXXËt,-ê`âª]˜&ù•Ë4≤ˇ˛∞∏Ñˆ¡|¸¿ÅWèª∏∏ÿõˆ=‹˚ˆÌ€∫uk∏M¬R€Èpö\"A	F3]ö tú¢S[x¿411122r‚ç/öÚ9}ÊtXj√çsÍ‘©NUó%ÒtEÇêäN\raÖ\Z\Zz`ÔW/.^0ıÊ·Gﬁ∏q„Ò„«;W\rî`/LûÑ¸Ptjè#ã+Ï˚¶Ò<~‡±Õõß”q’ A	ˆ»‰6A»Eß“˛˝˚GFnY\\*òfÊsüˇÛù;ø–È–ñë†{jrò ‰ä¢≥L°Px„‰Ò≈•˜L3sÓ¸Onæ˘∑ÊÁÁ;›Uî`ØMﬁÑºQtñôöööòòX\\z7ùèè˛Aìø¸Y˛Y=5;w˛ı‰‰dß£ªJÇÏ¡…UÇê7äŒ2ccc˚˙˜ü≠∞∑å¸(I^øîº≤ò|ÁBÚ¬Ö‰ŸsKªz‚õ\'ﬂ~˙bÚøÖ‰ÈBrË›‰±˜ì8Ù“ù€>›ÒıÆ#Û‹·Ÿ°°°NGwï%ÿÉì´!oùeèy~qÈ|i¬cƒsIr˛rÚˆRÚ÷≈‰›$˘≥ø∏g›uø∞Èñ±ìã…â…â˜ì„Ö‰’•‰Îﬂ~°¯ÄÚ|ŒπÛg˚˙˙:›Uî`NÆÑºi{—)\n333;vÏ‘Üjtt4ºgzz:oØÔŸﬂﬂÊÏ…≈•s•	ÎÊªóíóÆ|hÈÚïøÒË˛ÍØˇ∆_ﬁ˚≈•$yg)y{1yk1	˚ÿ3/ŸsΩ9aﬂ;\\JÇÏÕ…OÇÕhp^òööÚ‚@d´ç«F∏á;nxúÓ ·ÓªoﬂCèx¢4?ÚËˆÌ˜åèèáEm”¶M˘yâœ‚B˘N:·øÁóí≥Ô%/]Ω@hfˇ•Ø|·Ôæt‚áW≈≈À…≈‚‚˚‘s/T|nOM~Y	J∞7\'?	6Œ·å∞‚è[\r\r\rÌŸ≥\'Ù°NΩƒ†-«∆‹‹\\Èo≤ÑBsqq©ÒzÚ©≠[?Ó÷l«”í‚B˘È\\Yd/%ßﬂM~|.YLíã.ﬁt”∫uX∑ÆÔºµ¸ü=¸|≈Áˆ‘‰gëï†{sÚì`=aÖkõ¸πÚíÅÅÅPå:˝Ö”ı≤?6vÌ⁄ZÀ„ûX±‚îœ≥œﬁºyÛ∂m€:[·ãÂ€Èîû6è&¯NÚÊ˚…≥Gæˇ·¯?˜Û◊ﬂ¯°Ò?Y∂»>Û‹·äœÌ©…œ\"+A	ˆÊ‰\'¡jaUüòò®~ŒÊsü˚|˘3˝a∂oøgdd§‚í·1sﬁ~»ÅÓíÂ±ÓÕ„„„ììì-UúÚ˘Ú˝˜w¥≈Ör!ùﬂ˜.\'oÆ<ö<˝~r‡ô˘ﬂº˘£˙Â_π±ˇøÚ/_?IŒ]HﬁΩpÂÕ>SÒπ=5˘Yd%(¡ﬁú¸$X!¨ÁO‰‹u◊gãúµÓâ‡Ùô≥·\\∞~˝˙ÚßvÊÊÊ:Ω+t´Ãéç–r¬Ωyzz˙ö[N˙ù¨∞ùN˝ıñpD--˝$ù“⁄÷Ÿ∑ìü\\è)üzÈ¯Õø˝±èˇﬁÔøy!˘q!y≥êúΩêÑeˆ–”œT|nOM~Y	J∞7\'?	ñ+yË(i_m\\q*ÍŒˆÌ˜§ü€◊◊7;;€È¢+evlåèèØæÂ§ﬂ∆\n]ß#ﬂ√™X(á?æ˘≈ÔæÚÏKÛ≥sÛOûÚ˘£OΩxÏ[OÁ€/Ωˆﬂáè˛œ·Ô=˘¸˜f_8˙“+?∏ˇ˜ﬁv˚m_Ï,≤î`oN~Lï˝¶MÂﬁù;Ø·t‡É_\'}^«/dq\r≤96vÌ⁄µöÔXUœæ}çççeÚµµ§∏»æU>ü˘Ãß´~BÆÜ?˙ƒ\'*>±ß&?ã¨%ÿõìüS·—oöNX“WÛ–∑øøø¥ù···NÔ›\'Éccnnnhh(√ñSö;Ô¸Ùû={VˇÂµ§∏»û5≠N~Y	J∞7\'?	ñÃÃÃ§-Á⁄ûÀ)üáy4›⁄Ó›ª;Ωstôéç–rB„ŒºËúx„‰Ü\rk¸\r¨+ãÏ•3¶’…œ\"+A	ˆÊ‰\'¡íp^(ıí———LŒÈœÎ¨_øﬁÎÎ–í’•W ºÂîÊÆª>ª∆ÂΩ∏»û6≠N~Y	J∞7\'?	”””•R“◊◊≤fr:xÁ‹˘Ù˜∞Óæ˚ÓNÔ\"›dµ«∆p´/ô”“ì:·ûù…~6©∏»æiZù¸,≤î`oN~LäÁÖR#	V3<#<∞woi≥˝˝˝ùﬁE∫…™éçÖÖÖpákSÀ)Õ∆ç◊ÚW\nããÏèM´ìüEVÇÏÕ…OÇ·ºê˛<MVOÁ§≥a√@iÀyx%}∫≈™éç©©©âââ∂ù{wÓúúúÃjoK¶ßßÎΩNOqë=eZù5^d%(Aì€√y!˝\r©ÃœwﬁyıW2?/±U€∂m€≥gO[ãŒ„û»ˆ˜	è=Z:Nn∏·Ü}˚ˆU|‘\"õˇEVÇ4yN0ú≤˙e´ögÑ“∆7m⁄¥f˚K∑[’±1::⁄ÃüÌ\\ÕºzÏÿÜ\rYÌmR|\r´ÎÆªÆt®|É¸»G>R˛∏§∏»˛®ìny›r\r.Ÿ‰ø≥}{Tq-fîœWº1ÎE‹j–Â€Y≥{!¡Ê∑,¡’$Œ•µ„ÏŒ•çdy^ n´:6⁄ÙãÂÂÛŒπÛ}}}YÌmI˘üP	Æø˛˙;Ó∏£Ù˚ä·øó.˝∞ìnπ¸*Í]]3_F„œ≠πR∑uÔ≤Õ(o	Vﬂå5o’k•b;\rﬁhﬂDü`≈ÌYÛf/∑fl&¡ÙÀ€tvHØt-˜óÆ∂™˚J∏Øg˛≥f5Ô÷ÈœØÅKóN∂c“-◊º∫&ø™k¯≤€∑G◊≤ñ5∂˚[hìn|…Í\r6xCÇ◊úWÉwÆ[Èño¸µ≠¯È=í`⁄Åöˇ≥V-M∫˝¨ŒÇDoU˜ï¡¡¡óèYÉ¢ì’ﬁñ‹x„çÈ19Và˘˘˘‰Í£…7≤ùÍÖ†¸C≠nj≈∑õπﬁvÏc∂Â*¡ö∑v˙ûÍ7\Zzì©µzl&æ∆GM˘≈ö9|$X3¡p^(ΩøMgáÙO_≠Â˛“’Vu_iÎãËî&Ûü—Iı1çü˙‘ß¬ø”””ÈGãÀ–âvL∫Â™’≥ˆ≈*ﬁn¸—äç◊˚îˆÕZ.:ùM∞¸¶^1Ø”ØyO®y·vGwÇın‰zK„7$ÿ8¡Ùâ•vúNü9[⁄∏ó“°y´:6&&&ÿª∑≠EÁ–ìOm‹∏1´Ω\r^˝ıÄ`ttt```rr2±Â-ÆD?h«4≥ÂÍÀTºß·\"ªÏSVºXÊ{óaFyK∞¡çY}À7N∂ﬁÂkæ]˛F˚≤ÎÖõI°f¨\rﬁê`Ω√y°¥ø_æˇ˛Ãœ/9R⁄¯–––öÌ/›nU«∆Ó›ª≥}·ÀÍ	EjÎ÷Of¥≥WÕÃÃLMM’|à∂.≤ı*H˘öX≥≤4ø∞÷[ë´ˇ€Ωãlß¨ﬁÂ∆7xΩ7®M’wï5»ÆGlpc÷Î%ıéS	6Np◊Æ]•[ ,›ôüÓ›π≥¥ÒÒÒÒµ‹_∫⁄™éçp/çæ≠Egdddˇ˛˝YÌÌääÎ—ÎŸNŸ:∏Ïù\r._ÔÂÔ\\ÒÌZq∆ªV~•kñQcm⁄ÕÍ[≤¸vn2”ÊSk~Àl5æöi÷ªùøGÇ5ÕœœónÑ˛˛˛wŒùœˆå∞yÛÊ“∆CÕÍÙé“5V{l¥ıÁë√Aïµ¸CµW÷£À«€1ÈñKo¸lëmx·Í˜◊SÔäV‹fV{∑f5÷¶›¨æÖ´oÁW]~ôkH∞≠ŸıHÇç3m&&	6/<\0.›&˚ˆ=î·!}ù†‚˚e–¿jèç∂~˜Íã˜›6û…~6©∏Ω÷éI∑\\z£¡5∏@˘;W|ª÷B‹ñ]+]◊Z∆‘@õv≥˙ÆæUWÃÙ\ZLØh≈´ê`3˚ÿ8ØÍ√§Êe$∏¢………“^ﬂ|ÛÕ>©sÎñ-•ÕéççuzÈ&´=6\nÖB(ÔÌx5ùpxlÿ0pÍ‘©Lˆ≥I≈eË˚ÌòtÀ•7j^—Oƒ⁄ˇ≠∑¡z©∏@˚v≠¥Òµå©Å6ÌfUe¨q{∂\ZVÉÎEŸ÷˚gß£ª™˚XÛP™>@Z TÇ\r,,,§Øvì’Ç8Ù‰SÈ877◊È]§õdplLOOﬂv˚Ì<ùì\\]dèe>?]Ôé•ˇ.?k˛Ï\r>∑˙˝ı._}Å€œj◊8©z⁄ó`≈€’WT/¶ñ,øpuÇÌ1˙´o…äc∞Ò$ÿ™›ªwóˆ∑ØØoıøg˛Í±cis⁄∂m[ßwé.ìÕ±qÎñ-Ÿ~/ˆÂ#GJœyfÚÂ5Ø∏ΩjZù¸,≤î`oN~Lm⁄¥©TMBGYÕ´$áA8§õZ„ß˘â@6«∆¬¬¬∆ç≥˙©‰”gŒÜªu802˘⁄ZR\\d_1≠N~Y	J∞7\'?	¶é?ﬁﬂﬂüîk˚”W\'ﬁ8ô∂úæææÉvz∑Ë>ôÛÛÛ°Î¨˛èõÑñsÎñ-?ÚhV_XK,≤›æ»JPÇΩ9˘I∞\\Ë%È˜ÏBMiı%=˘T˘_›Ω{wßwàÆîÂ±177™w∏kÆÊ;V°-u™Â$≈EˆÚÂ£¶’…œ\"+A	ˆÊ‰\'¡\n333ÈÛ:ÎäøáV¯fû»πÌˆ€ÀFJÀ·öe|l,,,lﬁºy˚ˆ{Nü9€Íwaøxﬂ}•Ôe˚%µ§∏»~œ¥:˘Yd%(¡ﬁú¸$Xm~~>˝Küi›	ßâÍüv˝ÊÀ˜ﬂ?22R~·–ì|«ä’»˛ÿ(\n·|”MÉ°∏4˘\n\nÏ›.◊]ü\rı(ÛØß%≈Evﬁ¥:˘Yd%(¡ﬁú¸$XSxºc«éÙèWqÎ}h||‹O≥JÌ:6¬]ÛÓªÔM¸÷-[Bè©˛1¥û¸⁄m∑ﬂ.≥uÎ\'k˛ÕîµW\\døkZù¸,≤î`oN~l ú“?˘π¢···ŸŸŸN…ƒ†Ω«F°Pòôô	˜ÏÙ«ÊÀü∫-gzz:WØ‰Uº˜ﬁÛó/«¥4˘Yd%(¡ﬁú¸$∏¢p^+8/\r\rUú∆∆∆ˆÏŸ„Y2‘5«∆⁄áŸkØ}ÛÚÂ#¶•…œ\"+A	ˆÊ‰\'A»«∆2£££ˇ±œÂ‰e”¸|w˛ÉÉÉùéÓ*	J∞\'W	Bﬁ(:ÀÏ⁄µkrÚéé/[›5ˇ<uÔƒƒDß£ªJÇÏ¡…UÇê7äŒ2«è¸µ˜\nœ^N^2MŒÿÿÔŒÃÃt:∫´$(¡ú\\%y£ËT⁄q≈∂À…ã¶ô˘∑ÈøÌthÀHPÇ=59LrE—©T(Üá?6;˚ØIÚÇi<ßNæu:¥e$(¡ﬁô|&π¢Ë‘0???4t”¸¸LíÃôzVÿp6:x´ùé´	J∞&œ	B~(:µÕŒŒÜuv◊Æ?MíÁMıÃÃ‹788p‡?u:®∫$(¡∏\'ˇ	BN(:u\nÖ……â··èNM˝’©Sè%…a≥∞_””3>>266ﬁÓtD+ê†„õÓJÚ@—Y¡¡É\'&˛p˝˙_jÚeÀ„÷ﬂ√¯¯-aùÌt,-ê`9	vªnL:K—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥\0 Zä\0-E\0àñ¢\0DK—\0¢•Ë\0\0—Rt\0Äh):\0@¥˛@≤∞\r#wi¯\0\0\0\0IENDÆB`Ç',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('20002',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('22502',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25002',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('25004',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('27502',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('27504',1,'source',NULL,'{\"id\":\"canvas\",\"resourceId\":\"canvas\",\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"}}',NULL);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('3',1,'MyProcess.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"Êèê‰∫§Áî≥ËØ∑\" activiti:async=\"true\" activiti:assignee=\"Âº†‰∏â\"></userTask>\n    <userTask id=\"usertask2\" name=\"ÈÉ®Èó®ÂÆ°Êâπ\" activiti:assignee=\"ÊùéÂõõ\"></userTask>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"usertask3\" name=\"ÁªèÁêÜÂÆ°Êâπ\" activiti:assignee=\"Áéã‰∫î\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"20.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"90.0\" y=\"130.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"240.0\" y=\"130.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"540.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"390.0\" y=\"130.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"55.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"90.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"345.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"195.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"240.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"495.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);
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
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('5002',1,'MyProcess.png','5001','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0–\0\0Ä\0\0\0S¬°\0\0‘IDATxúÌ›lú˜]®c»ï®jƒ`ˇƒà?\Zi@-6)˘ãxH‘FÇ∆Sk¯#≥4≠ã4—Um(-b\rb%B[ï¡\Z,Pá—î “⁄hS§]Ëè‘˝ëÕkõ5]ö-köŒ•I{Mú‰·_vª‹/ﬂŸœ«˜ƒ˜zÈ£»±œœ˘π˜sﬂÁ}g˚º&\0∂¶€_\0\0∞˙)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)ã(ïJSSScccCCCkzU⁄˜tåééNNNŒÕÕu;ñH∞LÇWª´7A(S8ZŸªwo∫ìßïÓ˛˚ÔtﬂæWé97?ﬂõìˆ=›{ˆÏŸ≤eK∫M“í◊Ìp⁄\"A	ÆöπJÑ\nÖ£±Ù\0b|||xx¯ÿÎ«ŒÕü3’sÚÕìi…K7Œâ\'∫TSî‡*û´\"A®°p4êV∫¡¡¡˚vÌ‹¸Y”l|Ë¡\r6=z¥€q5 A	ˆ¬9A®ßp4êW-¨tÔõ÷ÛËæG6m˙≠n«’Ä%ÿ#Sÿ°û¬QkÔﬁΩ√√7Õü/ôvÊÛ_¯”Ì€øÿÌ–Æ A	ˆ‘0AhH·∏B©T\Zx˝¯—˘ÛÔôvÊÙôﬂx„oÃŒŒv;∫À$(¡^õ¢%Õ(Wòúúü?ˇne>>Ú{m˛“Zıgı‘lﬂ˛ó›éÓ2	J∞ßP	B3\n«FGG˜<Ø?]Èn\Z˛añΩv!{y>˚ˆŸÏπ≥Ÿ”ßœÔ|‡±ˇ8˛ˆìÁ≤ˇ-eOñ≤Ôfèºü˝›Ån€˙ôÆØ;]ôgÏvtóIPÇ=8ÖJöQ8Æ∞~˝˙√áüù?¶<È1”È,;s1{˚|ˆ÷πÏ›,˚ì?ªsÕ5?∑Ò¶—„ÛŸ±≥Ÿ±˜≥£•ÏïÛŸ7æı‹¬¨3=8ßœúÍÎÎÎvtóIPÇ=8ÖJö	/•Rizz˙ÆªÓJ\\Ü~bdd$Ωgjj™hØó◊ﬂﬂˇÊ©„ÛÁOó\'≠_Ô^»Œ^∏Ù°Û/˝˚Õáˇ˝óı◊˛¸Ó/ùœ≤wŒgoœgoÕgiyÍ˘Ö≈ÓtoN⁄˜ÓW!A	ˆÊ\'¡v¥8/LNNzqë’*M«S:ÄRÔNáT:åˆÏy‡—}èïÁ¡áﬁ∂ÌŒ±±±¥∏l‹∏±8/ô∑∞`ΩSôÙﬂ3Á≥SÔeÁ.\\æ@jH˚ÂØ~Òoæ|ÏóÓÛ≥sã‡œ<WÛπ=5≈YÏ$(¡ﬁú‚$ÿZ:/§3¬¢?é388∏k◊Æ‘K∫˝ıíßêctff¶¸öˇ©Xúõ?ﬂz<˛ƒñ-üLá◊˛˝˚#æòé,,XˇWôKã›ÖÏ‰ªŸèNgÛYvÓÏŸı7‹∞fÕ÷¨È˚ƒn©˛ƒß=[Ûπ=5≈YÏ$(¡ﬁú‚$ÿLZ·”√À6˛∑l`` în·‰&ˇct«é©=<∫Ô±E´Fı<˝Ã°Mõ6m›∫µªïva¡zª2Âßs”£´ºìΩÒ~ˆÙ·Ô}¯√˛¿œ¸Ïµ◊hÏèÆXÏûzÊPÕÁˆ‘g±ì†{säì`Ω¥™èèè◊?áÒ˘œ°˙ôÔ4€∂›9<<\\s…Ùÿµhﬂ|giÚ<F”Q566611—Q’®ûØ‹{Ô––PøÅ∑∞`ÕU&˝˜ΩãŸ[•KèÆNæüÌ{jˆ◊o¸Ëá~ÒóÆÔˇ˘Ø˛”7ﬁœ≤”g≥wœ^˙ƒü™˘‹ûö‚,vî`oNq¨ë÷Ûö\'6nø˝sÑØÈâ‡‰õß“π`Ì⁄µ’OuÃÃÃt{WXÆ‹é—‘6“Q555µ‰∂Q˘K⁄N∑˛:@:≤œüˇqe ˜·¥ﬁΩ=ü˝¯\\zå5ˇƒGo¸Õè}¸w~˜ç≥ŸèJŸ•Ï‘Ÿ,-wû|™Ês{jä≥ÿIPÇΩ9≈I∞ZZ…SW®ÙÜëëë÷U£¶vl€vgÂs˚˙˙<ÿÌbYr;F«∆∆ñﬂ6*ﬂ^Iù£+ﬂ[©Y∞Ü>æÈ˘Ôº¸Ù≥gf?4˚¯≥/=Ò¸ëˇ|Ú€ﬂz·’ˇ>Ù“ˇ˙Ó„œ~˜‡s/ΩÚ˜Ô˝˚›∑‹zK◊ãù%ÿõSú+ èB+ç·ÓÌ€óp:∏ˇ˛Øß™Qyû√/∞\\’Ú9FwÏÿ±úÔ§‘œû=åééÊÚµuda±{´z>˚Ÿœ‘˝$SâO‘|bOMq;	J∞7ß8	V§G°ït“íæúá†˝˝˝ÂÌ\r\ru{∑X∫é—ôôô¡¡¡€FynªÌ3ªvÌZ˛ó◊ëÖ≈ÓîÈtä≥ÿIPÇΩ9≈I∞lzz∫“6ñˆ‹Fı<¯–√ï≠Ì‹π≥€;«Âpå¶∂ë\ZhÓÖ„ÿÎ«◊≠X·o¨\\ZÏ.ºi:ù‚,vî`oNq,KÁÖr?…ÂåP˘yéµk◊z}é´‘rè—Ú´∏‰ﬁ6 s˚Ìü[·2ª∞ÿù4ùNq;	J∞7ß8	&SSSÂr–◊◊ó:Êr:xÁÙô Ô≠‹q«›ﬁEñbπ«Ë––Pß/π——ìÈÀe?€¥∞ÿΩa:ù‚,vî`oNqÃŒÂfê4ÊxF∏o˜ÓÚf˚˚˚ªΩã,≈≤é—πππ|P€(œÜ\rVÚW°ªôNß8ãù%ÿõSú”y°ÚÛy=ΩQôuÎ [.¬+S”©e£ììì„„„°Ö„ÓÌ€\'&&Ú⁄€≤©©©fØÛ±∞ÿù0ùŒ\n/vî†)lÇÈºP˘çí‹œ∑›v˘Wñr?/∞ñuån›∫u◊Æ]°Ö„—}èÂ˚{P/ΩÙR˘xΩÓ∫ÎˆÏŸSÛQã]Ò;	J–9¡t^»ÎóS\Zû ﬂ∏q„äÌ/yY÷1:22“Œüg[Œºr‰»∫uyÌm∂Z4◊\\sM˘ê˝‡?¯ëè|§∫ß/,v?åò ñ◊\\©≈%€‹`Îw∆ÌQÕµ‰òQ1\\Ù∆lqßAWog≈BÏÖ€ﬂ≤óì`:/î?qvHgÑÚ∆Ú</∞2ñuå˝Blıºs˙L___^{[V˝˝…µ◊^˚©O}™¸{VÈø.¸ b*[ÆæäfW◊Œó—˙sÆò°{óoFEK∞˛flx´.-îöÌ¥x#nV}Ç5∑g√õΩ:‹ÜH∞ù+øtv®\\ÈJÓ/πXVfÈòÀ˝gÇ\Z^ïüy^.èò ñ^]õ_’æÏ∏=™πñïÃ®µÿﬂö@€ºpÎK÷o∞≈\\r^-ﬁπf±[æı◊∂Ëß˜HÇï.“˛üMÈh*€œÎ,»äYVfÎ◊ØÒ·(yÌmŸı◊__πoå.Hw‘ŸŸŸÏÚ£´◊Ûù˙;dıá:›‘¢o∑sΩ˚òoFÖJ∞·≠]yO˝≠?ΩÕ‘:Ω\n	∂_Î{Mı≈⁄π˚H∞aÇÈºP~–Ÿ°ÚßUVr…≈≤2}éÚ‰˛3ï_ŸJ˜äO˙”Èﬂ©©© GñÉcSŸr›*÷¯b5o∑˛hÕ∆õ}J‹¨‰ùøª	Vﬂ‘ãÊµh˙\rèÑÜééru\'ÿÏFnvgi˝Ü[\'Xy¢%‚ÏpÚÕSÂç{)é´—≤é—ÒÒÒ˚vÔ-b√Ü\ryÌmÚ⁄kØ•Ç<22200011ëÓ9’]Xæ1Ìlπ˛25Ôiπÿ]Ò)ã^,˜ΩÀ1£¢%ÿ‚∆¨øÂ[\'€ÏÚ\rﬂÆ~#.ª^H∞ù\Z∆⁄‚\r	6K0ù ˚˚ï{ÔÕ˝å‚·√ÂçÆÿ˛íóe£;wÓÃ˜Ö‰Í\'ö-[>ô”Œ^6===99Ÿó»CªfU†zmjX⁄_‡ö≠åıˇΩzªn%XøÀ≠ofnQ_Íï»ÆGlqc6ÎÕÓßlù‡é; ∑@Z∫s?#‹Ω}{y„ccc+πø‰bY«h:⁄R√\r-√√√{˜ÓÕkoµ∞.ºñÔT≠GWº≥≈Âõ]†˙ùãæ›hAÃy◊™Øt≈2j-h7Îo…Í€πÕL€O≠˝-K∞”¯\Z¶ŸÏvn˝	64;;[æ˙˚˚ﬂ9}&ﬂ3¬¶Mõ Ouß€;J«ñ{åÜ˛‹h:X”!ªí“∫pÒhƒT∂\\~„ßã]À◊øøôfW¥Ë6Û⁄ªÀ®µ†›¨øÖÎoÁW]}ô%$ö]è$ÿ:”vbí`˚“—Úm≤gœ9û*/¬ë‘|á´¬rè—–Ô™|Èû{“∆sŸœ6-¨ØFLeÀÂ7Z\\QãTøs—∑-à!ªVæÆïå©Ö†›¨øÖÎo’E3]BÇï+ZÙ*$ÿŒ>∂Œ´˛n“2\\‘ƒƒDyØoºÒ∆ü‰∏yÛÊÚfGGGªΩã,≈rè—R©î lƒ´q§√t›∫Å\'N‰≤ümZXæ1ï-óﬂhxE?Yò\Zˇ∑Ÿõm§ÊqªVﬁ¯J∆‘B–n÷U∑∑gßaµH∞Yî°«g∑£ª,bﬁïÍÔ e*¡ÊÊÊ*Øñë◊úx¸â pff¶€ª»R‰påNMM›rÎ≠´‡ÈçÏÚbw$˜˘…∫s§ÚÔïgØü^†≈Á÷øøŸÂÎ/–b˚yÌ‡\n\'’L\\Ç5o◊_Q≥ò:J∞˙¬ı	∆Ö∏Í¨ø%kÓÉ≠/ ¡NÌ‹π≥ºø}}}Àˇ˝ÿWé©4ò≠[∑v{ÁX¢|é—õ7oŒ˜{u/>\\~..ó/Ø}À¡+¶”)Œb\'A	ˆÊ\'¡äç7ñ+BÍ\nÀy’—t\"HßÉ ¶V¯iorîœ1:77∑a√Üº~zÙ‰õß“·ï–\\æ∂é,,v/õNß8ãù%ÿõSú+é=⁄ﬂﬂ_)\nK˚”*«^?^i}}}˚˜ÔÔˆn±tπ£≥≥≥©s,ˇ≈ÛS€∏yÛÊz8Ø/¨#ª´}±ì†{säì`µ‘*ﬂKJu°”ó;¯’%nÁŒù›ﬁ!ñ%œctff&U—tà,Á;)©µt´mdã›≈ã/ôNß8ãù%ÿõSúkLOOWûÁX≥{+Ì¸Ÿ˙cØøÂ÷[´ÜF€Xr>FÁÊÊ6m⁄¥m€ù\'ﬂ<’ÈwÈætœ=ÂÔÀ‰˚%uda±˚ÆÈtä≥ÿIPÇΩ9≈I∞ﬁÏÏlÂ/∫UjG:M‘>ıåØ‹{ÔpıÖS_Òùî’!ˇc¥T*•#ÈÜ÷ß—Êo`ﬂ∑{w∫¸Ì∑.’î‹øûé,,v≥¶”)Œb\'A	ˆÊ\'¡Ü“c—ªÓ∫´Úá^k§áöÕ>466ÊßDWç®c4\"w‹qGj¶7oﬁú˙D˝è•˜‹ˇ◊oπı÷tô-[>Ÿ5˘Wﬁ¬b˜”Èg±ì†{säì`ÈºP˘”nã\Z\Z\Z:x`∑ødÚ{åñJ•ÈÈÈtÑU~Ã∏˙)µ‘6¶¶¶\nı\nµ©eø˜ﬁ≥/~€t4≈YÏ$(¡ﬁú‚$∏®t^H+:/÷úFGGwÌ⁄ÂYçUÈ™9FWF:‹_}ı?.^<l:ö‚,vî`oNqÑf£W˘∑Ωª.f/öˆÁ;≥ﬂ\\ø~}∑£ªLÇÏ¡)TÇ–å¬qÖ;vLL|™ÎÀ«’5ˇ8y˜¯¯x∑£ªLÇÏ¡)TÇ–å¬qÖ£GèÆ_ˇ+ÔïûæòΩ`⁄ú——ﬂûûûÓvtóIPÇ=8ÖJöQ8j›u…÷ãŸÛ¶ù˘ó©øÈvhWê†{j\nò 4§p‘*ïJCC;xü≥Ï9”zNúÿóåŒÕËvhWê†{gäô 4§p40;;;8x√ÏÏtñÕòfìV∫tVÿøˇk›é´	J∞¶»	B=Ö£±É¶ın«é?Œ≤gM˝LOﬂ≥~˝¿˛˝ˇ–Ì†öí†W˜?A®°p4U*ï&&∆áÜ>:9˘\'N<íeáÃ‹‹MM˝’ÿÿËËPzª€-BÇ\\}su%’éEÏﬂø|¸˜◊Æ˝Ö6_éwuÎÔønlÏ¶¥ﬁu;ñH∞öØvWcÇP¶p\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@8Ö\0ßp\0\0·\0 ú¬\0ÑS8\0Äp\n\0N·\0\0¬)\0@∏ˇ$©∆Ó·Ã˘Ù\0\0\0\0IENDÆB`Ç',0);
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('5003',1,'MyProcess.bpmn','5001','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"Êèê‰∫§Áî≥ËØ∑\" activiti:assignee=\"Âº†‰∏â\"></userTask>\n    <userTask id=\"usertask2\" name=\"ÈÉ®Èó®ÂÆ°Êâπ\" activiti:assignee=\"ÊùéÂõõ\"></userTask>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"usertask3\" name=\"ÁªèÁêÜÂÆ°Êâπ\" activiti:assignee=\"Áéã‰∫î\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"20.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"90.0\" y=\"130.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"240.0\" y=\"130.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"540.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"390.0\" y=\"130.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"55.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"90.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"195.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"240.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"345.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"495.0\" y=\"157.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0\" y=\"157.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

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

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10001','myProcess:2:5004','7501','7501','usertask2','10002',NULL,'ÈÉ®Èó®ÂÆ°Êâπ','userTask','ÊùéÂõõ','2017-07-10 20:10:27.630',NULL,NULL,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('2502','myProcess:1:4','2501','2501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-07-10 19:52:41.338','2017-07-10 19:52:41.365',27,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('7502','myProcess:2:5004','7501','7501','startevent1',NULL,NULL,'Start','startEvent',NULL,'2017-07-10 20:08:54.269','2017-07-10 20:08:54.279',10,'');
insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('7503','myProcess:2:5004','7501','7501','usertask1','7504',NULL,'Êèê‰∫§Áî≥ËØ∑','userTask','Âº†‰∏â','2017-07-10 20:08:54.279','2017-07-10 20:10:27.596',93317,'');

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

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('10003',NULL,'participant','ÊùéÂõõ',NULL,'7501');
insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('7505',NULL,'participant','Âº†‰∏â',NULL,'7501');

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

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10002','myProcess:2:5004','usertask2','7501','7501','ÈÉ®Èó®ÂÆ°Êâπ',NULL,NULL,NULL,'ÊùéÂõõ','2017-07-10 20:10:27.631',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('7504','myProcess:2:5004','usertask1','7501','7501','Êèê‰∫§Áî≥ËØ∑',NULL,NULL,NULL,'Âº†‰∏â','2017-07-10 20:08:54.281',NULL,'2017-07-10 20:10:27.532',93251,'completed',50,NULL,NULL,NULL,'');

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

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('1','HelloWorldÂÖ•Èó®',NULL,'','2017-07-10 19:48:48.160');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('17501','test_model',NULL,'','2017-11-26 12:52:11.069');
insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('5001','HelloWorldÂÖ•Èó®',NULL,'','2017-07-10 20:08:27.125');

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

insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('15001',7,'test_model','12313123',NULL,'2017-11-23 09:36:13.000','2017-11-23 10:47:32.000',1,'{\"name\":\"test_model\",\"revision\":1,\"description\":\"ÊµãËØïmodel\"}',NULL,'15002','15003','');
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

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('10003',1,NULL,'participant','ÊùéÂõõ',NULL,'7501',NULL);
insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('7505',1,NULL,'participant','Âº†‰∏â',NULL,'7501',NULL);

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

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('10002',1,'7501','7501','myProcess:2:5004','ÈÉ®Èó®ÂÆ°Êâπ',NULL,NULL,'usertask2',NULL,'ÊùéÂõõ',NULL,50,'2017-07-10 20:10:27.631',NULL,NULL,1,'',NULL);

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
