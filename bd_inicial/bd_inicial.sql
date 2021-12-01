-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: inventario
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB-1:10.4.21+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audit_data`
--

DROP TABLE IF EXISTS `audit_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data` blob DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_audit_data_entry_id` (`entry_id`),
  CONSTRAINT `fk_audit_data_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `audit_entry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13409 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_data`
--

LOCK TABLES `audit_data` WRITE;
/*!40000 ALTER TABLE `audit_data` DISABLE KEYS */;
INSERT INTO `audit_data` VALUES (13377,3043,'audit/request','xœ½VK£F>ï¿°|J²Á¼ÌÃŒö€¡±ÑbC\0Ïl¢‘P\Z\ZÆ8€=³íOu¶g6+E9äÒ¦»ıÕWU]Æ†85^C3Æy‰›ÒŒo°!¯ß\ZCŒqÓâöØXUFÆ7…!Ü4T\\“?¤i—g¤¾¶P¨¬9Tû†|\'¤²êØ‚£ÎI^¼´ÇšğÇ}YáŒªÆ§mQíéFH_‹â>gUIèo[We	>ïÎÔ:Fg¸a¾~ú™İ!\rî\\ã\'†D6^/Q¼P\"•ã_è·ß20Àq{ü1á”|Â‡Ã}7÷½-8¥a‹gJæUöõ2¡ğ…ìî%š^LÏ\\Ëõo³0CŠUÒ+8O«\' ìá†ˆÔ§\"-*ï¸Ã5‹	–A‚ÖæÜCÉÍ7‹q‡X ¿ 7ë•o#ºƒ{uÅx¥ø¨å.N\\›]hŒe™~ÀÅK?Š×æ\n\r¤É²,H8Kµm*_›C‘ë¯ûLiy\"C2ÍÀ´–(±üµc»áà‰\'mÊc îH×Üµ›j\0€?65_V).™ÁááĞ#[‹ä3ú=b[°µæ¦£ÎQ“MÁAæt®Èš3Õ[U­™2“EQŸ[Ö\\9².)’.©¦eÏ\rÁ^°å™#9ÚLQç–b›XÛ× <ÛñÌE4`çîÊ_9_q‡‚•¬ZwvÏ,uĞŸ³¢…Å¡é1ué‡\rÉ®hÚ\Z—½³¥ßq\rÂ×UÕ2ÇB*Zš’¢2ÊAS Û<S5Ë…\\ŞŠËZKº®åz.e\"ÖÄ4U!ß\nÒLR¦Z*\"àÙŒ(zgâö*\\÷”Ø(`áj´ñm-–>|È;.#\'øÌ‹’ÀÏîãGº¦)¬e±M{é~¤RªNM‹lj\"¥}\\1\nW}\\e±?¾ô5jÏZqZìOÀ®‹*É¶½\n+Öñ¨\0Ü‡¶=4Ï???O 8&{Òò¥°Øi7´d¸® \'àjòò«ñiß0_ )¬4İÅ&D‰vY–TÚİÏEûÀáÃK#8¼âmI¸tWôÈ£¥wëõ]&^-ø´™LÏóï’h 6×µŞAë\\U:DËåğ¢¦´fKÒ¶ª9£ÚïF\\~(R¶’ç;ñ\0(r\\èõÈß„¢glë;N„âdîÆÑ\'uz¡õÜÄÂ5­ïZ­ooÍ°#@xÛ¢<ÙŸN˜¾Ù,/;wzWñ]xğ›U5¿-ö+W~Âj¼!õÑ¥§›wûóö\"`İ–Û%yóëÙçz¥%ÜC¦•x! 0£¨n¤¾»ÍÈ:—”òŸJj‚›txXbƒàÿH-àOúZœğ0û§‘=ÈsŞ‹h¼‘ºA|.‡7bå,¦÷ıH…¦>â×‘gÆÈşNÂµ}k³Bë8	}Ÿ53$lxCôÛEq»+”8o‚Bfˆª¬Ë*<MÊDQUz2¯µÙ>ëu©ÄõîDètŞ(ıÈşÇa.]\rsùßóîÂ”ZMéB] ø2Óic°çëjÈ[¾ÿÙEoşêPv£Ë‰FçDÔÏîìÛßıSÓ-','2021-12-01 12:05:01'),(13378,3043,'audit/db','xœí\\moÚÈş_aåK\Z©›;gŞÇQ>°”¶¹Kà\nÈ]­´Ğàî¢-ĞËËªUÕÿ~í¡Áäà;…UäJy«Çæ™™óœóœã™†~Y„6<D‹Åğhqz9¿ŒC‰¿%¿°ËE(txÚ}Ûş5x}Ûlõvóö¦Õ\r^wÚ7Á`¸\Z—ıhºœœ^CÀ/ËğÇ9„§ŸÇãßGï~¯Ï&“át†ÿ[EóÏqKq9\nA+4ãN]X\nâ»ãfá—¯ãPÅÏSZji/“?K`rº&Î„&0Ål‚Élb2Ç²Ûh6ê½“\0ÿ\rşº[\r.õv«ÛëÔ®[½~«vÓµn0¸›MËùp<]ö§ÃI4x™½#îN¦õ‡ÕdJ´ì4^7:V½ñªß«ıÜllÜ3ŞGóhzúËá»Qşİ>rãöÍO?I‡x<}?›O†ËñlÚ_ÜıM†÷ë]×šıûNwıóî\'ÿn_·vÜûKã·5†ÛníÃÚ­ó‹ä;=®õZ¯Öl¿WÉÑ×ÚoOx‘óˆënĞŠmªÖz•ó0ßê<yäyÜxÇ”wëo75ÙúÒî›Óé nM.œüúÇ{÷s¯‚Ñ§~¸ˆ^œ§İI? µªÕÉ}§7Íé*8ÛàÔÙÃg‘ÍJº®E=’%Ô³õ*êUÔË¥^Ñ¨g%‰±rÿ¶É=à,<½nu^€cĞÎ`œğùlµDó\r?s±ìO¢åŸ³Qü?wóh¸ŒFƒóà¿µæm£¼8{?ş´\\Í£­¦fÃÑÙËà¬Ş¼pÆá\'à?1€‡L†J?t2âaO£OÑB új¸µæA_9íİj’Z_ïgu¾êü„$ûêOú*6ûÊc‰Õè¯ÛÆõ›V?ñoõ_ºhn¬ÔÀÛn\\/­6:52¹?˜B#“€‘æ¡Å#ƒW0:#>Ånñùq>­î–³2j8A¤È‚SP§ÒBs‘3ãtŒÈe2¯rŸe@^3*/\ZkSÒ\rh‰&Å:ï²9«XW±®bİÖŒuÆ\Z‚uŠb‰à<£Mt¯t½Æã\Z`O]bSıÑ‰:åb? ’4F8B(†C’ú¡luÎ…§µf¯Ñ	’	Ú\0Ôn{íşu«ŞiÜ Q¯ ä!2i‰!Â¹\"Ó%‘3e€ÃÃ\nFŒÌˆD1q{+B BP88˜‡;ˆ!\'		‰@OD­€ã‘2œÅ&D¶Îx?ii¸$r6ôCº\"‘-Õ«İ‰Àxú7¦©Ãù¸dn‚˜é¥±)$UR!­¥S‚HàhH½€ØªÔëJ\'U:éYê¤{Nå)¥V%s@Å_P>Ê	[1¯b^Å¼æ‹y\n€T¾à¬Nâ°ÌÔ¸ÜÒu¹z`?•¢@0Jb‚¶&	¿ö…RP09i\0(Áë:¥Ì¤L¶¤Ü”§–™ˆ“YX)™)eil…ÆÍ]0œ)ªØÖÖ¤bM	ò\Z¶H5¯4±¦Š“ôŒ9¿(EºãXS‚ME:Î¬HH§Ø±¬	”Ğšb!ÏB•M¨ìîa5†£ş$\ZáÏ2™KË8*ÏãàÒ4A‰r°\nxò–Bƒ\"`	°V&£2¶ªòV\Zêyj¨­òdT¶aI· é­D™şéŠÿ*ş=Ê¿‚ñOÓÚSèuüËVÊÍ–à{L\"ì©]’¤…@#üKå\n )¨¤8ÓR‘c#ı›I­¤ÜRyY4O-B2T*p¸’©Óü)à=Åµæäè)¿ÊHËÃY¢1Ôš\'´sÎR4êp–¥¸œTZ¥‹´9¢e!<)©ôFÃ\Zj{DËÒ\0’Ø®€ğ¬ç¥Éd_yû–ã³~ôÇ<Z”z3“€R’Êo„µéjFe@òî˜¤‚¥ìLòõ&ŠLÒU-å®ÔÕsUW¤ÊÓV›ÍJ:”	Tf#ñzâã¬¸Wq¯â^.÷\nÆ=)9Œ¥Ñi\rÔd+êjKíåË‚=ÕŠD=EaAGÆ`³7–¢ÊIqÉ(å$¥s©rÊÖÔù–°ÛÄòÔªÁ) ·HíKYV\\Á‘3Â²Ş\\§ùƒå‡²(ë\\‹aé»,+eQˆÅoBâ…JI”³êh…,\'-Êª´œ`õÑ,ÊYC§ïÒz.ÚL’%`wÂğ	â1d¾.NõŠuñòáÎ:i(¿©Áë\'—I¨Œ®ôS¥Ÿ§~z\\:=EÆ‚Œ³äz2ÍTê‘¯W1®bÁ¸b1Î1G…\\-XºvËeKälKÈ=t¹•mš-9µŒ‚H0vÁä)©™_¢å²oÍ–Zû*rK“¸ÀKgKá*8^Ü&HÄ½@Æ~°ùx É°Á¥ö8à\0öƒ8Í&î+ğÀÄ19F¥!Z8íÉcXN¥	-E\Zğewpå¼´¸›M>Îgï†ÓeT<Y£\"× jå½\"0SÕŞ®Ú£2’²r#ıD`[»ğ+uT©£ç©6X•\'‘6›•t	ŠY*½>$XE¾Š|ùrÉW0òÅxŠ|V§º<Şç™WoÎ—{J–¸IQ~W\0@~ñ;_ìFqm9©	ğzªT ¿ú½	æ©e\'¢säòµ¸Î›ùåïïBWpìætäVfc¾Y•=”U!Ğ»Ş§Ù#–~¤U!Ô\"H»Ş«fUˆÎ‘Y§&İ!Ù:jUVY«)÷`1ÓIİÏ¦Z2÷ô®¿£h4›—Ëg¬rŒ|m×›öaë½0òéV3CÏ¢ó%Ÿ81Ì*Y	ªJP=KAõSoä•sš9rç°ãÒí¸­ˆW¯\"ŞNâŒxà%ñœ\\G<‘­–‹‡g1í”û‰ÍÜ²ïÀo²†ìiLß¥^‚ÆPHtº><>¾jSÌ±‡§/y$O+4hQo¥·kl²,¶‚Ãñi¤1	ò}cJ H²†*İ+ŞìùK?Î˜@ZFnAŠùÂ½pG²&ÄÔºÊ)î±eì8 5qayæ¡SÚ¥®If,y2—)D£IÚiÌ÷U]~hKRâ3 üQÕ™ÜÉºğôö?¯jhİÙãÁcˆƒÑjH„Á•º l|J “ÜË`0‰&³ùçşdøipÅ`VËÀÇÂñhp…Y”YÉYepZø*vö ƒt¦àÌ` sdVëtâ¿~ı?Ü@O','2021-12-01 12:05:01'),(13379,3043,'audit/log','xœíZ[oÚH}Ï¯°xI\"µìÜ/x ÄiØXÙj¥JØÁnkm°ScªFUşûmH<08›5›H)‘$ÌŒÏ|3ß9g.\ríŸs[ØY0Ÿ{_‚yãÄ³‰´†6PŸXñancf7FçƒÖÙe¯gu½Ë‹şÈ:.,×[øa:	¢4¹u\'¡\rÕ‹¨Rõ´·aøÉ¿úÔ‰g3/òmûÛ\"Hn³‚øÄ·!Ã3€$m\n\"yeÏöÏ»Ğ¦Ys2‰ÙÉ]Ör	£vcpDaôÅ:}gMã(\n¦iG¶5»»¶¿Æó´Fß2/	ã‰uâ_EŞ,(ıs/.á½oĞÕs¶ †Ì„˜!2Ä¬Œ˜sè‘Ós:ãKı¸OnÓíú£ñ°İí\'ıö…ãZí‘åªîÌÓÄ£t’Avßè5²øk¥¯³ÈPrèœ9C§ßqN\'ãö»Sª“Ÿƒ$ˆ¦?I½«ë ºöÆ#KÕËO?(æD}“™—Eo2Ÿ~\rfŞCsãn»7yèôhÙŞÔ=ø}Ğío©ûÁùk…árÔ~¿‘Á´ıóQşÛ×N{Üî\rŞ»V+ù»Áğ¾…£Š&º#«Ÿ%A»ZÑØ²ÔqŞäqVxË:çÎEÛˆlõÕöÊÅpªæ_|<WñŞŞnËò=5ôŞ<8:.ºS< ˜)¦R.O§–uX\"ÃÍ¶ŒÅjqE”\Z‰@–x²œx»ÑíœáØRèœ¥F;‰©šûÙ¬VOœ§“Y~ıì?Ó$ğÒÀw­?Û½Kgd~¤‹$øm]ÇøÆ:ìôºÙ¾…è-€D6 6¥‡Ç•³ìfğ#˜*¦r$ø&)\" úÊrŠ¨ÜU”µ3¶ÎC§û¾?ÉóæÜé|©ğƒ:XDCØÄB„Š;É±PM4ğvÑ¸Ib1Mã\ZŠ‘¢™\0q¸Ğ	í	xOÀ¯’€W	UÅ¾÷eê%c’NRÂr@šOC*çNUÎGSÿ‰lÄ¥4%¿äÉˆÆFÒn´{cghåQ)á°Ú—ãÁ¤Ûï•-XáœğMqB\0\\ˆâÏ Ê!†FÁÜOcğ\"Rœ\r4C¬°ÍkÀèvy°òµ”„©AÚ(À\\M²Òš•g{%Ù+É«T’‡”ªÒ’R©z‰§èÚào)ÄÊÆå‰§YyDÖÈ²Š\0ÄJŒBdFB…Ìé’hN›À5º,!Ù1aJ¢V©ËöP.¹„>Gd(‚69n\nFùpñ\"AÊ I*ã—oÒdj¾‹íª²ˆBßóÕ*ĞWï5„E6!ÅÜhX®T©æR¸Ø/QöÂò:…EËª*mÑÖK?Ê±É×aÄ\nR§ºçkÌù<‰¡ e‚š\n£¥Édš!\'d<u0;æOİÜËVàÈrÕÂğ³EŠ\"Æ\rKLŠ)*ô±—EJuÃÈ8,†Q³,Ug\'ixO‚/I0¯³~‘M!E&™Á|)~ì\"ö2óÈL)§ªD¦\\¬^êa,LC0--¹nÎé\ZqVrÀ“˜‰AB!1Ba8g&®»s´Æ›e(;fMF³Í6\nY®/>S˜”#€˜› 0Pì`\nòRaRØ„y9¥ù\nÍ°`¸]\\v +Rp&“[°by.5ËÂÙ^Wöºò:uåqIÙšH!MÇ½”\nrj’ºk,¹‚”`ZP	ŠU“Ôü7æk¹{nÄ\04Ü¸~R´]œøHùÿ\'C8‡ÄD‰Òbˆ @/…KH“r0$yq}\nĞ».™Æ³›$¾ò¢4øÏú‘\"Œ@ã|fP€û…É^@~)%U•Š”‹ÕË=\n¸‰Å9Îvz²ÜƒÕ–»’DN\n1ÖSNG–jÏ]Æ²cæ¤ˆIlÚ<á‚¤ ¦@qB 5JÀ^*P\nœDFp«ƒ{ˆô“{Ryì{øqRK`„²$ÀiupÑÚÉ=ÙÌ^`^¥ÀÜ§Ô#—À–…jåÒèÅ…\\]ÖGºÇ›·œ¶åÿ“HI(’6ÛK€IáÇ±~p6ï9-‘ì”/a\0…ÌDNŠ¥êaúA‚MH¸ñÆ•D«[ÄX¼LŒÔZÊ¼œ’-]\nÑ]JÕ\rçš`ÌxZ/W›”h6EH»qùÇi[\r˜~§<Cèú‹$gP·E›DE8»wˆ„òåÎ‚YœÜNfŞ·…8‚kI¡ï¶0 ¸f_Æ]NIó£Ï»»\0<6RÚ','2021-12-01 12:05:01'),(13380,3043,'audit/profiling','xœí]moÚÈş_aåK\Z©›3ïã(XBÛÜM`È]]i% à¶èèYµªúßï±=4˜œb\'p9RíÇ3ç9ç9Ç3“~(ÂoóP‡‡ãh<}=<…Ü(°ZÎC.Fãèğtªi™v’)ü2\\¶ñYóyÿC4?<í‡Î†ßğlü¤ã[h¶>G“ÑäCpş[0˜N&Ñ`1šNÂ`üuş÷§ğãt¾8Mş‰&‹şl4íoO‡·“ş8ZùeŒ	ğŸe18¼*áá×Ñè¯áí_õû+†S¼QÜV \\ĞÂ\nÍ¸S\'V:/¿}…*¾¢?å÷ø„ç‚ìt1È\n“d-´Ò1d¹\nYàğµßµşŞÜ\\^õÖåÍU³¼¹n]½şİp´è\"¬Ù×ŞÃ„Tãq2Ã¿ï¢ÔL\0&©¥=M~,é¾§¶ÂÄ™Ğ&£˜M0™ULÆ Å¶—zç À¯Şw½“^½Õlw®kÍN·Y»jô‚Z;èá¸Ï³şh²èÆcÛ{=#~œLëOwã	Ñòºñ¦qİhÖçİNí·ËÆÊ9³è}4‹&ƒhØ]ôo?Eùg?¸åÊé«w?H»x4y?û±•uçƒÑ¸¹ÎEí²{ÿĞm½Aïà_­‹æ†soüg‰á¦]{ëAÄ0ƒV3Áü*ùŸî×z­S»l½ígÉèc­ëWx•s‰‹vĞŒmªÖ<Ï¹˜ouœ\\ò8n¼aÈÛõw«\Z‰lyhóÉép§&ş|‡ı½ùºgÁ°CßŸG¯ÓÇIoZ\nÕêàş¡WÍé,8ZáÔÑÃk‘ÍJº®E=’%Ô³õ*êUÔË¥^Ñ¨g%‰±r¶Ê=à,<¼h¶×\0û •\rÀ8à³éİÍ?6l¼ç|ÑG‹Óaü›Á,ê/¢aï8øwíò¦Ñ^½}YÜÍ¢_ï&Ÿ¦ıáÑëà¨~yãŒÃ/Àa\0™•::ÎoşI£/Ñ\0!PÏj¸µÅg ½›AMòÿö¬´ê{äYõ	~\0ñPõÅÏêO5£Ty,±\ZàMëºqñ¶ÙMüÄ»Fı÷6š+ÕñöD —DÇK«NLn¦PÏ$`¤yhñÆà‘ŒÎˆO±Y|~M‡wƒÅ´Œ\ZN)G²à{ÇTÀ)Ä€07à\"‡ÉZ’2€Ëd^ä* ¿È€¼dT^4şÑ¦¤Ğ\ZMŠuŞesV±®b]Åº\r¬+ëŒ5ëKÊf1ë2UH¤;GÒu\Zk€-u‰eLQôwF\'ê”‹í€HÒá=¢vIê‡²Õ9Ö.;ë   Aí¦Óê^4ë×+$ê”ì\"D&-ÑE8VRdº$²‚}¦pxXÁˆ‘‘(&nwbED\n“âp;1\"Äá$!!ˆâ‰¨°#R†3¢Ø„È–¯àû1\"-\r—DÎ†~RW$²¥zµ9¸}P.7AL‚ôÒØ’*©ÇÖÒ)A$p\n4¤^@¬Uêu¥“*ô\"uÒ=§ò”ÒJ«’ÎÀ9 â/(å„­˜W1¯b^óŠÅ<@*_p~ŞÌÔ¸\\Óu¹z`;•¢@0Jb‚¶&	¿¶…RP09i\0(ÁË:¥Ì¤LÖ¤Ü\n”§–™ˆ“YX)™)eil…úÍ0)ªØ–Ö¤wbM	ò\Z¶H5¯4;±¦Š“ôˆ9?)EºıXS‚ME:Î¬HH§Ø¾¬	”Ğšb!ÏB•M¨ìæán2\Zö‡İq4Äïe2—–qTÇÁ¥i‚å`ğä1,…EÀ`!í­LFelUå­4ÔËÔPZåÉ¨lÃ’nAÒ[‰82\'üÓÿ*şUü{”ãŸ¦µ§ĞËø—­”›5Á÷˜DØR»$IFø—.Ê@SPIq¦¥\"ûFú7/:“ZI¹¦ò²hZ„\"<e¨$T`w%C§ùSÀ+Ø{ŠkÍÉŞS~–‘–»³,Dc¨9Ohçœ¥hÔî,Kq#8©:µJ\'=i³GËBxRRé0†\'4Ôv–¥$±\\áYÏK“É¾òÖ+,FŸ§İèÃ,š—z3“€R’Êo„µélFe@òî˜¤‚¥ìLòå\"ŠLÒUMå®ÔÕKUW+¤ÊÓV«ÍJ:”	Tf#ñxâã¬¸Wq¯â^.÷\nÆ=)9Œ¥ñ‹,M¶¢®ÖÔ^¾,ØR­HÔSti6[c)ªœ—ŒRNR:—*§lM¯	»U,O­:œjr‹Ô~²”eåÁì9#,ÛàÍuš?X¾+‹2±Î%±–¾Ë²bW…Xù&$¨”D9«öfQÁrÒ¢¬JË	VïÍ¢œ5tú.­ç¢Í$Y6\'O‘À CæëÒéT¯XWO!î¬“†ò›\Z¼~r™„ÊèJ?Uúéeê§Ç¥ÓSd,È8KÎ\'ÓL¥ÉñŠqã*ÆŒ+ãsTÈÕ‚¥s·\\¶DÎÖ„ÜÓèIç€‘s PÙ¦Ù’SÛÀ( ˆc\'Ln’šù)Z.»ğÖ¬©µgP‘K\\šÄ^ú;[\nWÁşâÆ0A\n$î0öÌæãq€&Ã—Úã€Øâ04›¸¯Àû0 æ•†há´&÷aA8<@–&´iÀ–]Á•óÒb0Moû“ET<Y¢\"ç jå½\"0SÕÖ®Ú£2’²r#ıD`k«ğ+uT©£—©VX•\'‘V›•t	ŠY*½Ü$XE¾Š|ùrÉW0òÅxŠ|V§º<^ç™WoÎ—[J–¸IQ~U\0@~ñ;_lFqm9©	ğxªT ¿ú½\næ©e\'¢säôµ¸Î›nùåïŸBW°ïætäRfc~X•İ•U!Ğ»\\§Ù-–ÓªŒj¤]®Õ{³*DçÈ¬Ó\n“®‚ì;µ*«¬Õ”{°˜é¤îgS-™»{×?Q4œÎÊå3V9F¾Œ¶ËEû°¶ƒÇV˜\nùt«™¡GÑù’Oœf•¬U%¨^¤ úÁ©G¶7òÊ9Í¹rØqé‹vÜVÄ«ˆWo#ñ\nF<p’xñß=H#ÈVËÅÃ½˜6ÊíDŠæ@.ÙwàYCv7¦Ÿ€RH/Á	c¨H$:o_µ*æØÃİ—<’§š	4Ç¨·RÛ%6Y[Ánƒx7Ò˜„ßù„Ş…1%P$YÃG•îovÿ¥ç3&–‘ËFb¾p/Ü¬	±µ‡®rŠ{lÙ-;vhM\\XEîyè”v©k’ÙKŞ†Ìe{\nÑh’v\Z„óó[U—ï\Zä””x¿Uu&w².<¼ùã¼†Öİ<†ØŞÍ‰Ğ;S\'„w	dÒ{ôÒ?’Ó÷¿ôÎ¸ÌjøX8\ZöÎĞ3‹²=+9#«N_ÅÎnô±“‡)82È™Õ:¸çïßÿºÀt','2021-12-01 12:05:01'),(13381,3044,'audit/request','xœ½VKs£F>ï¿pé”dƒx‰‡píÁ Q‹doR®¢F0È”± €do\\ûßÓ3€${³—=ä‚¦§{z¾şº{ZØgÆkkhÆ$/qû@ÚÉ56ãõ[kˆ‚1i;ÜZ«ÊÈäº0„ë–ÚO\Zò÷´İŠàŒ4—\'ªkëjß’ï”TW:pÔ;É‹—îĞş°/+œÑ]Õ˜à´+ª=€ôµ(îSpV•„şvMU–àóŞéZ§-Ãèn˜¯_~ewH£»\07ø‰!‘×sï†H5Æä7º–`=ãöø	bÂ)ù„ëú¾ƒÀÛûál{u…v°ª&×”ñÄÎ¢Ê¾£‡Ø\"Ş¢Á˜SÎ)ºçZ®Ÿx›¥RØ’°á´zÉ.‹Hs,Ò¢ò;Ü°Ğ€›`$hm.<”|±Ñb³œôàúúp³¾ñmD%¸§n*F1ÅGOnàâÄµÙ…ÆD–é.^ùQ¼6oĞÈŸ,Ë‚„³TÛ¦òåqˆ#rıõ4m*OeaÌ«˜Ö\n%–¿vl7=ñ¤Ky,>éÒ“»v“Ñ\0ğ‡¶áË*Å%;P?Ô²e°L>£?#&ÂYka:êÜ5ÙdÎŠ¬93M°UÕš+sYõ…e-Ô+GÖ%EÒ%Õ´ì¹¢![;’£Íua)¶)Àiû”g;¹ŒFìÜ]ù;ç‹W\\]°ê•ÁêÎ˜… êı)›!ZºQš3—~˜ÑìŠ¶kp98[ù=÷Ğ+|SUs,ô ¢•))*£,²Í3UQ³\\Èå­H°¬å¹¤ëZ®çR&bML3Qò­ Í%e¦¥!Ï‰¢çy&n/ÂuÿB‰®F{ğĞUĞmùÕ‡Yı¸ã2r„e^”~v?ÒošÂ·,¶é }ÂTKÍéÑbBC¤tˆ+FáÍWYì/CÚ‹„VÃ¤û#°ƒ›¢J²í`ÂŠ5d<*\0÷¡ëêÖàùççç)ÇtO:>£Ûmõ––×ä\\M_şa5>\Zæ$…•¦»Ü„(1Ã>Ë’Jı¹è8\\¿´ÒÇW¼-	—îŠy´òn½¡ËÄÑ«åß>m&Óóü»$Ú(¤Íui7fĞ:U•Ñr9<®é#­Ù‘´«\ZÂ¨ö»+.¯‹”}Éç;ñ\0(r\\èõÈß„¢{Lô\'Bq²pãè“:;Ózjbá’Öw-ŠÖ··fØ ¼mQìGLŸo–¿ÀŒW½;½¯xƒ~xğ›U\r¿-ö+W~Êj¼%ÍÕ¹§ÛwòI<+Ø¢á3b;\'o±q=ûT¯´„È´Ïf\ràO4t·Y§’R~ª¤¦¸MÇÇ%6şÔşd¨Å)³qx\ZÙã€<ç½ŠÆY¡Ä§rx£VNjzßLhê ~yfŒìïL \\Û·67h\'¡ï³f†„ObˆşØ (Nb÷%ç›`¢*ë²*Èª6©ÒL×2/­Ù@>Ùõ©ÄÍîHèlœãg(ÃôşÏ¹.]Ìuù§æzwJÌ¨Q/Q|ï´GØKv1ï-ßÿì¢7€(ÑÑyG£##ê\'i¿÷í_§Ûñ','2021-12-01 12:06:07'),(13382,3044,'audit/db','xœíV[o¢@~÷WL|Q“¶;3à@ÇøÀR¬vÁm6iS·d²\\’\ZÓÿ¾¶+h²íË>HÂuÎåûÎ9À(¢Ûœª´ó<g?yŞ1Jè6¢òÛåT\"´ëLí{0Yš&Ğms9·0YØsà³2Œ\n\'E¶ñ»£ˆ\"±«P°pÄˆv7Qô>>èi³$¤ôwÉ³Me)BŠˆ¤JJD¹\ZBq£Œv©!İ¾DtXÅ™(xTß~Ó5ù&Õa&eˆPIibRQJÇ0\rİí\0±ù¿‚Ò¿òuÛrÜ…6³\\ÏÒæ†4øAšäEÆ¢¤ğsÿâ½GEçõºŒ“Ë…11†¥7«}5†OÆW<ãIÀC¯`k~Úû eÃ½™½³+q”¬Ò,fE”&^<ñ˜íÃ¹3Íôö¤×xß¹³gÖßoÆ7KG»}QÁ¶Ucî×Çöºêš«™ö­Æu¢ö5{ñ7BÿDˆ™¬j¦4ëæD°W«ArPi¹£O¹ÖŠìmé¸ó®-®õBç~*ê}<î„L´å¼?ØÑÙ%ØMJ›UgOº9NcĞkhªw«Õì“¯L$¹Ez*’¥ZzêYzgé¥wRzıê©·IOR \\IÁ¦ö†´;³cáQûıX4<KËBŒ5Ø\"g^x1/Ò°zdœ<ôà»f.\rô{«è¹(3ş¥LÖ){ §›³ê„!F—_B¦P¨ô‡/é)æ€ĞÆ©êpÅâgD–aÍıw\\÷]ı7®*&°ëµ*úúòòóJÿW','2021-12-01 12:06:07'),(13383,3044,'audit/log','xœ­VmoâFşÎ¯X‘€”€ß\rå$‡8Z‚+L\ZU¥2‹½„íù…[Û§ (ÿ½»¶!¤×\"ïÌ<Ï3³3‚\"|‹aÖÇèÇõkUøF À´ü!†²ëöƒõîŸ†CĞ·†O#Ü­G0C©G‡	]Ïê×ŠìRØ%1?I„õ5!So>íGA€BÂï)¦kn(_{PÔä®¬	²¦·UAÈ]àÛ;*¦ŠZO®ßyÜ!M…uk…C¾€»[àFaˆİ„D!Á:şîÃe\'7$üÁx!J\"Ç›_{ó¸ôò€­\\b»\r#†s„¯Ğ«b¬«¢ÄkeÆºÎ²l›C³?©ö™}sÓY{Ö·FödlFgd<š3`Ø`ÆäÄ	E$LNyv¹ëÁ³¿cí§AXa96ïÍ±9ê›wÎÄ¸š%Š˜âĞÅ“ ¹O{@–ÜËèµ|GpÑ\0ñì9±»Äú7CçC´]Äsgµ_¬Áèˆï¯æO¶ñµ Áik”qnfßÕyích}›¨zÍ\Zo#4O„Ø`Ä[ÀİVXµ²-n|¤ävÿÁ|4*™m–;çå¨pÍjÏ,ßÇãŞ\0±Ò£7[¹œ ß)UVµÑåít\Z¥Ğ8ŒUiöß&…¤IzEçéİ¢ğÎë•;O”XŒls<,ÖîÈbå¦Qš°ÍÏ·5ƒŒ\'ÀÉ2òø—b”`oÖ¿Ã\'ÓÍÆ‚¼&)Å4ô#ä5.A£?ğ›$Hâ•(]	\"%(hPĞ­“3¦Ğ‰_±ËT)»]åpÆH‚¨v…|*J;RMÊãó’MáäÏ /iÀÔš¯.^åCr²ÄÀ# b	iœ€9ˆ¿f“/¢k:hµê$,#q§Pw&d™/ì)$Ì-Ø<õ\"Úa°q´Hø]ê,±¿Â4îÜ2÷ÄÇÙïöj¹‚ª.Õì¹ß\0›q.†µágâ4½Û‚€‹-Œ¦»Fº>FôĞfcOI»İn´jâq\\>‚#ó{B#ßçîóô·¯r\Z²p†Æ‚„ÿWò¸¥hÍèHÿIP:…Ï´ä3=ğ¹ú’³Ë«ËšüB²ƒÓù`‘†Ù!ø×¿Šˆ2Ÿ§¬?šqÊqq|¯v¡OBld®™Ug:\\äûN\Zcêp*âÁòiSÏDŞKØ‹=ò{õ…¦á3I–¿!Š‚xË];_˜¥RÎƒÈÑšíÙ\0ég¤<F^êã<=²²WçÏ‚tÏ«1V+Ÿ¸h[‹½œå4vP¦â­÷hJwOZÉâs¨â‰‘’erSîI§0—lPûxœŸMkş7‘Í²u±ÔâØÅXaË¬ËyÛ—ÁÛM”À[Àşê½oN\n±8)dù“¼êÌèª¢\"Wœ=]RØ™ñşşErì<','2021-12-01 12:06:07'),(13384,3044,'audit/profiling','xœí–moš@Àßû).¼Q“µ»ãá¸éJië†ˆ®YÒ®-™À\n¸Ô4~÷İ¡­4¢ËÚ,Ù‹š¨÷øıŸàBªĞ§’b*¥,Í‹¥4H¨Œ	!\'xPR•JU’2iSxŒ±¡ª¨D×TB¸\0zeŞ±R\Z„|ùÄÕù`JîO–%Ù8?Qe,ª’<£ ]–szŸ—Õi’ıbYIîÇ³A<ËÂ”5n\n(Ä¿\n:nUV¨´L’›xvcn-Òœ;²\nçEX!\n†\nÖ93ê*ƒôi•PMÔÎã¬„ü¿\"æY|1_È-ÈXÁ<	«õÆ²ÂËç]¹×àbjÛÀtíéÈñÀÅØ \\ÄIås¬bìæ5¨Ò4ÌbJlİmLz“ŠuyP/ßÁ´ÍÔ_1Éh-Lº†PÍ¤7™t÷«gÙ–9é\0ş	~D‹à80]Ç›Œ¡3ñcdÀğ@Àë^VE˜d•/j|z­!Ây%=_¤Y‹äØº°Æ–cZçşÄ8³­†NÁnYÁ²ˆÅ~Îæì°öË†zÓ{gâ$»Í‹4]æ—Ñ=KÃ­¹ÉĞ°ımĞŞÆ^t¾¸CgîWëû3ÃÔ3.7¸NÍÜ«Ûój\ZÃv/pZ;jßsÇ/zL=àˆ2œóÆ6RıÚd_ï)¹g^Y#£•ìyk¿òº-ªõFçúŠç{¿İS‡¼ôaÉzıu8këNi“êlƒn¶Ó)è6fª»k«Uì+jËè¤*õè‘Ñû½Ñ;8zo}ëÜv: ŠU1z6gÉJCÇ³ÆÀsà¾~ó‚ù¢âí/\Z›û,+?eÕ}‹;QÁÂŠÅA|3ì©å^÷6y¬û¼Èæyw?®iÅŸet„ä#ˆ\0’)Äêİşá³Û&RöÈ\"Ğ+\"DÃ;±Êü0¢ªõIˆíş·XÛO}•È¶ÇzBx]W«ßÎ:¤','2021-12-01 12:06:07'),(13385,3044,'audit/request','xœ½VKs£F>ï¿pé”dƒx‰‡píÁ Q‹doR®¢F0È”± €do\\ûßÓ3€${³—=ä‚¦§{z¾şº{ZØgÆkkhÆ$/qû@ÚÉ56ãõ[kˆ‚1i;ÜZ«ÊÈäº0„ë–ÚO\Zò÷´İŠàŒ4—\'ªkëjß’ï”TW:pÔ;É‹—îĞş°/+œÑ]Õ˜à´+ª=€ôµ(îSpV•„şvMU–àóŞéZ§-Ãèn˜¯_~ewH£»\07ø‰!‘×sï†H5Æä7º–`=ãöø	bÂ)ù„ëú¾ƒÀÛûál{u…v°ª&×”ñÄÎ¢Ê¾£‡Ø\"Ş¢Á˜SÎ)ºçZ®Ÿx›¥RØ’°á´zÉ.‹Hs,Ò¢ò;Ü°Ğ€›`$hm.<”|±Ñb³œôàúúp³¾ñmD%¸§n*F1ÅGOnàâÄµÙ…ÆD–é.^ùQ¼6oĞÈŸ,Ë‚„³TÛ¦òåqˆ#rıõ4m*OeaÌ«˜Ö\n%–¿vl7=ñ¤Ky,>éÒ“»v“Ñ\0ğ‡¶áË*Å%;P?Ô²e°L>£?#&ÂYka:êÜ5ÙdÎŠ¬93M°UÕš+sYõ…e-Ô+GÖ%EÒ%Õ´ì¹¢![;’£Íua)¶)Àiû”g;¹ŒFìÜ]ù;ç‹W\\]°ê•ÁêÎ˜… êı)›!ZºQš3—~˜ÑìŠ¶kp98[ù=÷Ğ+|SUs,ô ¢•))*£,²Í3UQ³\\Èå­H°¬å¹¤ëZ®çR&bML3Qò­ Í%e¦¥!Ï‰¢çy&n/ÂuÿB‰®F{ğĞUĞmùÕ‡Yı¸ã2r„e^”~v?ÒošÂ·,¶é }ÂTKÍéÑbBC¤tˆ+FáÍWYì/CÚ‹„VÃ¤û#°ƒ›¢J²í`ÂŠ5d<*\0÷¡ëêÖàùççç)ÇtO:>£Ûmõ––×ä\\M_şa5>\Zæ$…•¦»Ü„(1Ã>Ë’Jı¹è8\\¿´ÒÇW¼-	—îŠy´òn½¡ËÄÑ«åß>m&Óóü»$Ú(¤Íui7fĞ:U•Ñr9<®é#­Ù‘´«\ZÂ¨ö»+.¯‹”}Éç;ñ\0(r\\èõÈß„¢{Lô\'Bq²pãè“:;Ózjbá’Öw-ŠÖ··fØ ¼mQìGLŸo–¿ÀŒW½;½¯xƒ~xğ›U\r¿-ö+W~Êj¼%ÍÕ¹§ÛwòI<+Ø¢á3b;\'o±q=ûT¯´„È´Ïf\ràO4t·Y§’R~ª¤¦¸MÇÇ%6şÔşd¨Å)³qx\ZÙã€<ç½ŠÆY¡Ä§rx£VNjzßLhê ~yfŒìïL \\Û·67h\'¡ï³f†„ObˆşØ (Nb÷%ç›`¢*ë²*Èª6©ÒL×2/­Ù@>Ùõ©ÄÍîHèlœãg(ÃôşÏ¹.]Ìuù§æzwJÌ¨Q/Q|ï´GØKv1ï-ßÿì¢7€(ÑÑyG£##ê\'i¿÷í_§Ûñ','2021-12-01 12:06:07'),(13386,3044,'audit/db','xœíZgTSY×^Rud	JQ ¡jBB€„\"½U$^„@„ ¤ˆAš\nˆJ—&Mi\"½(RUQé¡	RD?Ô™wf^×úæûóı ?nnÎÙû9Ï9gï}òÜ‡„\"ı(Hy$¿BÁÙ(ü(ô#\"¡Ü@P$LÉo¢ƒ1i™¡Ñ uÚLßÀ¤eŒÑYã<ñD+<ÎgÍúæGDÊCv/2»~2P$¿‘àm\0uW	Dº{È>ß,a(<Š€ÉÃBNJV^a÷Ãn;|wdÒ/€ˆ”ı#•‡ÉÈ£¾!ş{J\nˆCIUÛƒ’¾ğ£ã?”ää»œ4Ñšê¦¿v_ÖN¶ÖRÖêScU]S+U}Mkª	ÈÚÖ•Dñ ãˆ$+Î…`-ñwo³ù›µ³§iKcM-McMuM\r+SU5´æ_|È;™@²%à­<p6Î„_{ÿ4ä_Üÿ:úo?V˜H²s%»à<ˆ®$+Š­Á÷\'œ©®*ÚêÏI›ügkı›F×à|OkZüÁÁÌDUûwßh‚0ß9‹~¿î½®êª¦ªhŒ¶5Héû@{÷aŒÿƒ ú]Á·R5ĞøØïVàïàoÆÿ°å&ê:šúª{2û£ëŸlÇ®ß;~3×Ù]ïÆU}K… \nş1üˆ”½¬~ûsÒ\r\'%ÈŸ)%ò3Ô^Vÿ·Z \0‘A@÷J<„<ü{-İO¼ıÄÛO¼_$Ş¿:ñ\n\n\nğ=Oû~âÉıíV‡ ùu\rL4MA»+€ùÛÙ»»Û’ÙÇŠˆ·–\0Y{ø¸¾½Û’	8Â÷¦ïf`ĞU´™¦	HÃ%~ŸŒ4™°K’â!²Û ‘JBe$!PT	A !rßš½ÓêÎœ¦dj±(/Õ»Í&â/y_¹ì¶p dE\0ïj\\œ¡éH,á]`kä9,HĞ¯üºÒdHN®Ÿïã\Z?ì ‹}›““C› ´ûÖ©×Odtkçœ\"B DÔlÁÓÉ\ZHè\\òk€]Ù®x9\Z\r¿ˆ°å;Í9Ä/%ššó İ^ D]_ìeÙ)‘Oë³|yc´B<_‰-hõè¢‰Û™¤Ğ/}³äÑïfc±¹’Í3Ì¤÷­	t2kˆÜ§+|×b^QØ–°…ëÈ¶MÊÕ$[+ÑO¬:dÓŞûüøRÃğÖ˜³ïqÏ0¯’|áW‰–[º3>NÏ¼<ğ³½Ëˆk¼aÒ\rf¨™ÆßöNÍæ4Œ?R2–^áKsòÉI©(ŠDÆÊÔ›’Ş TkvA)ÅDÿÒ>›ò´ÕQúÏ‡?»•?^vÑªÊ%‰iA[µ1¤Ññ–Cam\ZÉ³4Rç7!\\{;nKt†„–›ç¬L¹G·×âà.bîYç€$”\\ïå,Ç­´œuÚ‡IB™e¶?¡Ö+¡	€|¸üp¬S¬Ue¨ò‚¶ŒP‚VÎTn²pÂ!©oÊ±qã»9\"`ú%f/SÄ)lkaÉâÚBšıB/+æ«3øâèÏ¥£â3»Ø=qà‡àâÖ±D{Tzu´ÖüËMÔt”9\0X–P“\Z©İ\'o„İ¡İ§òakŒ¸SNÂ®Şè‹›|èä¦ nSi£WÜßÄŒ‡\"±z\'#	Ëä– /ë‚™•@ÇT‘NIáTuÖ¶xÚXØF\r3b_)u	r²iøhÒ{®dLû“¤›<¿ª]‰¡á(ÖòûĞkÖë²ùò2³ÅvÕ„9”p>‘.Ğ‹W¥ß5¥©Râáì€¦XÓÓ]³}6ŒjêYâZc],æóÌÒê1¯£BÏp7Ódql	”\\JÍĞ+[°nŠ”Å+Š»sÔÑÍééi0[»©œÉÆ1Lë²–œÌôêø$\0è[íàd•¹\0ìûÃ‚aI9µoBE¡ÍÊñz\\ÛÕ3\'å ¾¢Ÿ½=Øü‘ä¡ë‹‘|*VHuw;[ú\n¦Fè”]„ŸüR+øšN4«Ë“(g×‹4K:ÒGVP,`,\ZºVQ\0`4å­×ŠKİJxÂ>MËZ ¢d\0˜Yë	åÈğC¯ò\0\"jîen3	HÔs_G›±ø’‘••vƒ¬ G.Féó±ÚèÛ®Éõ\rÑæu¨ºûŞ—½?¤šäzÉuqóÀ§„º¸^Vç_XÑUÌ8>³A\"®¥îJ[¦÷+B;*õĞÑÙ±äQLÜ£’Ó\"7Ş80?+§J¿½=Xqp\'öÍ>¯Ì\\îî\r`‡&‚§ë\"Û¸,îrµä’½3Ï8úÄ¢¨¬ @»èù%4\0†+r»ìï.•Û…‡Æ`l\"vïˆ\ZØl0]NµãÌ›+ëÈGÜº×~Å(#]4tJyhí^K×¢ãŒsÚ„½hóêNOµ”å3ÏÍÜ÷¾/èñ<Ëc2’6ò?¹T¡=xÚº$9òu>Cîbh_Ÿv¦€\0!Öo,Xåò/‹€%ş«Úám~YèÎœsÍ8Å¸aö7Jxˆ‚jÿÔ`\\èuôX£‚Hcr¢O_\0ñ\0öù×Ç´ÅcÊ:•uš<»§¶ºxD3†Óò+¸>*Ú«ø¼ãêÍ 2V†é¹§LşŠ9ô‚Ä\"E¸×…¢PÉ\r±¤Œ–ËD¤X@DóármfÀ_Z`È]âÖá%g´Ê¢¬<Cä.ÌZ½ğ¤\\Ÿ\0Q‹ŒÈÒ£ÓÓ¨°jî™Ñ^÷øŞ>Öğ8ÛÊuì¦¨·éH ÍsÙMa¦—¸ÃÂ„Ã]¢1›‘^; ¿]\0 ¥›õ!ıõ+Ãä7aˆİìéÎgü¤š2©Ù–‘õáåëx¶æô­µšèÎ0(”#<›K.½ @6&Óf®8¡Û ~ß:Ö)ğõˆĞ\\w³®\\Ü=±°_ÂN3QøüIÅåÍÕ°®Õõ¬[¯¼ƒGªËí¸¶ÅÊ1Ö®\r 7j¤{hf»øª}½†šRps½ˆ¹Í3c]ÖoYNí«FÄMÚBÇøÜ{óU²!\'/±:S=9ï2[õ±˜G²xMm:PŒ\Z ¸x\"]‘>õHe°oHhP_/ÕÌS£``ÛëäáDÁËù„û´hÁjM_±øl¬/ÕÂ×~öVöc_Şmê=ºJ]Œñ\0ĞenÌYg	¯@•sÛÑÑnm3…+îT‹¾(»[êíÏ{C¥ÓûK|áÓØWGkí¤\02ãª_ÁLµ(l\'=\0>ìwüNnj95”OëúA+5:–œ8Ã¼U†ËÒœ³qà‹ïƒƒzÛØïQã¸İZÇí5’q]ìÛ\0`Ãr[®XL¸äÖÜ±ÏŸWV?ê}5ÿ9H]í¥Eg\\\\ÇµXvºïŸ½Æ”4¹¦/ËÇ†ˆ£¬Y¶LT]èÂfØ¹áÜ;¢_ëjò10e½ø9¹–)öÀÊa‡C\0~ÿ(ÜñZîöúö5\':³OZw\ZNV|á/c˜[¿´Æ´x;\\½·2+Àõ&¶H¢~OûãåC–=ÔWt‘óÆƒBPİĞ5Y>WåmÕ 5æ¦%pIÔÊÏğÅdqá¡²œJ3ÕË£l£Ã¨`1æœH,†µxÄçÍ1>ı0O§0õcƒjÏjá\"Ş†jğÑ5\"w›	l€ˆœà—Fo>=€¿=ÕÊï#}ÕêJP\0ØÔäƒá”Ğû½6…-œN„¶šî2çTõr•{ÖoP[ø\rTj­ã™´XíñŠ)0ëAë¶É–Cš‚hn¯ê¹ÆòzÛ…\\Õ³8ÄRW©5õBwKOŠoäñã½­é	wªc1~¼§’ßtÎ<ğ×s;Ú@–çJk[|>(ÇyB}Z½Â²…bÿÀª°q&béş{^®#˜‡Ë@D\Z§Dw’İÈKŸ.V[‡€[Á©Ly¾]\0ÖU\0	=1hİr®áÄÛ[Ïœ}P\'IòÏšôúÚè»é’|5=•çÖÅáØÃ,1Ò>ñ€0—ög;WÆ\r\Z›yÀÜ7µàA`³öÊG›×G„Ã²t}5§gß¦g|èKBaéÎòF;SHĞ,vØLå¥”tõTÊ^ŠfD\ZÈ¬|âºn“hí:@SÏÕˆ<gèjy$n½_˜”•RÍTáş*¨3$jyàgu0ìå*J€åô^±*í<a\nf¯µœrkÓ	Éó\nóÓC³ë?ø¯Ï8Æ<ÉÚsGšØğ\"å¾Ôù)urYKƒ\0Û›CtÄ´ †ˆz»é§ƒH‡TA	÷\\CÂxö›Òó`\ZÁg’ƒŠk\0ÿk\\‰{…Î\'KªDi}|ñÌÉ–væ¡¥uÇê|©—ótÕ#\0$Õ]*üÁá1ûq8{İpHP”dtN­K²ÖêÕ^;[Œní[R…ãñqw\0Pàıè§&02Í½ø‘{µò>À–¹…·…„üÊc¾REÇíĞ5£ó•‘G×ğ02¬§b¦ô¡ús|ygAgÊ5†‹e—Ÿ³lZ_âûôª>2Bævn¡J\n—ûSwwÿû^w1jÎøâ›,föH\0˜Ü2\0°¶T7±#ã+q¼D“w§ãÙ£èØ•V‚ıÖÂrÆ`ºÉõ|‘!Ş–(«´,ÙLÆİG.uô¥Ä, ³öYŠZç©ŠJeeæÓ=!=Ğ3â·«ÎEÕ¥MÁ½äŒ3m°:è]À`ŸŒSòÆ¯\\‹\'yMus!×\r·¼Ón3ë;íÈq]ë*ó,}1>Øz×YÈÕé3|½qX?±á\\ÃµÎÕ\0 •Êƒñ›¬	¨Ïfò3\0~ó4N%KãÁ›Ë;;ÌšäyÅŸkÙÕèL$ıº-$»¸¦œânÙK=2JxP;1V•>{X8QlÑOÇR,y³ U½€n¼½[Ïè|-1•’Ç½qñÓöíQµüŞÜx±l‰®¨l¸N^ô!>@ÄÛĞ8IÏ,^†ÈbâGSÊp7?Oã•©Z\09êKà|Wj`Cı7[^nÒs;l£·ˆI\Zâ‘W¡5J\'HäÇ+f‚,“™)¾·¯¿$ÆoÛX°sè.¶—«*v6%Ê’\0’hK=@B’ÌÎäU ãS½½lI’ıi¨ce\0iZó,@\nH±\n°cT1ÆK«Ä$Cı/âº\'¸C¿Ôüï-ü¹ V’g¬µ.kêœ¶¬~5jã8Üà±0Û±ÜĞ:È¼ûå§EwŠRhÃ9ÿş¨l^?ü™/‡ó[´/WB¤§¡ôHcE×+è“8ItM¸aW–ÜM[öCÉ\n³\0dçP FÔ¨<Ä²=5:æ.l™ÇOßğáTÃÜù3š7ğIÒ\\ş¾E|M>BJVYQ“ƒ5%mÉ¶Øéùò¢pƒF’EcYDk {÷ûù’õ«á¾ÏıìoÖvEÁÙ,ß_ïS:İ\\Tı¤·dÛ¥÷]Ûy6ÇUêö±‹æs[°æ0)9\ZÖ*ƒ®7‡?:XÖf/iZ7,Êq„Ò.ÍáËˆfR\ZH—IûHÛ†0Ş~·:¸®¶?o!™4ïãT¿RÃ-™¿¦5ı9rÚ¯ş­	ËåG«¸\'¾ÛòNŒsÄªó%ÒÃçà„]~­SÙü­XZNqÇÎ™£Ybk3×bû¶NÔÅö¡ä}]æ¾ñB‚\"˜A}\"ì™ŸÄé©·—·±6PFør|3c|A\ZÀ¦nIˆ«^œŒB56E¶ªòúÃæïMŸß@ørĞo=êxïsâ‚Jp1‘¹õ6Á#tR €Äƒ[Ø¨owÆÊ‡…×;\0ş«½â\0¿F3ªôéHFşšnïÂNåÙaLÀÅ«I\'¶ûªy[šŒt#/f‰€~ìûYı¼	¶„=ô¿ÛKşÃeà?»ÉïËÿ}ù¿/ÿ÷åÿ¾üß—ÿûò_şïËÿ}ù¿/ÿ÷åÿ¾üß—ÿûòÿÿ‹üÿóÇÿÿü‡ËÀà{ıá\rP@ìêÿ€€ÿ=/Ê','2021-12-01 12:06:07'),(13387,3044,'audit/log','xœ¥WgTSK×^RõÊ”\",@B\'Ô@ @B‘^„ÄƒH€P$ô&  Ri* j¨Ò›T‘^©\n‚ té ]DğE½ïwïıôúç=kÍ9³föóÌ³göŞë.	÷\'Áåà<.8	c#ñ 0p(Ü‡w`?:$8TÎc¬2iš\"‘ 5ÒTOß¤i„ÒYc<±x+,ÆcÍƒÀÃ%›ôq“:†IIÂy|ñx\0k¨¹º¸`X8ÜİGôıfE`á’0¨ÂdÅeääaĞ`÷ÄÃe¾ÑHIÂäaDà7ÀßÉÊÂ%i 5ÔLş\0?ÖN¶ÖâÖj(}c#}+}=\rkŠ1ÈÚÖ•@ò bğ+Æg-úOÄ7gşaíìéBø…¥‘†¦†‘†¾š†º•‰Š*Rão\"ÎGÄlqX+Œ3î÷èŸ–üüï«ÿñcƒñ;W¢ÆïJ°\"Ù:à\\0Ñ™è¨ ­şrÚøO>[ë?tQ:úÿ‚½¤añ_\r¦Æ*ZŠø&„Òÿ®Yèûû×ûª¦b¢‚DiYƒ¿/ôë9”Ñÿ1ı†BÇ¤ÿ-¢TôÕCö§ø;%ø›ñ¿¹±š¶†Ê/•ıwêßÁ?ãĞï˜kï÷¿ó*‚¾e€\r†„ÿpçÇ?\"åWVüåôßÃI$øWF	şLõ+«ÿ)ïä!R22¿È;)iè¼ƒı£ÈËAà<:úÆ\ZF& ã\r@ı£\06àAôµÂc­EAÖ¾n¸o_[\"ãû>ôİ2SAšjƒ„ iiÑ?}‘ âE’<¤ R’b’RbI¤ƒCd¿\rû¤7˜]\"ej2(­7º-&a¯ûÜ¼á¶z¢dM}ëjTLÖ„t%•‚±®\0p0ñ\n\ZÌç_qGq64\'×ßïÙQ?z„Á¾ÃÉÉ¡ƒOÂıàâÛç20ª™+N‘¡’xÄ8\'ºàE×l$l9å-\n@oî…T¾‹šŒ‘¾2å;-;N$¬\'™˜sÂİ^#GßYëg8*•I°º;Y)’¯ÈÌ¼ıDhÍØÍ,9ìÈKÏ4erëıb:W¬up·Ä*ç­Y@d?İä¾û†Ä´~‚)B[¦cV¶.ÅZ‘2df÷Ó)›ğ~Øòçg×›Æ¦œı¹Î{†{•æ¼I:±ÑÖK~ñ,#óÆÀÃôß|×¸LS7.~à“–Íf4’p¦t*£ÒâÂóâÑÚ$ÑAòæÄxipš53Ÿƒ‹¸BR@Ù€MEúö$õçÓŸİ*m¸¨ó×ä„5%ÛµP„Éé¶\'£áê)‹âW÷\rŸÂ\\û»ˆv‡†U˜ŒålÎ¹Gòwâ¥]„Q8ÌË¶»Ã\0?¥ÑËY–Cq#ë’/¨Ãâ`b½Wâ\0\0ùx£jª[¸a üš²WŠTÊTæh±pÂÀ—ÆÏÊŒ2q`{Y¢\nå¡z¥¦C©\"$¦pœØk­a~Aş¡Ê•Z2w<õ•DBf³\'\\nÂœK²GdÔÆh®Œ[î#æ£ÍÀ²t)¹y©÷Âİğ‡KgÁiÜè:CÔĞ;AwâW¢ªœÜäå®ì+îõ‹›r’D·’“Á`áLQêò¨©a\0tÍi—ÎÕf-£‹çlôPCæÍ\"P?.\'›‚›\"£ï&yŞW€ ÑâùUõf,K±¦ÿÇ~Ó~—ı¡ô‡53RÄ0ÜÕ$ª /.åA×Ô–jÑªÅ‡-q&—zlhUÕ²<\"E4§zÌ-Vè%ÔbßF‡™q´Rd±ğ–^O#ë–¯Z·DÉ`„ÈŞ£å¥áÉıùùy0S§\n®”ÉÄ2Fé²“’B÷æü,\0èYad”Øô‡Ó|áÉ9õãaB’­Jİ	ºì‡µä\0 ±r¹3Äü©Ø©;kQ\'|+7	\rºÛ\næ&¨”\\^m}©ç{K%”Õã‰—µë‡›&Ÿ Ê+/òÒŞ®,\0ĞgZòvëEÄK¢“Ÿ3ÏS² 6\0ˆ\0vº&ÂXÈşÈmN@PÕ½Ümf!xåçh3•0ì-5\\]m7Âzêb˜±§…|àšÒØcŞ€h(ñ¹äó1Í 6ŠíÒˆ˜½p|ÊßÃ>T›;æ½©£ 2B>?µA\0‚®eîŠ&%•a´]•çú¨¨ì˜\0â$*VÚ£šÍ\"7Á((?+§F¯³3„vò(î5Å6¯L_áî Gg‚æ¢:Ø-±·å}2Íôı&âKŒ  N_»˜•u$\0Æªa²Çê­WØE„Å¢l\"F\néÛìÑğßšO³g#/—wåÃî?D¾¡•’(\Z½¨4ºó¸­gM›vÁ9}Æ^¨uû¨¯VÜò¥ç~î¿kŞºœ/óè%.¬Wj\\ò’\\›øºB–½,40à«•ÉË»â÷V­r¹Æ6Á¢ÿ¯Úam~[èVÍ®¸’/2í™#«ĞÉ‹ŸšŒ\n½Îkvá)ŒY«±Ôå\0\0 _}}FY%ëP¾Ú­¤İâÙ;wĞ+ÏÕ$DKÏ¯dßR°Wö}Ï)©»\0#oQsÌ™\0<•ËÈUˆEª@¿I¾šb1Bš¬Šq€ FÕF}f$ÀSV`ÀQêÖé%k¸Í ¤´€ç¨àËÚö~^¡‡ÇªFEféRéª×hU÷Ì¯ÇÜï©{\\ng?wOÈÇd\"ˆâ•Ì>ƒ\0İæ´\0.Ò VocÄd¨Û	ˆïVHÙ~cè`ã¦çq<vœƒ}ƒ\"è¥i?©¤Îjt³>c!}nĞÒ˜¿¿S“ÈÒ.)É‘Í.›Q(ê0W˜ÑiR+±s\nz{\0Âµ6Ük¨qO*µÓH¸zAaãîjk-´g{7ëşŸ‰Ú\nûá³®q²t—´ê©\r›©ªLm×ŞtîÖ-¥ÜÛ-¢ïğ$ïÊøoÈª~U¼GYè˜#½üA½Ô¼@…“hÀÆ…¯ÍDÅÖG­¸,ÖlsŠï¨Î	/*¬±†!+3æ*Œòèé¦™Ú£êäõmûò½Y†VK(‘|µ\Z~Â	Ùh¿%?ûÅûÙŞF~\\‡K©ªuPF@‡¾9g—!¢QÁa;EaHypH{YZáR·jÌ5™ãRoÕGR\"c°Ôï6Ya›v²ŞN Ònû,Ô\nA²‘ÃàÓşçæ¦U,…qkŞ9i¥JÅo·MsC‚m1|íCHpóã¥x·öi{õLó¡7\0ìYÊ”Ş_~\"üùóæ&í–îWóŸƒÔÙÕş·QZdæâ:­ÉpÔ[rù6}pRğ@dŸã»!w*‚Ğ¦ÙRÑ\ra«ûáWÆr\n}m¨¯â¦¡Ëzğ°±¯¿TèƒV@O‡<Ñ˜óÃ”Ô;NT¦Ÿ46]¨üÂQN³¼{}‡níA„Zu*—}<®H¢öXëíS–}Ko¨¢VŒFø%•uÂvd¸]•VµT‚Ué[ÖÁ9N!+ƒ×³Å…§ÊsªMUº,Ï2M!B„és¢Ğ(Æâ	ßñsÜzáNájç×_™ÔÄD¾Sç¦j†­µâ˜\0AY¾/Í>Üº\0Ogš•ÿuÍöfp\0ØÔÄ“¼¤°’ş›Âr›®£®·Ü9M­Bùñ‰İ{¤WşÃÕš»Xg:MF{¬B*ÔzÄºc¶í”’Cß×«v¹¹¢Ñv5Wå2F¶ŞS&¿”æİÛVÃ™ÊÏuşît{FâÃÚ8”?×Å”ñî…\'Zñng\0ÈÆŠ|Y}Û‰Ï\'eÙXÕæÕ*-ÛHöO¬\n›\"×K>p±ŸAUm<5ã)œ’Ü	vC¾«ìŒ¶÷CÒèòüz\0´+¯4*ŒuÄºíJë»û\'Í.?)#dÍz}m¾ç’r1?—çÖÃâØG/:Ñ9ó€Ğ—\rf²Ê^©Mç\0M€MÍĞÌ­zPèì³ır1¦øİ	ğ,?ùÅwä½ËÉTÕe®g’Â	QÊáµ.›¹ÃÔÒ¾j™ë1Œ€`Ós©ÍOìwl’¬]‡)\ZÙ[ÁW4=¡OÀí÷¥·ygeÄU2•9>¦ñiO\'Yxø…úÙ‹¡9ı7­ÊºYMÀÌõ–snÚ¡y^áÂº#f½3[	z´Sô³Œ}%ğM¯SKÄ¯Î©ËÛšx™Úœ¢Â§ËÓD6Ú%JNÂ,ñ‰òºç\Zpz`™ïI¬€)ø^Š(ì\0<o1¥î•ÚŸ,—DË\Z[¤×Æ¥.ìµuÒ®ï:Ö†æ‹­PÕN\04wñˆ\'§§ì§¥™ÆBƒ£Åbrê5ê”4·oõÛÙ¢têß*ÏO»€R(/×–¿*ïÄ<ÇÚÇvu	@—»Et„†]øÊi¾YCE“íĞ³ ı•–SÇà4<¼¯rªø±ösBEwAwêUškå×i_1ì[ßåşô¦1*RêAn¡r*»ûw÷€/šG(Uglñ=S{8\0ÌèhÛ%7á3ÓÍ›ñ\\xã>õ÷—âG˜£©˜7CüwÂs¦ :)ÜQ¡>İ–«»”ÙtF½g®w\r¤Æ® ‹öY\nšW—fËËÍçûB=ú\n$ÍDÔ8\\‰nHŸ“ö28“3MS´Çè ëB?Ÿ&åMß¼€#r¯éäBî8ø¤? ×s:’e¿İSîYözz¤ı2¦»½ÛwìNó˜^RÓ•¦£¥W}€P&Æî3&>]z¹OxÌÓÙ-FîmÑkW~®AnDW;¼3ğûJ´šââšz‘£iâ\0,şÔ0ñIıÌTMÆâi]ürD|d±Å C±Ø½&€PóZ:hïİ£\"ir÷[ÑÑèÔ<½kŸLªæ÷ç&Øg‹öDgKkçÅœâ}Œ’uM¤ğÆ>1ñe4òóÔß˜¨Ö\0³~8¶÷eF\0:,`¿mhŸšå|üiëXİ5T\nÿ(§œ2¥aN4?A!d™BOò{pgŸphcÁÌ¢³ÖY¡¢Ğİ’$C\0BmT\0N05Ë«D&¤ùxÙÄÓçÊÂ¼Æen€†ãä¡ç–„i¯oã“\rôX_Ç÷Îp†}ix>X°KZu‰u]nV8U°Óqº¼¥{Ş²öÍ¤ãX“Çêb×FSûgÈñÏO›Î©Ğ†måÃY™¼Aé—6º\\,Îïh\\~ì‰Q¾Í•=¯­$ŸÇ;ˆ!ë\"z²dïyÜß+°M‘_ G§‚Ô£\'å –i1± œ¶Xê¦›–¯šiÜÅ&K8²øq·øò+ZeYDÏÔ•v¤Ø¢çÚä*Š\"ô›	Íå‘íAÌ½VJwouGø½ò·¿?ÍWß-ÍdùáÎ€â¥Ö¢Úçı¥‡.ıï;®2y<«Q³[3_>€¶¾†ŠË2P0Öè÷Œ\\ÛrĞŒ­^”nh„ã©S‚ÅI§8™!•¾EÙ3:|‹µ:¹®µ¿jÁ›™¼âëÔ¸YÇ!–¿£9ÿ9jŞ¿ñ1Ã§Û˜ç~‡rN´ËúøÄ%çë„ªWà˜]~½SéÊı8J6Çî…³YÂ;·ãXâr~®ËgÇ½à ¨3¦’~\'aöôÏãuÕ:+:›H“Ï‚Nl…ß\'O¯J\0è´QeÜPà…h„asKT»\nW\0tåñ\\ÈÕ=˜o!õÁÓ®¾¬ŞÊ!Åxúöt8°YŞH\0’\0ncZzw4U1&`´ÛğÜêgxÔ[e/¾@Èù;:‘\\«GÕ—ÇP×n%w±Vuú©úXšLôÂ¯e	‚ºüC¾üã|p¶¸_\\ÿe!(ú‹ë?T^^†üÅˆèÔ','2021-12-01 12:06:07'),(13388,3044,'audit/profiling','xœíZy8”ëû¿BÔÉâBÆn¬ÃŒf,Ù—†±&Ó+ƒ±fì[’%²UH…}ËšìKÉZD”=;Ù“èGó=ç|sº®ßùıóûÃ\\×Ì¼×óÜËç¾Ÿç¾Ÿù¼ïàP¤7	Gr9àI\\(R.%%%\rG‘‘0$—ÁÏ…²DBD%à˜\\\Z€K@¤`ßç¥öÕÈdœ5Ì…ÂíYñ& Åÿ¸€ì	@%‘\\úê#ª!\Z\rRÂ \rµ´õAªz-ÎÕ’àbj‰sÁ™í{ß{KAöİïéIˆ#¹<	ÀÒPrtpÀ-‘HgWü|Ğ=8âp¨Â¢’{X¡R{ã°=Ï¤·/)¹oFB\\\n*!…òİ·øï!íÅù/ ICÄ¥@’€í\'Î÷ÇÄ !{ù×WA«(üÚ{™ÙY¸š‰š)a´õ\rô4´\rLµ´TÌ@\nú 3G\"Ù…„#]L‰8¼™ğß5ö£ù›´½«ñ\0I=U=m%eSE´Ê_tHx+<	O´À[šºàÌíñ¿ÖşÉå_Ôÿêı·&­I8‚#Ñ”laƒwÀıiÎ@CmúgĞú¿Û³0ûM£¡ıºTŒÿÀ`¨¯ ö;ˆ}˜ ŒöwÌß?Î«’‚\Z£f’ıîèà9ŒŞ,üÂ„†>H{K)h+ÿÂØïRàï&ÁûÂÿ°äúJê*Z\n\"ûcêŸ•,Çªß\'~3RßË÷?Û•í—€9Œ\0ÿç‡ƒ;å ©ßşú¯ÛIÄÿgIñÿlê ©ÿ[/†HÀÅ*<¸ì{/<,¼ÃÂ;,¼_Ş¿:ñàÒÒÒ°O\Z\nı~â!şvKKA\\\ZÚú*z ½`şvöî­6èBò4%Xš	ƒÌ\\<ğûß$<Îÿ}è»tQm¨¢€B`0áßƒ#á÷@’]ø÷$ â\"â\"q¸GBûÃIÕ/SUéå–jœfb-¯{Ü¼á´p¤¤vôˆ¥£^^Š*¤5¶äoé\0ÛÃ¯¡ş<ŞÅwd\'Ò3¼½ïVzcûé­›íìlšyÄœ·Ï¿{!	§\Z_¿l N@\r±c³_¶NTBçâßa\0ìÊæµ’÷¡#á°;\0?C–İœípôR¬;Òé\rêEØÅ.úİ1¡¤n“Ş»#%BY²ŒşkOõ.ÆîºiÆ¬~˜‰Äfˆ4LÓïæ›úáİÕS«\0âóMÎÛoÉKG‚Õ%›\'•ñf²”×Æ7>7¯oÎ}y~½vp{ÔŞ›ã¬k[AßÛØ#Ë)/Ÿ\'§Şè¸>¤DÕİÕï\0SWNaóx$>fÑë>Y0š\\âEqîÅ9Ñ0u²pOÊÊIÔPA—¢#ƒ¨L¬Oa·yqÒÚÈÑ/\'¾8?_vPæ-Ï \nªŠ7©aˆ#cO‚š•ãg(D¯lé>ƒ;vµ>n,6L_™tá&í¬GÁ1xÜ«l–»}\0‘7¾ÆÍÁ&»œvÁ“VX~¦\'¦Ê-¦›€|ºQ:Ú&ØÄ‹Ò‘CY„/@Ë¥ÊsóÕÛá³C§$Ø,;˜Bs¤¡Z†½	Bdc†õ ¼È!µ>^•ŞŞ’ùŠÎ¨£—“QÑ©íŒ®8p)¸–°}:Ö\Z•\\®:?d²…š\n3\0“‚Ù¸ºÙswƒÎÚ\'rb+uÙÎAïøİíš-µs’–º¼%»Ù%ä£oÈN^{˜¦²	-j‡\Zê@ëd®zAÎdEÚ6oJÏ\\\rÕe\\ÉµóâÓSpR$wŞL™òä#ŠÕ»~S¼AÁ”§êı©Ë°Ëa«÷ñNù¸)%–ÊÏC¾Ç1¡¾L¸tæ¡o}¤Á…ö™ns\ZE¥4—!ÕÑvz#ãy:1¥ˆwaÙ\Z(Ò˜¶¹®\'¦h-˜Õ‡JZÊÍGs³}#[SSS`†R.•iÒa=>öíÙ	\0Ğ2İÅIÊ±Ø\'x‚âÒ«†ÄäÚ¢5Yw*¦ÏI@MIcË5£g\"Çï,†ñ,Y!V?jkìÎ¦’sà{½úµŠç•@Z»+aÕ…4Œ;ÙM’–É›á¦É¸]’\r`OÖgnT	‰æ‡Åú¾`œ¢dB-\0L¯·2¥x£×Ø~Eç\"§ñé$êµ—­ùhtŸ»Hh_Y™UÿĞ3İäùH5ôÇøšÚp£jTu¾Çu?O‰†\0©FdƒZÈÈï¥í3ŞvÖŞŠŒA÷\r¡ş”³£PsÀïXè,»m_HÓZrº“ŠÊŠ `\"`.e,ÆÑz~YiéåZ--×xáÇv#ßPìZf6éŠ=\0ìÀ¸¿ÌTuh3«ñ#ÖÆ’GêEm[¯áH´Íì»§Uøü\Z\0ƒep„ÍúGKÅVÁóİş‡Úæ›Ô¼·¦Í¢XRçŠ[³à÷Ÿô ßÒHˆåœ—XÒØ¾¨N3mŸ4n-Ğ°¶ÛY!jòÊu+ã£×UwMöW™´ºbº>ç–JÔú/¸‰/‰›OA\\õèîöTKåæø	5›¦ƒËü`áÿêv–æ¿lt/;¦œgğÛ4BûèÆ”¢ #ç[>×êå¸:]ç\0\'Pè3—Y-€h\0ûúÛsÊR¡›¢…69õz×ÉíiZ”Á¤¬ÖUkyÏìâšÓğ”•Á£l“\0WÉzÁbœÀ×å@–.cƒ÷“GŠ%Âb$À¯Rº\\•\Zpfë°85†¸!t×èåä¦	lÅ<ikî/ŠµğàÅĞ4M*Må\n\0«èœ\Zîö„óıse—KM¬§ï	xûQ¼–Ü¢ç£íÅàÃ‡èDhÌõt5[ \0éı\0)Üª	è©Yq$\rÁ÷j°³çc0Œæ³BÂ„JsJÚ§ÓLäocÕj*S÷×+Ãc˜Ú‚ÄÅ™‚³\"’³}%#‚1ÍF2ã\ZµJùf‘v~ï¶Aø†ê{ÕÅBÎ±9=ÂV*±|WÎÉ,ß]h¨€¶¯m¤İëqm¸¢ØºïÔ°cs$‚ö‚Z•ïQİ:ªRC‹Å·-•³	Ù÷6réš]S6$½—Šß”CîQæØ¦Ãæ>*e+°“tX8©˜ˆŠ¾Ğy‡™òÕ<v‘¼uÅ)?ÁY_™Eæ@tIòä3ùşîŞ~-ÍDCkL¥´¶E—M–;svï|L>%š§BÅK0ú1ÖkÖØËzæşcw=/Ù\'Te\Z½‡\0 AW—¾A\\‚*f³¥Ğ¥ÜŞ¡¹“¹Ğ¦~Ur¯Õ[_ñKî)ğ:m™Ä(³F3Re%\nhÖ¼³§+ »Ñ}àŞgf$ÏrªŞ9fªHEŸ¥“¹F}CŒe&\n|õã5ÿ®fÆ\'³QlNMcÖÊñ¸vÆw\0Ø4ÙAä	òÜŸ{*øåËÊ\nÍªæ7£Ÿ7©½£õ/wiîEÇ1UúİüK·éücı‡ë$Ï\r©³Ø\0!4€5|,V¸°ty0ã¡À·êªRNjÚ´·\0ëÒ+™Nh1ôD\0Àå†;ÛGÉÖ2}´eİÊğ³êÃÚs%_9ƒ‹¨ç6®¯Ó.>Vê*ÆDr³EæªA”¨¦¹qÜ¤sö-Uè¼^?¯¸¼Fàº$§¾£Ü‚š‚¿\"]ı8İ(`ê­óf\"/çxQz™¡B«É)†‘AÔ5AºôP,æLŞ°çĞiN­ W» ¥ÓÏı«.¨âBŞ*sRÕ!wğ\0?‚çk§&ÀÕ’hê½J´|mÅ?\0Ì«\0Ò1î`r`~W¶yNvJ#‹¾¹²£È>Q©XşÉ‘{¾ä×ÆŞ}eª–ö´ªg¬-e fıfÍÇUxĞlÚnsuÅ5\n—pÒğ¥öBéÙD÷Ærö^Ğ³wÇºš’cVDb¼9ÎÇµM?õQ‹r:Õ\r@–ç¥«\Z|9†`aVšR*1i$[?5Í©›YÊÿÈÁzSºüTG °‹u&Z\r÷z.°±°ñ½-‘6Ó«À:rÃ0Ìıf—k™ßß?vñÒÓ¢(¢OÚ„Û·:˜à=‡ø[¨©ÉL§v&ÛN:áá–ñ\0„®°\'•q¹\"‰\r46¼ø”®{rÁ…À>>Õ%nHØæJÓğR™šyŸœò©c.…‰¥ºÄnO–9\"LÙ·Øj>™®›PĞŞY&y=üÀ_ûBbå3ëóX3Ç>Š\ZÖ€ÿ5u{sÀ3>pÓ}Ø\Z÷„¤¨Bª<Û§Dõ±8“ã\0=¯€Nkn4½ë¦ia³˜±ÊdÒ©Y= Ó-ÈGP¥Ç¨õr|5Z‹f”nâLçC1Bí›„|Ñ+“J¤¢ÆZn†‡æÇ©IşÒÔ!5V1b)vÇ6Ogy„¹3tØİù,ï‰Íƒ)x^‰ôË¬\\ïpÎ%êŸMf…kêa‹Cç6[è–6l+²D{ç©*†H¢³hğÓ£Öc0ÆêÁ\0ÿ0‘ğô*UúJ9Õµ[]Vª÷ÄÛ³cÎ\0 ÀÍ±ê­È=<Å¶¸Ê¶V–O°ENÁÍç¾±­”SQ?¶iŸVÿFÃ®¡sÔY2•ıTñ%º¸-»-á«\"õÕ¢ë4¯é·Ìnp~~[\Z\"ñ #G>Õù¥³³O¾õ#Œ¢½eŞ=zCk$\0LlkX‹Y\'Á“cu+QıNå¢úÃ¨eW®y¯¥B5âk8C<ÚLP¦w)éÓêuœ¼ŞÚ±pl\0€ÌX§É¨^™—‘-*2šêpéÌ¿(ô ÜærXuÒ$ÌMçdúuîæMwöÅ9sìæíh<‰CQ#rÇ^gÛ#é–İ.‚õv{‘ká›±ş¦K¸¶Ö6ÏÁ;uƒZ±µ—kwg«µb¡ØrëLÌ³ÙWÓY)\0—Q‹¬‰^ÿ½åİ]:Ò¼ÌÏ=È‰ähE°\'İ‰âÎ³ÕoƒEŸéÆ<­\Z-O9¡I˜\nÉ3î¡¢Ï¹WËßÀü6ß?Ê…¥´½KÈdÛ¼úyçÁˆbVWF´¹àcáö°Ç0õÌğãœ\0¿‡^œ¦a´^ß#<Š¢úQV¦ò[År\0rÊÏò¡PÀúl5öne:uÂ,BsÏ;À.%O©›ŒÎŠ–I™ÄÓ‘½Üé%Dï˜32i,¶+È´ÕÇJ¢@c\r@D\r/f– £=Ü,ˆ\"=I¨ÓE\0qJå\'@ˆ}‘ÒĞÓ³‚4××q:ZÌo¢:ÆÙr¿Ö\0\\}XÅM[EZ/ÕÉÏ^o>QTß6eRñvÄÜv°Öea¦u¹¶©ŸıÚŞŸFIr9ËüÇS’™=°WæšLöï©Ğ^¬1¡®:bÃu%íoLÅ_DÙˆ +ƒuÚÓ÷\\îof[ÄKÏ\0İã~Êa#R“–ÄğˆGĞevË£µŸÎ×Î]¹¨r×2NÌ–ÕÇ+—³Ş“WÖ4Í8l¢¿² 9Ş;µÛ(Uœ¬]G4®+\niòcìø8_°q«-Øëµ·õı1ªö0ƒÉÇ;İ²\Zr+^tì8t}h¾Âàò¼\\É:rÑhnÚğ*Š §8S®İ>”}upÕÀip£tÂ¢l‡É-bL^4hZÙ‘d‰¤UÊf¸ŞÎ;KÓcKà\në+ÆÜ©qóv5+•l\"YëªS_B§¼kŞëÓßx¶†{áµã*eG3§Mˆ™µ¿N,}\r†[eUÙeÎß¤d²m›>•&¸>};²{›¹:²%ååè;wjÈ\r	\n=i(îunM÷\"JS©¥¸ùL-yä¹ß‘Õ€³[)cb\06q[XHßë{.¥[WÚ¤Àá2yíÊ&Ü3‡éèö³ÖÌîò×òtMhñ.Ü!\0$\ZÜÈ0û~w´xOo£àºÕÅ$p)7 \n_~…¤d­k„p,ì–]\ZÄø^½×Ê\\Úâ¥èab”=Ü¼šÆşù¶ôgö÷À[¸ºààÿzı‡IÀ~Üw“:¤ÿ‡ôÿşÒÿCúHÿéÿ!ı?¤ÿ‡ôÿşÒÿCúHÿéÿÿúÿçÃÿÿı‡I@aıá\r—†ïñ_ßÿ.Øy','2021-12-01 12:06:07'),(13389,3045,'audit/request','xœ½VKs£F>ï¿Pé”dƒx	píÁ Q‹doR®¢F0È”± €do\\ûßÓ3€${³—¤*43ı˜¯¿îÖÅ©şÚèš>Î\nÜ<f|ƒuAıÖè¢ ›·ÇÆ,S2¾Éuá¦¡úãšüy$M»\"8%õµ…BeMU\ZòÊÊc:\'YşÒkÂE‰Szªêcœ´yy  }Íóûœ•¡¿m]ø¼·;Só|¤ëá–ùúégv‡4¸óqŸY½Dñ@®‹T¢¡k	ÖÓ™>æ¸~‚˜pB>áªºo!ğæ¾·mî£¼*ÑVej|C‰Ï$-Êôë…1DÁ-\nš9¥B¡géx±»]\ZE/ÁÕôº¤|:ÉîI}Ê“¼t{\\³\"åÇhc,\\±Ğb»w1ôäÁv³ö,DwpOU—ŒiŠZnáâØ±Ø…úX–é.^ya´1Öh Q–eAÂi¢íùÚâoÓçN›ÈYÒkø†¹B±émlË	O<i™DºöälœxP\0ü±©ù¢LpÁª‡ªG¶ô—ñgô{È¶`k.[Û¢&‚ŒéB‘5{ª	–ªšse.‹âlašudË3I‘f’j˜Ö\\ÑìKÛ’­Íua*–!€µu\rÊµl×X†vî®ø•óÄWå¬ˆeĞº³zf!¨j@Îf€–N†ËÔ¥f4 û¼ik\\ôÎV^Ç=´_—eË¨peHŠÊ(Mì²TUÔ42y\',kY&ÍfZ6Ë¤TÄš˜¤¢*d;AšKÊTKB<Ÿe–e©¸»\n×ùÅòY¸\ZmÅc[BÓe£ÒêqÏ¥äË,/üì?~¤ß$o‘ï’^ú„©”ªSÓ|›šHIW„‚uW‘/}Z‹˜VÃ¤æ‡°ƒë¼ŒÓ]¯ÂŠ5`<*\0÷¡m«Fçùççç	Çä@Z>¥æ»#íø†–×ä\\M^şb5>íæ$…•¦³Ü(6‚.Ë’Jûı9o8\\½4ÒˆãÀ+Ş„Köy<\\¹·nßeâàÕôÖ¾G›Ép]ï.·>\nhs]ë\r4ÏU5ƒh¹ŞØä‘ƒÖlIÒ–5a”‡ıˆËª<a_2â<ÀbÅ.\0E¶½zÛÀDôŒm=ÛQ/œ(ü¤N/´›X¸¦õ]‹¢Íí­to[”\'‡Ó	ÓWœåÏ7¢UçnÖU¼N?<øMËšßå•+?a5ŞúèÒÓÍ»ıy{°E·…Ï€í’¼ÅÖq­s½Òî!ÓJ¼àaØƒ?7RßİFhKJùW%5ÁM2<,±¾ÿ¤ğÇ}-Nx‘ıÓÈäÚïE4ŞĞ?:—Ã±rÓû~¤BSñ›Ğ5\"d}§áZ¹]£MÇš6<‰úm‹Â(œ5Šm×3@!ÕEUÉª\0OñDÑYÖz2¯µÙ\\>ëu©ÄõşDètç(ıÿÇñ.]wù¿Œ÷BBıLé‚_¢è2åi«°íjì›÷ÙAoşQ¾ÃË‰F\'GØ\rÔîìÛß‡UáÁ','2021-12-01 12:06:20'),(13390,3045,'audit/db','xœíUËn›@İû+FllKI:3ƒ¼ „$n1H7ª	&0iP¨<¤D–ÿ½¶k\\cKM6]‰çÜÇ9÷Ş3P‚È²$*RV–ô+™,\"m ^Q&‚wëŞë…mÓµ3Ç×swBZÇI°¬*^CAOâ§\nùsGŒˆğš$÷ñÃ½™§)ÍbB~Õ¬xm,E=&HUQ†¢\n/d„4MÔ×©!Y®rÙÄ»”%YÁzûúLšü&LXRz )—µ”.$Eá•ô,Û2ıàGø3ªÃ‹ĞtÏŸSÇcf…Àğ@åYY4Éª £)Ïö=\Z6{ÖÏušõXÎ­kkn9¦uøÆgÛêøì‘,‹XTôá™ö>HÙqïf¬+œdy‘Ò*É³ ŒXJwáü©a;ÒŞ&^¾¸SçˆïWëûÃÂ3n6 \Z˜ÀuZÌ£öÚ_WÓğ\rÛ½	Á¤MÔ¿æÎÿD1õ€ÓŒ”á\\¶±\Z·!Çñ‘–{æ­53z‘m—;¯ÛÑãÚ.îny½Ç€˜òÖÓ’Æk:ëëIé³\ZìHwÇi†I\rcõš½s7ÀZ+Ù¿¥§\"Il¥§~HïCzÒ;)½7şôDÜ«<QR£<»ÒCaêxÖÜ¼îşï—÷»ÈëŠO3×<eY)«ò¸ùŒV,Çà›a/,Œ†ÉKUìS=ç4¡iO›†#|@˜@™`8î1â!QöÂ\"¡*V5pÅÉ’¤¶\\ÑÇu×ÔãªŠ¢„{¹j\ZßQW«ßœşä','2021-12-01 12:06:20'),(13391,3045,'audit/log','xœ­Vmoâ8şÎ¯°è@j!ï$®ºRJÓ-wN„^u:NÁ$¦ø6/¬“¬Šªş÷³“@èíRHbÏÌó<3ö8Šğ-†:¬8Ñë×ªğ@=hùCe\rÖí‡Ñ3¸\Z@o4xzÚà~<z3”z$qp˜Ğõ¬~M È.…]ó“DX_2õæÓ^(ô übºæ†òµEMÖeMu¡­‰‚¢ª™3‚|{\'¿‰ª¨špıÎ#—(i*¬V8$á¸»n†ØMHB¬ãï>\\FqrCÂŒ¢$r¼ùµ7Q€Kƒ|åßm@1œ#Œ5¥ŠqW%ÎX+3îvYmk`õ&5À~³on:kÏz£¡=›ıáÄšÖ˜6˜19qB	‡S]îzğüïXûiVX­{kl\r{Ö31oVÉ‡â¦8t±ç$hîãÓŞ%÷2z-_$\\D4@<{Nì.q€>ÂMúæÀùmñÜYí—QxÄ÷Wë\r‡\'ÛüZà4Áh˜qnfÿÕyí™s0ú:7PõÜh¼Ğ<¢oƒ!ßæğîD°Âª•…lqã#%·{Ö£YÉl3uÜ9/G…k6Q{~`ù>÷xˆ•Å¸ÙÊåä\0ùJ©²ª}ˆ./§Ğ(5Æa¬J³ÿÖ+$C7*v^W7…ï<£¼óDI€õşĞ¶ÆÀ20ÚmZ¬Ü4J¶øù²fqâ8YFq)F	öf-ğ»9x²lĞl,Èk’RÜIC?B^ã4zƒ>¿I‚$^‰Ò• Q‚‚%¡Ñ:Ùc\nø»ŒA•RI7*zŒ$ˆª.èYW”v¤*š‘Çç%›öÃÈ\'I_Ò€©µ^]¼Ê›äd‰G(@ÅÒ8sf/¢k:hµê$,#q§Pw&dY/ì)ºÏ‡\0	sCÖV½ˆvz-~—:Kì¯0;·ŒÎ=ññCöŞ^-WPíJ5;Aî7ÀZ‹aíBø™8M¥«· àš£é®„®½#´ÙØÔn·­Ú…x—wâÈÇüĞÈ÷9‡Bwo;”Ó…34$ôø{\\Éã˜”¢5£#ıt$A-è>Ó’ÏôÀçêKÎ./2Ûë2ø“?˜†È‹4ÌÎÂ¿şUD”ù<eÛ¤¹§Ç—l§ú$Äfæš	Q»L‡‹|ßIcLNÅA<Xò#mê™È{	u±HP±U>p¯¾Ğ4|&Éò7DQo¹kçs\0¢”AÊÙa9Z³±í$ î)‘—ú8O¬ìÕù³ úy5æjåmk±—³œÆÊAsÜ ?¦è{ÒJŸCO´”,“û˜²!Â\\²~íãq~L4Gó¿Y§l–­‹©Ç.Ú\n›f»±œ·}|»‰xØßûæÀ‹C–?ÑĞ«CR\r©âè0ºR—}¾¿ÿ´;ï¢','2021-12-01 12:06:20'),(13392,3045,'audit/profiling','xœí–moš@Àßû).¾Q“¶»äáŒ/(¥­B\"ºfI@¸¶dVÀ¥¦ñ»ïm¥]ÖfÉ^ÔDå¸ÿÃïÿPBŸ\n*ÓvÂ’,_¶1Å²ªjP\ZT¢í2NX{Qx‚0êCYÃ\ZÑ”¾J âªĞ+Šà–íAÀ—O\\_Èâr¹OÛÎ–Æé-8;a–¦,,ã,¥ Y÷ô.+ÊaœşdiäqæEóA4Oƒ„Õn\n(Ä¿*tÜ*&´½Œãëh~ml-ÒŒ;²„ó\"™¨D†D…\'2‚’,ñû\'ƒôiÓ¾°ØGŠªªƒ•PøWÈšüFd¤q´]d™È<«õÆ2áõs/+p>³,`8Öll»à|âŒ,¢¸ô8V¾ôw‰jTI¤¥¶îƒ&41I²‚ÕòLÛLı–”$¥P…¤Ô‘…÷«kZ¦1mşñ¿‡ÿÄ7ÛNô‘=õl}lú@wÏË^”y§¥\'Jë½ÖÑ¼’¾_$iƒäÄ<7\'¦m˜gŞT?µÌšNÎnXÎÒE^ÌïÙaí—5õº÷Ö:Ãqz“åI šÌ+Â;–[sÓ‘nyÛ İ½Ğo}vFöİ/æ·g†™«_l &pìŠ¹[ı6çÕĞ§ºå\\ø`X9jŞs&/ºLŒ\\`‹–Òí³Æ6R½ÊdOï)¹k\\šc½‘ìyk¿òº\rªÕFëê’ç{¿İ!ˆ^ú `İŞ:œµƒu§4Iµ¶A×Ûi:µ‘êìÚj{çÓ\0kÕÈş>z*’H5zêÇè}ŒŞÇè½7¾ônœ<¢ğS_\"X=„!ml×œLOóúõËëg‹’w¿èkî²(½„•wY$î„9Jù=ğU·f¦º›ø±\\äìÓ\"½Ï‚¨s:†5btŒğ1D\0a\neŠa§wøè¶	”=²#4…ŠUMA;±bˆdIªnıw±6Ÿùş«Jˆ„cÕ4şD]­~Ïo','2021-12-01 12:06:20'),(13393,3045,'audit/request','xœ½VKs£F>ï¿Pé”dƒx	píÁ Q‹doR®¢F0È”± €do\\ûßÓ3€${³—¤*43ı˜¯¿îÖÅ©şÚèš>Î\nÜ<f|ƒuAıÖè¢ ›·ÇÆ,S2¾Éuá¦¡úãšüy$M»\"8%õµ…BeMU\ZòÊÊc:\'YşÒkÂE‰Szªêcœ´yy  }Íóûœ•¡¿m]ø¼·;Só|¤ëá–ùúégv‡4¸óqŸY½Dñ@®‹T¢¡k	ÖÓ™>æ¸~‚˜pB>áªºo!ğæ¾·mî£¼*ÑVej|C‰Ï$-Êôë…1DÁ-\nš9¥B¡géx±»]\ZE/ÁÕôº¤|:ÉîI}Ê“¼t{\\³\"åÇhc,\\±Ğb»w1ôäÁv³ö,DwpOU—ŒiŠZnáâØ±Ø…úX–é.^ya´1Öh Q–eAÂi¢íùÚâoÓçN›ÈYÒkø†¹B±émlË	O<i™DºöälœxP\0ü±©ù¢LpÁª‡ªG¶ô—ñgô{È¶`k.[Û¢&‚ŒéB‘5{ª	–ªšse.‹âlašudË3I‘f’j˜Ö\\ÑìKÛ’­Íua*–!€µu\rÊµl×X†vî®ø•óÄWå¬ˆeĞº³zf!¨j@Îf€–N†ËÔ¥f4 û¼ik\\ôÎV^Ç=´_—eË¨peHŠÊ(Mì²TUÔ42y\',kY&ÍfZ6Ë¤TÄš˜¤¢*d;AšKÊTKB<Ÿe–e©¸»\n×ùÅòY¸\ZmÅc[BÓe£ÒêqÏ¥äË,/üì?~¤ß$o‘ï’^ú„©”ªSÓ|›šHIW„‚uW‘/}Z‹˜VÃ¤æ‡°ƒë¼ŒÓ]¯ÂŠ5`<*\0÷¡m«Fçùççç	Çä@Z>¥æ»#íø†–×ä\\M^şb5>íæ$…•¦³Ü(6‚.Ë’Jûı9o8\\½4ÒˆãÀ+Ş„Köy<\\¹·nßeâàÕôÖ¾G›Ép]ï.·>\nhs]ë\r4ÏU5ƒh¹ŞØä‘ƒÖlIÒ–5a”‡ıˆËª<a_2â<ÀbÅ.\0E¶½zÛÀDôŒm=ÛQ/œ(ü¤N/´›X¸¦õ]‹¢Íí­to[”\'‡Ó	ÓWœåÏ7¢UçnÖU¼N?<øMËšßå•+?a5ŞúèÒÓÍ»ıy{°E·…Ï€í’¼ÅÖq­s½Òî!ÓJ¼àaØƒ?7RßİFhKJùW%5ÁM2<,±¾ÿ¤ğÇ}-Nx‘ıÓÈäÚïE4ŞĞ?:—Ã±rÓû~¤BSñ›Ğ5\"d}§áZ¹]£MÇš6<‰úm‹Â(œ5Šm×3@!ÕEUÉª\0OñDÑYÖz2¯µÙ\\>ëu©ÄõşDètç(ıÿÇñ.]wù¿Œ÷BBıLé‚_¢è2åi«°íjì›÷ÙAoşQ¾ÃË‰F\'GØ\rÔîìÛß‡UáÁ','2021-12-01 12:06:20'),(13394,3045,'audit/db','xœíZgTSÙ·_\n.@š°h#5@*„P$4	½·¹”A\"I(iÒPŠH•ª\"EºXh\nHÒQº‚4Á:ófæÉ¸Öû¿/ï÷Ã½w³÷>¿}Î.wıÖÅc`˜`*\'¨TüIU\\QÄ1°?_ *T…·Ğ3±éZ\Z‚´L­ŒŒ-@ºæ&F g¼Ÿ+Ñ×Éï‹wWÙÑ#bĞĞí|[Ãˆ‰€ë	@Ë“LÆS\\1o?‚Oà$BÅSD ŠP\Z*¯ƒÃ‘ˆíqäöÊPLpƒÚ1‡íH¨„ìXüÏ!)+şGŠ0å] Á‘(8zòï””·1éêhYşÚ¾œ=\\üœåµLŒ-,Í±8cK\'c¬‘3krvñ¤P}}ğDŠ¯O&8Cş©±ãÍ?¤I~dÊ.’æ:º:æ:ÆZ:ÚN–XMC¿éøÜ>ŠÁÕÉ‚DøµöOKşMıï«ÿöc‡‰7O2Ş—èIq¢º¸Èø¿ÌYâ°†N9mñ‡=çßôMpÆÿ¢k c÷\'+ìñ?@ìÀ™Ç,õı¾û¾ja-±†&ÇAjßÚ}ÎÄü¿-HıÂÎd¼RXcí_ûCJú»Iéá9r-=#ì®ÈşœúwåÇ±‹ê÷‰ßlô¶÷ûßíªvRàJ’şáÎ~DÊnR¿ıåôßÃI\r$ùWJIşlj7©ÿc-@ á»&\"\Zı½ öo/ñöï‰÷v<¤\"|·¼SF(~oxJÿèÁÊÊÛ]gl¡cn	ÚŞ\0“´ŞíÃ&P|}ˆ®Î³o açéâCÀû¾}“Yc\r­t,@R(ùÃÂ6Fª¯äö\0\n‡ÉÁàrPÇ@1pèÎp@N½µµ@—S}¾ÑôCªkd\0k’×ì¾‡ ³xÆ}®æ·óu¡­©e ³®\0°1DGœ—§ÊF\"63î4Îåñõ=¹±õv*K½ ¨&¹‰ôÃ†möMå_MÌæ«jy\n±€7´ù\r_[Íú\Z6ªÄÑG—+¢5	FV\"€ı§Ü¤öv¶‹@Òn«GÄ£Y”Cç¼Eí£KÎıÀÀ«‚L çŸ7s.3]k$;ğ1­ÖU©X|>S8;œ¶¶şáäéXdõgïWø¹ìÂêµE4nÇ[æ\'†]ó`í£gªOT3„FdxiªÓj<Å&\ZªÈsu2/D¬	§ÎhçìËµ/MG3²À´Êş,å¢<Ík\'/~(«u\0ì÷é(<ì]ª)<³Ó¶oî .¤ıRob0\0”³„âaã-î.\0à	+ë>Q+äcY:<öğtùˆ¶¿—‰Uz1.Ñ2<òºìuôºmÚ‡ıòøû°>÷«fil31–kí­Ğ‹°\'}Ò8»•Û¿Çc5æfÙ2©ƒõ€‰*‘[„!“C»æË)\'À”€~-»±–oèõğ -–v¼r)}ñäRpk¥³‡üÁßsûó%#.$|ĞLFÓXÓhYT‚|ü	ŸÅæçÚÀ%»¥œÊè€œ3Lyı)·óúáeÒÄÎVø>í¤W¶1§çn¯^şüøÍxé9BwMy›ØõS\ZangÓŒù™b:^‰º!AuD\0Xê´vlQ»Ğ)Ğ!Ä&|İ‹ ×.Ål>sÏÒê%’HrA<ì$»Ù+vZ>ÎÊ(Ì—qUÁf´[\Z0j2ª^á&¤nT×”WkOø>ÙUöä\'.¿kÒ	¢=½»ŠÆ; \n,_g…Ã=“çS×£Do¤Ò,èg8²³ôp¢6Q~¢6É¢B.ØÇgX=Ú_8Ë}7rº.îp§9å¬*@W®‘oêN®MNN²ò´ŒiØ«ñLÔ™]I;øŠwŒ\0Œ·N Ôg\'ØÀÑ—‹ËH)FÈw¤èol*{Š¢ Ùsn´Iv7ÊàK`¢*\0<¨¢FŞ÷.õ5Ïnór˜—g¯R(îT‡iÀG\0Ùe…ŠtppğõXrd	×“†bÆ§Ænë ©âà#ªM\'ÈPJ†z‘ ş&í¥²Z?»BÔ×Bc…ûyÙ¶ÕÅËñùÏgoòedñü=Œ¥³ÒmrÆ»”ò­&)}VuÆÇTW:²†Æ™s/ËÃ£“Ö/LõĞŸ×nº«Sİuv6¥îIŸ÷-j}×œ]¿ó½ şuä1%ó¡wºîyúk6GQàªì²†oa…|-!rÆüÉ›ôVæ±·ó:ÈÁîƒBÇ0éË|øè¡…š¢‹Ùİ(@Ü5¤dÿ°}Ş‡#æ¼–,.EÕóûÖÉñÍRsPqäW\r±^«¼6\Z\05YÔ~Ác×¿Sñ\0Ô§ın<^ŞÒfòåŸ<,µÉù­eQŞá‚ÿZcÂ\n»¦æ¦á‘§ü)ø8ñæ]æÙS3Ùy+o°[ìf\r:Îë’Ç_>/çfú‡b­†JJCşGÕs=ñË‚7kÕAÉÖày·!«K\"à0N‘Èº«Q`\nLï€‡UJ4e¸®Z¨ö­¡r;Ô]ŒÏO´(¯\"L#Zïe™[§-1Ë2åreB¸q²èUG.3‰ÿéÁğéh2½â0¢…áÕÿ€¦}÷n©Œ£Ö„e¤ ¬1Q\'œ[È¯,>ªÏ,‘~~B3´·4€ÑQ“Ğã³2‹É(\n®QH£—¯nˆÙİæòyó¸6õ¨İÃ uvÃ¬¯†¶æA ét–Š¤Ty°Îğå%H?|sßûã«Ú£øn_á®+‚-B.nÑM\Züãvv¼È6\Z¨@š­ë‹\Z`¯Ü×å—µlÛyËÃƒ¢\\ìÇ»úôdÿÇU™d^H¼­åÒpfîu½7Şón¢¥²9®‰É=2måWòlõı‡¿ŞÀ3«ôJ8ò°7T[L›·™Şà{ÔŒ (‚\0ûŒ&?ûg_Ş:ÙĞ\0ŸşzÖ‡…F/\':¿ióç²À–ÏÒR‡ —¥²°¯k¹°˜œ<q…J&§_T¹Óÿbô­üÁ9J`}bKîÙŒO}ô”O=0ÓŒÓ¸å€ıŒqŒ0ğápYÎª§*5ÙË¾i,*Äq¤¢’P½y­ Ñéz¥­%í›ªfáæªŒµ=Zü\\ø}ÌuŒs[óé+µ­Óq&aˆWª;&é›yŸª×¸x¬!ì-ï³ñ\n„˜Ä6«Ã3¹j“H‘¼ğkD“lÁşÜ#gØidhd:£…Dç`#bf_šqök‰2Ö(&a¯\'œm)…•ÛÅ5¬ÅïÕË°QZ\\~TğƒS€ı™ÍÍ!áœ­±Ÿ£”äyò—azËšì9‚æÜê¼swŠYã”Ø<øv¹>]ÎŸÇ8ÊÑcü\\¼ª¨Pz©4¶µR~IƒqjVØ\\ïD×³Ïªˆ/h–¸¹L)3úâ¶‹Ó¯Xh4ÂÕÜ×´\0Ÿ¾ÙØˆê0Àş †\'2 HèíûPÕ FDjØÛ+£{¹4Ôèj«|´×çKÚ¶NÜğå	º#£ÔèkŞ‰š‰˜OÌ:F}£$¿k·ÎGäÓ2ûÏ’Içi×²¼6;¤KeJ­Ñàa¶êZ&\nOÌk#=MÎÒÑyu\0ĞõöÑjMÈûÔ­U(q˜5ˆd>3Î5DÖà‡åI@ÅyÛğí´•EÌ¶Ë#{8/K šBË=)® ‚kjÙ›Ã²ûf(fÀ”½5±rÇZä9Ì-|·İ rZÛ^¼ìA|‚ûr0Ofë¶Ø¦b´oÙ$Ø}n”>Èœtt$çÄ\r\0m¤†j°ñŒ¼÷Yõf£õ‰¦5NòáÅ»Ùt³°€Ç+6Ó‰€O, ÙÿÕ>é=ò¡{†7Åí[oàl&7ºaP0]p¯»Ğ­z(ß3RlˆqbaNûn3ír4É{ôÈÑª`¾»6Âo@Yáx´‡¢Yp¨óšºÈÊ€s—ET¿i kú7îÑBÎÉ+”vK¡ÂŸâKõË¿õÉ‚µ”dN;Ú(ñDÏ«Ô}ÖÆ]Şê®|Êİ‡¾%Û— õ¹+W×î¹%y0¢ítED½¥uY¿¸É-Ô*Ü#u“ ­)æ8­cš£\\È HõF\\Øñ|ÏeĞ~³ˆˆG¯½À¼q(¹«¼µ	ØËæ8%™ ğ9šü”MêéB™¬ä–É£Ù_‰¶’y8§³7*êÚ³Ç\\Ï‡—ÒxÂÃÒƒŞG=È)ê–«ïÁ‚q¯ø†ñ.1ö—påµS˜‘®éŠ ¬T­>ëús§ùƒ„ä¸BÓ13w Tª:Õµ¾:ÊÙ˜Îê£T°sÛùœŸÕ\\ÍDİ¬½Ïb+øpûPÔíÄCõGî¿yÍı’R%xëmt€PºÿHkË×¼îÖåXMO•TzR4É^Zİş2kåÊHÍGÙõcå¦xÔé)]KM“\r:åàıÓ‡á«—reÄ´2Ç#Ÿu67nYi§®©ú*:Ü’N*]?v›Èb5«5Œ?3„s16~‚Uµùt„ü1³5˜•Ë¯LÏ´ÌJİëNC7òŒDÛ\'%m3NÏ“lT\0šŸŠmƒçT¶//›^NLN_G›$–Îô®•ƒÖQ§Æ¹“=ÊÒËs²·c©W…O÷èó]Ñâ5¹Ÿ\n¹´‘qO,·\0î…Îz‡\Z\"n´+!¥İŠ¿Á×\"ÿ d»Õ–åT…œ©=ÏÀöúğĞÆDg<ƒVÚ±İ7/²k™>7F¦ 5æé!y\rßî«Ìçÿ\\¼|<İˆ$\"å×uh6ì™¥!Ô4´!-ß`v©²–yl8AAªè– & ^ã†ãÖ¨®te²n**^¬g\'q;ô¹µ9¾Ô¯şöhşãaSÍ+\0E†~º9âTÉ{rvÊ°ç±ÌŸ…ÛsšD@?jÙ=ì_¤6èƒFöÓºeãŞ§ñÎb›ÒM¶Û…SëÈ~Ÿ}Lú;9Ò~C«0áÓŠ!QHÈceI^¶Ÿ³åJóĞùŒEšDFõR\0ŠÔãFß‰ûõ	£Óî¡d’\\O‚\n×½¨Ï€xæuííh@‘YÜà$#—ˆ¼ô†»¯ÇÑh‘—MWmZ³¾êºzßwpÍlUe»¹ü”\r>¼LUÈ•õR/‡8£ûH¤Ú÷gFÂE!ùÕKhë†%îó§,q\\…‡Š8Ø*ç\"H\\@Âp÷\"˜{?	önòr§¥\0%šF¾Læ‰^¹éa_#ïÛZlŒeûöXI¨?×x)Ym™BZ×ğïêpL\rä,)$õ§Eëû8_Ô¥48‰‘cU•\0ÉbrÆÉAËcÏ²Œ;)¶=I:Ïæßàg…ÓQË5+}˜GŞA—Æq ¬g²Í*iŒ¿SéÉ”Àş«ï.Ôw{†œÖı\"òNa¢êdLæM\'ˆQÂk&îÁï›Š“½İ%5ã\0°êl«|j*¡ÀWÃl˜\0\0Îñi=³åOÍëÛ]MXæ¥le¹Ô\'Ïz4~ª|h½ºÓS&ƒß‰Ûï¸~Õùİ &§\"Ò¯‰«¨Ä¾ê\'²`*’?Î¼=Å<I ½­[êA2)z¨ -S!	ƒ-SÂBõJ\rK,”ÕüA\'@ÜVT-JŒœHz•c¸Ï$üóúrÇtîÉøÿÆ)¹{RõQ—ıíÀsQÊlú|kjVUnÅl5¹Ù«e\006CÄë»\"®S11(®0ş¾	0m\0Š(„8|‰ÿêT%kªÚ½¤#Èè8+#¬JÙ‰s®8ÚE\nË¦™â•µ-¡›úç¢]z‘[Ú·B÷u	„yJJÿLÂ!~æ?_Â®l\0\nEïB áÈ4zØ£öè€=:`Ø£öè€=:`Ø£öè€=:`Ø£öè€ÿ§tÀ_¿üïè\0EeØ®è!• P¨JHHÈZE›ï','2021-12-01 12:06:20'),(13395,3045,'audit/log','xœ¥XgTSY×^\n,@š°h#5@HBEB“Ğ{›K	$’	H)\"TªFP)ÒÅBS@\"X`@:JW:‚/ê¼ßÌ|:şyïZçŞ³ÎÙÏ³÷>gï}Ï:¤2„‚TAŠ°\næ,–\"¦†AÂ‘!8$ô°£ô½CAÂ‘bVfv }cc™±‰©HßÒÌäŠñ÷Àù¹x`ü0®bj8¤ÂaC6Ø!¦€Âá\07@‡D `ˆH¤¯?–ôU®æTP‚«À• p¨œ²ƒcPdH(©ø•¦ ¤ª\nSı\nø›EÊÊJ‡&éëéXÿ:|\\½İı]å\\uÌL­¬-QhSkS”‰+eru\')~dèçBÄ°®\"¾:ói¼?øIK=}=K=S=]k”¶±Şß0d¬\'–Œ%ºc=\\ü0nxì¯Ñ?¨üüïÚû¾À8¢\'‰LÀøáHDŠ»–€ù‹Î\Z2vùËi«?ùÜ]34C›şÖHÏá¿6ØX¡ÎüiÄW3Af¦ßl–üöşùºê ¬QÆfg\\A\Zßı|ÎÌòÿ$A¶™~(”©î/Èş”’úF)õUø_¶ÜJÇ@ÏõSËş;õïàïÛñè·‰ßì×ûßy5@_3À\rCÁJJ}wç»‚ï‘ò3©ßşrúïá¤’ø+£$~¤ú™Ôÿ–wp…Ÿ¤ÿvJÿ(ªª‡¥\0mj¥gi\r:ôßìù¸×X¢9Èçá\n¹úù`¿~İÉXŒöÛĞ71)-ÊØFÏ\n$	‡\"!º\"OÆÚHñ“8€Aa\n²\n0Y¨H†„*!aĞ¯Ãù-¶F”b}Í•6ó÷QÌ©>KG‚,éx,ïéC»2ª@=H\0°7Nƒ_‡Ôd•HŸ@À÷³ï¶-ò?¹uğv>W³ ª§z^ˆòG…ïÏ]OÉã­ï|\n±‚µvûO”İØÊı6iÄTNmÔÆhcMl„Ç©==î,—‘€„ÃÁ °w‡»Ş%«`ê÷üûAA×@¡Ï?íÑç_e¸ÑFpâeØn®W³út¡d¡`\"sg÷ıÙóqˆ†O¾É×ø8Â[t×„µî$Z¥„ßğf¦åhÎ6Ğ…EfûhkNPI¢«³­õ„åâféÂ¶Xöst.qôƒe{Öbè™tÊD¾\\ÕÒBíg/¿¬jrèÉ?Zo,¹pÙ}d™Ús¥Ù/%\0j˜\"\0±ğ™N/w\0p‡W\r¸5	(0­Ÿ˜~x¾f¢àcf“•„KHq$NL¾®z³kŸùş¨œsæ¾Â°×u‹L,ªW´Ä¹óVp’IˆD›3ÍëâràôŞ} ]õ€ïe>f¦ã¦Ëa×mÜœÆçšÓĞÏU·vŠŒ}²Rã¨gêÖ³ÖÎ®‡tÕ¹zË±ş^0R$.™œô^;M1„ÊœIÍ¥`å\'ñ˜\\^8:Í3ı\\ö0\0¼àXd0*I¯|Îã‘Î½Xë{jñ¯ìcéÎ/ßÙ¾úéñq»™Šxì@cM°§èÍsZá}3Mùb{_–Šx\"@{Í8o\0Xï³uîÔ¸Ïê’…ídºéƒ5Hè‘d4‰X¬¶¶y‰à‚œoñçJ½%Ös³KŠ¤=ÔP¹F=ÖFôÚôê×¸°™Ø[\rM\0ñÕİŞ\r€#á‰ûïÚ4l1»ÈàßşÒiú^ˆ<ÓçÅÓa%ãàRÚJºón´È­ªí{^®ZÄ.:Ò_Ä.Mä²|h²cb¶­à££%³q\\÷¢š“hNw;]Õ¥èÖ\rÂmı¹¹¹9fîÎi-GÍRîÙ¦“KÛ±™¬¯x¦éÀÄùÀMQsI`–sµ¬fô˜¤R¤\\oºáŞ¾*ID\0ZƒñSí2c<ÑF›A)ê\0ğ 8|7´>Üz&¯ÛÇiE­^ zQœ\02?¢ßF1ÊëëØëé´¨a<z0S‘“·ßKUÇ¸À&ÕÛİÈP½:ºáà‘vİõ$‚Æ›·|¾äçSùû…yö\reN‰EÏ—*ûÑ3‘~Ï\0$âhÌ4»ü™~å\"›9â°M³éiõm“ŞÜñÆ‚«2§1Šc©»Éóƒ´çMûA!ÇïéÕÇô_\\Jo~2ì[Iiä\\¥6s¼À¼:­l9ş‡¾W¡‘áİ)Å‡&0u6HUë—ğŞÕÎPYÓ@¾´}Z—0ãôÛ=ÄØ\0«àidÖ#*2/m/¬DÛJ„n-o@ó-?:áXøÀ©Ø„›±°3—ŸSIıÒ‘]Bb‡äå|ÅÂ+¸–èMa7€š­é¾àv†İ­}\0šş·oè2ÎûñÍÜçøÒ¹&ç”°Ó–´Å¦­½oü^8Ò¥h6ƒ»}qéÜb^áÖé€Í¢õQï%}@âÌk€üryqd<Îfâ¡„äÿU=·_¼%›^b÷{2úx¼\Z	çj¾\r&*S¦r3‹Cqæt7ÕKt3¿´ĞÕ†º»‘‰’ı¥¹ÑNÕ­1¸ydW5Xú¸¥mæ:£Cg„#ˆ\\wæ´X‹Xˆ!ĞÑjOÀ;é^Qi;v¢yîUH;ë Ì˜&ËâåLRüj.xkíQKN¹Ôs7í°¡Š@DOCÜ€×Æ\"¶ Ê{D#L^¾º%êp‡“üæqSÆ)‡‡Á{»lÆ¹ŸÅí-ƒARYLµ©r`½‰«ëØş‘wg¶áÔG‰~Bı×¬:Ùİ=cÚWµøfxİTP±Kÿ¦à¨2ÜïŸ»aßWéíMT-óçÙ~zväÃ6÷b\Z$Ñ^Ğz}\"§`SÓàïŠ§H…L¾GJPÚ twÍõ¤B{Ã€‰Ï·0ŒjƒcâÎÜl­\rVsñ+v{¼:àD%à˜İîïø¬xó­‹m ´0?,1yÙ6Û÷E—¯€Iaã\"-)c\0\n˜êª\0ÇzÑÎäµ´ÌÙJExp\Z!ë²Úİ‘SoåX—‰A-)³?ÓÒ“Ÿz#èĞïk\0ÇEƒ€NÜÑX!4@fwßÈm¡(·;Ê¼i+-ÄĞøÒò0ƒ`‘A5©åƒuİÑÛê–ÅêôMƒ:|œ˜Ã£ŒÍôË+Y[M]	fáğWêX©Û…v8y’l!lïò0òö¤Ø”n#›‹V\ZsáÂˆ8³<X¾‚“Økekå¸ªŠ,+LŠZlv\0bl7R¤m„|pt§—Ô×ğNÿW/Ã§¨	EÑ!Îãv·Ç…ò¦ŒR<éì/Ã´Ò–@šTá8è»{oQëœè\nøN£¥!M6€Û4ÚÙiú\\¶­$_q¥\"z°UsE‹~~IÈÒÀ­ÿÙ\'uø¦\nSÂªl,²‚Qåò–Ë¯˜¨«ÉZ\Z^;:¬X€<¼÷Ş8²j‘Á‚oß…©ÓÃ3‚Á¾>Ùa&×»äbœ8?]Ñµwá‚mÌÒœ¹é%×AŸİ\Zgc?Ö2ê™cMRıoT^Š,¢æÀ#^$RÛ.Qoòçúì÷Ì’ÄIW¤Øª€\'X\ZšˆÜ±¯M¸µ9*¦V4@ß—¬Ó!’Ä_&7ïÔ*³[\\4Šb¼0Ã9NĞâSÈ?™¤XšàkÇsªÏ^¾|Ş¡àíº!®ØVC\"\"½ûƒ‹ohğçíO<æÏMfÍVÊVPõÕ>ÎÌgUè´¼úyÅ~Çak¹2ÄC†à\n$FÛî¸I†2¿ª9°×òmŒ1õÔ,XÖ…\0º-õÓE9ß‹š&»³í;„k£KYá·ìR\0r 1òÙ1õâ¡W¶/ÑóËPĞRº‹¤Sæ7ßõjNP?^DŠ§Ÿ]]Ö½×A½\Zƒ÷:yª>„}¸Ø¡÷U•?ã­dæº£)¼u,0şªğ“†7=3Ó\0tÇğV554^N¾\\`@R1â)¦Â°æË°XGYú¼³2wÌŠzqó\']ôÅƒº§\\í0è[‚cÅ(Â«n{§Ú3Õw’^ÅA_XÄWJŸyÓSvµI5°\Z?€‡ty§[¢uNk;Oq\"‚£4ÛĞ‘`çKƒWAG-\"#ºñùÆ ló4%¡®Z¢•¥ƒ“ÀñT¹y»Œó%Ò¹is§ò6‰t…h—Á‹·jš{ò¦=.Eœ‘ÔzÂÍ4¨r„ÂÊ!âY _äÍ„ôªı\0†œô-7\n÷àq_”jì ÌaÛ–øó|Á‚²œaYH£Å»Ğdµú¤>µ5Í1gY;ó%CE5Ôòa>$b–´·sTLJo×ƒŞå²¿¿s<úNÊñ–“÷ß¼æzI¬¨|(˜0ÙÕù¹p kK5N;€¤–AK#xÁëÛ‡\'³î)ÎìŒ\"Åâ“û\"~`”ì<·&-½½}îƒQŸœ<ldálûJÁéìØ.ÆDÄ³¾¶İŒuìHÉƒãå‚\':³ğå\"»àÇ³¹ÌMÆq‰ÆÑîÆB¦OPêöÂO>ät…0súW˜WÙhúÜm@\\ïş¨¬kÁAzà=ÇB E¨7UÇšª%°Àõe~©”´¬]³”ŠÅ¡\ZĞnâì¹®ïª¬šü§l=(ÊèuşÓeó!ƒ†¼×txÌîg@®ìeW‹t\0@uØÒ”o˜1âÌ§6‡r|feâ-ŞN¹·\01Ï³©*¿>”ÿBÓ%Î@–×\'Æ÷fÛ9ét2O¿¸}™MÇ ßšœ‡6Zf…¶¶}¡»¯¶Rôcò!“<qxñ×uh)“@ÊÕlß“’kµ¸R×Ä8=‘$/YZ) \rˆ5z¢¹´\Zê<lÛKËÖšVØ¥\\NÃİÎ/ug\Z¾<ZùBÂ\\û\Z@”¦ïH‡¸Ô1*<©¦3¹­‹–`¦ö!‘Ğ:\0Ç­† É£Ô™„w™<K¨ö,³Ãß…K×äQò‘f#}ì™OßËª¨1`2Ë )H)È—}k]N¦“àãŸöÕû„B˜EE¢äã6in¿Qiñû-IS^a¼ì`’\Zguô\'@,ç¦n¬n ‹L‡¬íqQë8Zë½×g¨Ô¨«æÛv]¹Ÿõ=J|ï;yät©³ÜŞxÊ›Ø ÈÈøhÖ@\\U†ñø¦w&“\"D E\rë*¶­ë\\—ÎY£9K—²³Ô-GOF( «#‡>\nïópef—¦˜Ç”¼LãÙºííX¦@8r°ÖÇòå±²àHézšÆ>¿«ÑßëœÄQ^\nH.ˆ´s¼hNouã¢¦«+e„ì³cÖ§kŸåšöíûSõœùŸ­¼Á,	e)n4n\r#ù_™AƒrŸÉt¨eÒÿN¡¥ƒF®ÿ‘Ü2@\n=¯¿)ü‡ülıÙØœÛ.x½¸ÏbÂƒß÷•æ†Êg\0`ÛÕ^õÜE\\·‘Ñ8	\0\\3—jè*Y¶ôx˜1­H=8<åº·¤-y·}lÈÔ!ı…és!mˆÆuŞ½îúÇ2¿6Ê¿®­C½\ZÁ1!kÓ>,¾=Ç2G ŞC]šÁÒéŠÁ:çC“Æ:ç…[”[×™ˆùêE«V.€˜½ˆF´(!ÿ*ßøˆYÄ§İŞ…‚³‰émóŞËÕ’-ÑWÀËÑª,†¼;\Z«6õe,yÛU\00½HÄZú#oRè‘±Šœá|n~I«\nº\0±	˜ò€íù:æêÔ“ˆ˜”Z•[¼šz™È´P¥tmç@ğ¶a|´€ûâ@×©2ìH?8IBê‡«\0øWØ@¬»¿ö§—ŠUÄOnP(TE-44ô?éÑœ','2021-12-01 12:06:20'),(13396,3045,'audit/profiling','xœíZwPSÙ¿&#5@*„P$4	½·½”A#)@@:HW@)\"%•ª\"EºXh\nH\n‚(]é>Ğİ·»OÖ™÷{ÿ¼?ÈÌÍ½sÎ·|Î9ßrç3A`BhŒ™@¦úI©1p4Z\rŠT§a)?\"™ ¥î*ÁĞH5$SEÂQ(„êæ<zKFÃ#Ğ¤Ôñ›VBˆØŸĞM\n#emhn2°51éš›ØššYƒ¬ÌMAnx¢Ÿ«Şï¶å¶y¡¡[î7õà0ŒT‘xt©d2âÁøø~àClÂ© Ğ(\rUR…ÁáHÄæ8rÓ3FÄ ¶ÌÀa[êa[ÿsHj*ÿ$„\nLmHp$\nŞ‚„ü;$UÕÍı·Ö7Ñ×µù\r´ùsór÷wSrÓ57³¶±ÂâÌl\\Í°¦ún ¬5ÈÍJ¡ùùâ‰?W\nLpƒüSck5ÿ&ù“)ÛHZéè[é›éêë¹Ú`uLôÿ¦ãKğ$ø(îW?üQá×Ú?¹ü›úß½ÿöc‡‰Oª/ïG¤R\\iîÇ	dü_ælpX×¿mı‡=w·ßŒÌqfÿ¢k¬ïø\'[kì‘?@lÁ™›}Ç,ûıû}ÕÅÚ`MÌ¸4¿;Ú~ÎÜê¿-ÈşÂÎ\Zd¶RX3½_ûCJî»I¹-á9rk]C}Sì¶ÈşœúwåÇ±ê÷‰ßì\r7÷ûßíj‚¶Rà(F•û±œ~DÊvR¿ıµè¿‡“&Hæ¯”’ùÙÔvRÿÇZ€@Ã·M¼Íšö½ vo\'ñvï‰÷v<¤\n|»¼SC¨|oxªÿèÁjj›]gf­oeÚÜ\0ó´ŞÍÃ&Pü|ƒ\\‰n›_7aëîîKÀû¾}“ÙaMlõ­A²(ùc-Ê¾„MŒ4?™Í8S„Á¡0ª`àĞ­áÀÜ;cZ¡¯ÖL“ÅÇtè@Îï©]÷@–‰¬»<¨V7\n méå ST\0Xd\"NC*2‹ä÷#ëY7›¦ó…ú^İx=N×ê(o4R<C£ı±ë}ã—’s„ª[A¬áíşC%—WßÓ¿Më\0)ô¡…ÊX‚©­8àô9/¥£ÃëqÜè÷j‘àÑ?cÌøä{\'(è’((ìÉ—5ÖÜl—›ÈÎBlËõÕêÖ_B‹&ò†2VV?;¬ùâsö¢0ŸcDƒŞœ¸öD›‚äˆË^œ}Ìl­Ñ\Z–ğ¨,o­!F-Urv´±š<]X/ÿTÜÀs\"T÷o7X±c~\"–•¦wO ÓÕŠóu.;÷1°¼ÎpÚ¥¯|ïù|mQènLû®é½¸°óõ~É!\0PÁ	HE|h=î\0ˆò£ub0ùı#÷NV,Bô¼Ím3“ˆ	ÉN”¡á—å/cW2>îVr	Âßõ¿d™AÀ¶¦øV^‹\rs 2ÇÌrÚø…{½–ãîê”$“:9÷˜kùÅY²yôjGH¹,\0ôkùÕ•ï{{ñŒ#Uó™sÇæCÚªÜ¼”öş×_ -\Zu6é£N**„Á™Á ÓJ‰Ã$<Ëß£KõL;‘Õ\0Oy\'ÙŒóûÓ®?ôÇËgHªô|;*I/âXNNßX¾ğåÁ>ûe§	=µÁ’WNhGtyÊ0f‹ë|V,á‰­Õ½\0`¾ËÎ¥UóÎ^×LB§×+ŞÃ„YvÓÈÉÛ6¶Ïüğ @†âå(ıÄÓI¥³Èæ=«¨@ŞCK7î°1fÕaÕ¸ÈOÈ \\­©(/VX\n}v¬œÈİ×a\ny$z?ùt°vB”9¾N/\ZGRSgÒ\\Vc$®¦3¬™¡<9tCœ„}L”¿„}ªÄ9å°³N‰Yvb÷wÆóßŠ¨Ob:ßlI@¹iÈĞ¥Ëäkc+cccœ­#ÚNZÅ£u§–ã2ö¾a\0S—£(­)ÑQ.pì…’Š7{dU¢”:ÓŒÖÖÕ¨h\0h@ö~ß¬0 c¼”¬\0w«)ƒ„áwÏçû\Zä´{;Ï(qWk”ã4ç	ÀWÙm‹Š>~wïÀË‘Ôè>®7ÅO_?İÉĞÀ»Â‡5š>T úU,\râÁıÍzóIdÍ~nKå\\Ù¯EfÊwòsjJœL]ßçÇÊAı=‰gr2ís?t«ØQúlëÍk,›vÒ?°ç]P8ŒG\r¤¬ïe>©[\nÙwK¿:¶ûÔTZıÃ>Ÿë´†^¾iI¦Q=ï;QüËèÃªVƒo\rç­ØBİ3…kpCÊ¿E	Í¶†)š\n§®3ÛÄÙG^Ïè#zöŠÆdŞ-÷b®…éXK°Ìåô \0)°ÒİCNùwMØó[é\"|*\Zgv­’[dÏå¢È/Ú’ÏõmóÛ\0Ô|Nï©€c_0üfå+\0Ğšğ¿ú`aC}ÜOxl¿ì:ï·Ö9%ç³+MIKÜ::ë&Å£\\Æáˆ×n±O˜ÌÉ_z…¥np[6Şï<c\0Èy	ø>›ìŒ·º\'#ùUÏãè/Ş”m\'%G[àíš‚‰dŒÃ xÅ£ë/Å€)0Ã=ªNi(Ñ‚åŠF‘^Æ·–ªÍPw76Uqf=3ö¦Umi\0aÕv,¿ÏÊ.c]-/ÂH‘%.¹ğYJGLDNÄ’Y˜•û­,/h{tœZq‚·Êä]t±æÃ¥\0e…v$éô,¼4w¿!»TîÉQğçedˆ¾¦´¡­e\\@QöˆAš>{qUÒñŸï«ué‡ï¯­r›Ğ¿J›8Xƒä29*SÒ•ÀúCæ!ığõ]ï,#÷{üt_µnås÷ŒmÕşàè(ˆlg€\nå¸º5\'•¾nú‚C×u//ŠZ‰¿àò£cıŸ–&S!‰b6óCÙy‹Z†¯|f<%Êr=’ƒR{åÛ+.%å;}½ŠgWïvàn¬±;=c?±&t¿AQNYÍşN_»Ú3gßşÎ{E¦ÏšF»¾é	çqÀN1“Ò‡\0 £ªpª–l=;—š2z…N%gS¿Ùÿôık¥½Ó” †äÖ¼SYŸû˜igya&X\'p+\0§IÃ€Vâî¸8À—Ç}Ş@SmvRxÕT\\\nHáHÅ¥á†3ºÁ½êr\rªózo®iXFZj°Öõê\nóá?ö½a¯gŞ˜É\\ªk›H0@¼Ğ 8²É]Ëÿ\\³Â\'˜dán}—ƒW†ğ$Å%·ÛîŸ´ÎÓCŠçG^&šçˆÆ	çåŞ§¥í†“˜†\rKZ.¶\0RÜ—“åíPl¼ò¶§Um×ˆVÿÏ\"Ş3\nbBî\0œ-í¯\rÈİù9JIÔc¿Óëvdê0šw£ëæ­qví’3àµVFLÅ\0³ŒÙ=pÉ²ŠrÙù²ÆÆRÅymÖñ©V†G»Ñ@,¢9fã0eìèsO¹ÎM¼à`ÌÕÔ<¾¢»—\0øöMÅ?EÔD\0N{µ©ÈÀ`±×ïÂ5‚YéÁ`ï¬…²pÓKmJ±Î|_Îë9¸òÃF™.¬²ó ¯ùGkGã>W²ë›öLSü/_?UÀÈFDí\rdRšÎ0®ˆĞ½×»fÊåË’íĞà!®š:6Š@ÜKSCŞ²÷3Z\0`àã«Û\"‘$R\0ö­_©Tå±<eÍúo¬-Ë=˜„*Nğ±<Ôå €˜>é˜Oör[F5‡WP)¯îàÂËš\"9ëCDèÉ}{³T²`j>:û8ùã­ó§ƒg¿Î8¬yíÎ]ñ\"¾!}y•İ®=~˜­íW>>>ı9Àrh	¬èÊ\0=¤¶FˆÙ¤’Ï)­ÓÕÑæ^òş¹7S™––ì\'’ßx@¦ÿ«SÊ;ä½ãY>ÏoÏƒ¦²ùiĞU‹ªˆÅÂ›ãõg{4öP£%YGg§õnµ0.Ä’|Ş<TÂÓWèØNBø¿QS>ë¥bî¶¢%¾´\'ğôñ‡5¯:>Œ\0Ğ£«·a§•”KE{dQ‘ğeFßúÀºªò\']ìUbg4\në¿èáN-lôT=âo†C_“ÊŞ ø«–Wn{¦ø³¢\rÄ%|ä8=gëÔo“zH6¯4«78İÃ:.ïùÁÑZM¸(°Ë™Ş İ–QQ{]~ŠyåPò–ë’°¬pªòÁIàÓ¥qGûô“EòôÔÖ±C9‹÷%Ú\0™|œkï©«•.Îõ9#g\"Èj?àèEï¢íå•ğÌS.ğâÀ¯ü†ô)µ8 í!è¨<)WÛ@9iº}v\r§O\n‹)ò…gbŒ\'oBÏªW\'uiÎÍé.¸(Ú[L¡Ô±Ó›ùœ—ˆŸÒYÎF›_«½£s~¼±/æFò¾†ƒw^½äF©½ş:6P,3`¸­õk~OÛ’Z¼N\0U=™‹@\nç—7ßÌÚßóe¥ \n®Kø±ŠãZÌ´îùæ±OÆ]JÊğş‰ığåóy‡³âÚØ‘»Zš6lõÒW4ıEw÷•ŠíoÍ$•J¬‚xÒ9-ëLâCqî&Ìb5Ä?$Ênáäó/7´(·Õò¾ÙØƒ•nÿ¬ªgÉK½ë5ÆE éØWx^5§Šò)°è¥i¹äÔÌU´yrÙäó•\nĞjjôÄşıd¯òÌŠÜGÜXÚ›K\"‡#KÆCz„.ê\nšßI‡œ_Ëº-™×\0·Ã§Şû„› |ir,%e\\O¼*Ôªô\Z äxÖ•çV‡‰„Öáäz¹pm´™7‘E7ãğÓkç¸u­\0ß«ÃãĞZ«Ì°üÆ¦o,wÔg\n~®@Ş¾TO\"‰HùušÊ SéÚbÍƒkrJ–ç«êØG†’”e‹¯‹ê\0Rµ8~íš*6»æâ’¹ºnr1¿sŸg»Ë3½5ßîÏ|cİo¡s È3O¶¤A\\«Øao3NX\0N6Sp3‡^ËÀ(è\']Çû€ÓÓôF#ĞğnFBÂ»Á)ls¦ùf»pmŞí»ë®yOÆ£Šhu6|F	òRrâYšWRèÀçnxEF|Fõ¿`‘æÑ1Ï)\0EöA“¼€ßyé;\rIï\'‡“IŠ½Iê|·c¾\0RÙWôâôbxT\Zdn‰\'\n2o½<’À`D_°X¶o£5ğ(ò¹ãì‘İ¦Áumá|h¦œ§à­UqC÷‘HuïB‡“\"% 5óh»Æù\0ş3\'lp|EûŠy¸ª¦£÷HŸEÂp·£ØŸ>`Òo².ÈŸ‘¾\\œl[ô,U véš—S	Œ¼kc®)ëÛU±ş<³ùTÍRiU; ²»Ó%=ˆ·´1šhèã}ZŸÖè\n&F<ĞPdJÈYÇlW>¦›uQºzSô]DÏ¼ÂOÈD-Ô.õaîûŸÿ€Ñ+´¨g°şNc¦R‚ú/½=ÛĞC\r;i°(şVy´úX\\ö5WˆUÚ{2áîïë*cÏ{Jk?\0À²›ƒÚ‰š´²P-»I\0¸%fôNU°<R±jèğ0ç˜‘»»ù>DwoHòjú\\+ø2L|Jiz+yz·Ëê%··˜ÜÊhÿR$®²\nû¢ŸÈ©Lı4ùú„@È€z=oÛĞ\n–O3DjK\Zh? Ö Ú8ÏAÉÕ(˜µu¤$4c$ÉÉ¤¹&»Ì#¿¬.tNäKLh\Z÷š¾-Ûs!À<£Æe$´¢9k[íYÂU›—³\\\0#“L@ª¡;ê\n‡â‹>ê—4Ó x€BHÀ—,Wq¦kŞN9ˆŒM°5Åª—=ícœ£p¬”«\\\\Ù»ft:FÔı9rCÏùzø®n‘ªŒÜÏ$âg.€Hp÷÷#lË PPô6t\0üAÃ¡wè€:`‡Ø¡vè€:`‡Ø¡vè€:`‡Ø¡vè€:`‡øJüõiÀÿPQƒmû…R\n…ª‡……ıZÎª@','2021-12-01 12:06:20'),(13397,3046,'audit/request','xœ½VK£F>ï¿°|J´Á¼ØŒö€¡±ÑbC\0Ïl¢‘P\ZZ!€=³íOuó°gfWŠrÈ¥qw=ú«ª¯ºŒuqª¿Ôº¦³®H=¾Áº ¿|¯uQĞÇuƒ›Sm)ßäºpSSıqEş:‘ºYœ’êÚB¡²º,5y\'¤²âÔ€#P”à¾ü¹9U„?8¥gª>ÆI“GºQ@û[ß\'àª8úmªâp\0÷vkhGºŞ\Zºàé—_{ÿí™+üÈPÈúKÁ»Ës]¼iãò²@{ˆ¡ §œÊpÊqGüqá„|Âeyß@ğõ}çœÓĞÅ!-‹\"ıv	Â\nQp‹†aN“MSHÏÓñbw»4ŠYšfp@r„BRó$/ÜÓW,.¨“¿òc´1.Š¿Xh±]2>èäÁv³ö,DwpOY,»µÜÂÅ±c±õ±,ÓpñÊ£±F}òdY$œ&Ú.‘¯Í!Ğñ6]½´‰<‘Ù½4$Ã7ÌŠMoc[NĞ{âI“ğR÷@¤kOÎÆ‰{5\0ÀŸê\nª‘à3(ÊÙÒ_ÆŸÑ!Û‚­¹0lun‹šl62¦EÖì©&XªjÎ•¹,Š³…i.Ô‘-Ï$EšIªaZsEC°,ynK¶6WÔ…©X†\0ÖÖ5(×²]cöØ¹»Ãoœ\'¸2g´•AëÎê2A•=ú¡šZ:a.S—~ZÑ€ìóº©ğ¡s¶òÚÜíùª(šqÇG\n*\\’¢²”ƒ¦@vYª*jš	™¼	–µ,“f3-›eR*bMLRQ² Í%eª%!Ï‰2Ë²TÜ]…ëü‰bù,\\¶ß©) Ñ²Ñ‡iùuÏ¥ä?³ü@à³ÿø‘®Ië!ß%ô¥RªNMó=l*\"%]\\\nÖ]\\‡üxzî8j-bÊ8†’šÏ\\åEœî:FÖ€åQ¸MSÖ:Ï?==M€“#iø”¦0ßhŸ×”2\\KÈ	¸š<ÿÍ8>í\Zæ…QÓYnA[eI¥İı”7.ŸkiÄqàï„Köy‡<\\¹·n×ebïÕôÖ¾G›Ép]ï.·>\nhs]ëõ4VÍ Z.ƒW5ùÊAk6$iŠŠƒ0Šã~Äee°•Œ8°X±@‘í@¯‡Ş60=c[Ï¶CÅ\'\n?©ÓKZ‡&®Óú¦EÑæöÖÚ¯[”\'ÇóÓw›ÕÏ7¢UënÖ2^§~Ó¢âwùQgtå\'Œã5©^‰.=]¿ÙÛ‹€ıh·°ôØ.Å[l×\ZøJ)ÜA¦L¼$À7Â°?4R×İFh”Rş¥&¸NúÇÖ÷ÿÒş¸ãâ„‡±Ø=ìq@®ıVDã\rÍÀñ£¯ÄÊ ¦÷ıL…–>†ÄoB×ˆõNÂµ<s»F›(<53¬ôû…Q9kÛ®g€Bª‹ª<“UŞë‰¬)‚\"uÉ¼ÖfóxĞkK‰«ı™Ği?Ä/Pºáıƒ¡.ıp¨Ëÿ~¨·\'ÔjJ÷òE—ÙN„=cWÃŞô¼Ïzõ·‡f9¼œht^„ímÏ¾ÿç×™','2021-12-01 12:07:53'),(13398,3046,'audit/db','xœíY[oâF}Ï¯°xHÙtnÏñà%NBì\n›®*­d;àìZñÖ)Q”ÿŞñ˜4¦LPbkÙJ%RÄs9ßå|7\"š+“™4^­¢¯ñªÓLŒÌÇÄ$â-ß€şÊÄÔìx×îgír6kCw<›8v9u\'Z­IÄË\";ıÄ„â—ñ‚ÄFÍÎC’|YÜ|fi\Z-¦ù×:ÎÊ•¸¿0!ÅS@pN õ««ùø”˜zyN	Õi_~l‰Óf˜t]…ÉĞ—˜Œ:&Ãºôì±=ôO4ñş9_‡çáĞu<j?p¬‰j–§…ól¹*ò(YÁ2Jãğl{G)ÎÖê»uºT¬œÚ—öÔv†öEà[ÇvmOßÆy¼œÇ‹ ˆnîâı»w®¬m¯ß~R©8YŞfy\ZI¶Vóoq\Z½ç¬qğ\"´·9oüêœWö~²ÿxÆ0ó¬«\rˆ¦æ:sO¾ªõ:´|kì^…Ú@^¤~æNÿ9¡·çˆ‘§9¥OYÎÅÃ6«Nå‘§åâWLî\r¯í‰¥DöüèõÍ•9[åƒ“Ï×Bß¯Ÿ;Ğ‘0}´Š{§•8Õ•§¨V¼]w§Ö­qª»{–rYËp ƒ)¨Ç ’zìH½#õÔÛK½†YOÇ„¨¨‡)c%õ ¨sBÁ½‘ãÙS_:p·°0x­áş¥c‹;WEÆÅ·lQşgÇQ/ÂSíwk<³=­×½Mî‹uÿr—E‹î™ÖGåü\0Ñ\05ˆL`˜:èî†¼+g|Ï\0•¤pƒïHŠ\0¤› áLÒ‹¾KR!¡RRN”×%EeyeûÚ¥;µGWN cÄµ=üä	W­ÔÎ~´ÛBäy?˜Fš)Á(ÁH”`è[Ï\"ùñ×<^emŠa	Š`ªE\r\\9¦ÑTƒ¸P‚âª@a\0ª\nòcN>æäÿCN®‘j_N®/k8æª(…1ç¨äGî¹wäŞ^î5Ë{`¦Ì{:E²B@h«\\ÑÍÎ… o¿©,x_µÂy%°*#ün,M+\'Ub!ˆÈ2mì2;ÖØ·§š´Ô6Íšùn0r†S{\"x;€­PlŒFÛƒk¨9Î)»sÅ#²ÃBìP%°ØPa¡¨êö?”Gqn ec€)Å2ËaøÓ<J€#@Ñ,\"l°ªYÄè\'y>ÂŠ«À±\rñÛ[ªvš’`˜RQ¢ï«°èïÇÒX1â»Ã†ƒ*`ã@¯ƒÕšá¤â=fj|%ÕìC`a×ÈVEIñ¿F[îÜ9åXféM×†ğLëN²Åú.k9­)‹V]…˜ˆì\'	HàBÜPÅp«b+AH&­lMQ#ÄH ş¸¾+Ú«X\0f*²b0IB~Ş†\nF\0rC1ÖBDG¡=XØC\0¬ŠÁ‚Û0o5mã\0ƒ ªÄšÙĞ{+­3nvf¿]X\"­o5K„ábË&)ˆÊ\nê:ÁƒP]–Ó8Íò‡ îÅÓr°g mÓ\rû0 ´µb1†ªZ0X_—¥¡]°\rÅWÊ¥,29>=ı\r)•@˜','2021-12-01 12:07:53'),(13399,3046,'audit/log','xœí—[o›H€ßó+F~±#µÙ¹\03LäâÄ­\r•Á[­T	ˆ™$h\r´€W‰¢ü÷=`·Á5±²k)û°µåÌ9ó3çæHùXJ!{©*ËèV•½ÓH.‰á›±şRJfÈwå~FóÉÜÉ|êxèbæNQ­â¤\nTVaï4‘^\Z¼(ÈQ\"{Iò%¾ş2ÊÓ4Êb)¿­TñP/d§±$ÌÀ\ZÇ\'\Z¡šÖÈFËÇ§Dêµ6&\\ª·ˆ]öÜ¯*K²[t~†y–©E•ä™DéCùm)ïò²\Z&Ù_\0IÄ×§ñu¥ªuq—µp(”9ìó°è\"æšiÔÄF›˜sğ³gOì‘„àş¹X…\'áÈu<f?p¬©\"ËC!˜SVE”dUP#‡ï¶%j÷o­^®Ò¬cåÌ¾°g¶3²Ïß:›Ø-™Bİ¨BeUt½Tû¥w¶l‰·w?Z‡D’İäE\ZÕŞÊÅJ£guşØšÏF{}‹ğèƒ;v^ıhÿñaîY—ˆ\Z¹NÃ<hŞ»ı:²|kâ^†hØlÔ}ÏıĞ0Ø£bì!§ÎË9ß£l³ê¸Qy\\/~áÈ½Ñ•=µ:É¾ßzYx}¢Í£ÏWàï—õQÁÑG¥\Z¯ÍYo°”®UGÏF·Ãiˆú­\ZĞßÕÕ¹ì°R¡cN:2“Š:óÌvæ™7v<{æ#ğ€»]³à¸‹|UAğ×a\r[–Uªê.ë+‹BE•ŠÃcô»5™Û\Zôo’ûjU¨ß–y÷ß¡şh2®?(¦ä=¡ï1A„JÌ¥ûÇ{+ÌÆJu¯°—›œîØI1XÊ›\nChÛPZ—iÛGîÌ_:A“6Wöè£ŞÇ‡°Ğ!xî²PÊL±®Ïúk[F•|Íu[¨2? eÔLB¡‹Iç›!~•à_%øÿP‚[9µ¯·—–z&ã¬#õÔæ&õèÖ¼Fa^;‡Ìóí×Ô€V™L¬‰İÉP¨¸AÑÚ(\Z•=kâÛ3ÔøfYsß\rÆÎhfO!S†äP6BÌ.4MÃM£¢ü¼dšïFÑtøÉğå%ÓäÌì<ACàæ{uŸ;ˆ…`ÓİÍù:°™ñ6=·fáŒwõ7&Àm\rËÖ c°Ÿæœ­3„I3Òdyz]¨ÖDC`z™æñj™6°ÔÀ‚£X#›¿DÚÖÀbĞLølµ¬æ*ÑÍË6:5ı­æGÕ ‹E¬[Û\Zf„){óOçÔŠíy¶ãUÑ4ğpEˆè:†XÒ]×…©Jóâ!H£{¸k˜¢(Út*pøaÍ8ÔÆpWÜj\\PöşºËÙÖ','2021-12-01 12:07:53'),(13400,3046,'audit/profiling','xœí™íOã6À¿óWXıR8æ·8vP?„ w¥Ú²Ó¤“’ĞˆF’»4@ˆÿ}¶SFºš\ZÁMZ‘ %±ßóêÇOB‡83‡9­4Nóâ¾u˜8˜qÎm|8s¨Ó*“4nF>LfsŠÄĞBò6W³f³ğ:µC‡PçAÎ–ß˜úåf9­á÷8K²kp|¦y–ÅÓ2É3¤÷³·ÎM>+;Iögœ•a‘ä~ty]fa\Z×.*&$9TprULœÖ}’|‹.¿uŸWtrù 5–H\\Ä\'RP„)åò:•dĞyxLK­h![Iù¨&¼²`\"Sˆ-2#ŒQ…LëÈDšo|6ü\nN.ú}Ğö/Îcp2\Zƒ œGIéK¬â>XU$ªQ¥i˜EócWn``\"ØÄD™Åõ¿\r˜5õ6&Ë21ÙšÉ®3Ù¶ôØ±×÷º“ ‚?¦óà èãÉÈí\r&şÀ=÷àA í>+‹0ÉJ_Ù6Ø_¡ÄY\Z};O3ÃÈ‘wâ¼A×;ö\'îQß«Í)â«¸ˆ³iùexy¯Ÿ½òÈÚôúÓw*\'ÙU^¤¡ò26½‰Óğy¹IÏíûÏBëMƒÏÃŞà…¹_¼ßŸ.ÆîéBa‚á@3ïê¿f½vİ‰Û £d¾7ı½Âîš%zc0P>å×,¶µ§—ÜSƒ_0ù¸{æ»F²§[/O®Ìa˜ªoì|=“ú~yİˆBiúpïîUâT¨<Å4jçYèº;u@»SíÕµŒÃ\Z¦Ú¦¬ÊE:ôø6ô¶¡·\r½µ¡·á®gJM¡Gdå¦BÁzì!$c¯7{£	:.oÀÒàE>/¥û+Ç–Ïœ•~\Z—7y¤®L‹8,ã(Ø¿¹ıovÛWÉ]9/â_nó0jïƒv·ßSbô	áO„h;lï­/İrÆwñT˜$%PØbER[$„şc’š+¾•TÊcd”T0¨%]ªR±*¯¼	8¼ŞéÀ×9âÌë~KWƒÔ8W\'€UŒé};ÌFšQ06F\n†½¶ğ,“ï¹_ñ,oRk(J˜	ŠÙ¤rL»	ÔyAA	ÄLPÂªBGb»\'o÷äÿÃ\\ªu{r}XÃ„ ˆ0e)B„ĞM·±·½mì­½Íö=	7î{ÃºBÀKMIl9­czïUeÁÛªéy€W{0&ofÙ´r2#ÅT—qx©eG±Órûo´¥–Y€{1ú½AwäË¸í ÆŠBšFFcÍá6ÔœŒÁÕ¾¢‚ãTŸ°0ÿ(RMwb›X®N{X|”G	acãÁ€0FªV:úi%á(41±yuX$ø\'y9€ÒŠŒ˜àø\"ÉëTÍ4¥a¸QQòÜW±XogÙX16«Í	#`•ˆıA_\rCÌš´Š{Â?èà«aL½ÉÂ«X£K%#ÿh},¹ónè.G–§—E\\kr }Ğ>Ï£ùmŞ°[£€åQİDLåî§¢w\"ŞPÅˆ\nK˜r+ÅêH ËïñFÄXÍoËæ*–ÀÜ,”Ú¼z/Hß‡wCcˆ„mhkajá* (û°´‡!†Ä”ƒel/`^Ÿjšæ=	ƒ‘©ÄšY„÷Ò¶Î…ÓºøõØ•ÛúrSSÑ¼Ğ‡¤ #++dYP&Ê,KZ2¨^ìûix\'ïV¯öÁâ4 íß!²ÆŠ%™j9ÊQøüpY6´±mx¥¬dÑ›ããã_GËÀ¤','2021-12-01 12:07:53'),(13401,3047,'audit/request','xœ½VK£F>ï¿°|J´Á¼ØŒö€¡±ÑbC\0Ïl¢‘P\ZZa{f3ÚÿêæaÏLVŠrÈ¥qw=ºê«¯ºŒuqª¿Ôº¦³®H=¾Áº ¿ü¨uQĞÇuƒ›Sm)ßäºpSSıqE¾Hİ¬NIum¡PY]Çš¼RYqjÀ(Jp_şÜœ*Â\nœÒ3Uã¤É‹#İ( ı=ÏïpUı6Uq8€Ç{»54‡#]o\r]ğôË¯½ÿöÌÇ~dQÈúK—Á»Ës]„ó™>ö«\"=%MA$8’;âGH\n\'ä.Ëû2¯ï;à™æ-˜,Šôû%gÈ)DÁ-\nX\0sŠ4Å9¦ãÅîvi4`	.§Î“âĞ#G¸!$Õ9OòÂ=íqÅ’‚\"ù+?Fcá¢ø‹…Û%èc~Al7kÏBt÷”S[Ë-\\;»PËò¸Ízå…ÑÆX£9Y–	§‰¶KäksÈ#t¼MW,m\"Odv/MÉğ\rs…bÓÛØ–ôxÒ$<èˆtíÉÙ8q¯ğ§º‚R$øÀÊ‡²‹lé/ãÏèmÁÖ\\¶:·EM6Ó…\"köT,U5çÊ\\ÅÙÂ4êÈ–g’\"Í$Õ0­¹¢!Ø–<·%[›+êÂT,C\0kë:(×²]cö±sw‡ß8OqeÎ8+ƒÖÕ!I•}ôC5´tÂ(0\\¦.ı´¢ÙçuSáCçlåµØçùª(\ZæXhƒ\nW†¤¨rĞÈ.KUEM3!“w\"Á²–eÒl¦e³LJE¬‰I*ªB¶¤¹¤LµD DÀó9QfY–Š»«t?Ql!Ÿ¥«ÑŞ;5tY6úğ!-¿î¹”œág–|ö?Ò5I`=ä»¤“>â¯TJÕ©i¾‡ME¤¤Ë+BÁºËëOÏG­ELÇbPóãĞÁU^Äé®Sad\r\n„ûĞ4e­óüÓÓÓÈ19’†O)„ùîD›¼¦”áZBNÀÕäù/Æñi×0_ (ŒšÎr ØÚ*K*íî§¼yàpù\\K#¯xw \\²Ï»ÈÃ•{ëv]&ö^Moí{´™×õîâpë£€6×µ^_As`Õ²å2xR“¯´fCà¥©8H£8îG\\Væ	[Éˆó +v!Pd;Ğë¡·\rLDÏØÖ³íEñÂ‰ÂOêôëĞÄÂ5¬oZmno @xİ¢<9Ï˜>Ú¬~¾­Zw³–ñ:]xğ›¿Ë:£+?a¯IõJtééúÍ~Ø^ìG»…¥íR¼ÅÖq­¯”Â]È”‰\0|#»à‡FêºÛÍRÊ¢Ô×Iÿ8°ÂúşÿQZˆ?î¸8áa&vO#{k¿Ñ|C3püh Ã+±2ˆé}?S¡¥øMè\Z²Ş©@º–gn×hÅç±f†‚õOb€~ß¢0Š#gbÛõPHuQ•g²*(¢:‘á+«˜×Úlzm)qµ?Ó:í\'ø%”vrÿÓD—ŞOtùßOôöÖ„ZMéò]¢è2Øiw°7ìjÒ›÷ÙA¯şğPˆÃË‰F‡EØÎĞöìÇßÒÂÕæ','2021-12-01 12:08:39'),(13402,3047,'audit/db','xœíZëNÛHşÏSXü	H”ûÅˆÙ`JÚ¬’°ÕJ•“¸Ô»‰İuTZõ©ööÅöŒÇ@B¶8š*(dr™óÍùÎ9sâĞÇş×‰¯üíq4™„Ñdû ô™ğ¿Æ>ƒWùt0ñ©ğ·;\'­wŞñY£áÕZ³ÓfÇ;n·N½~8ÆÓ^”L³«şöAìcøW$Øß¾Šã÷Ãó÷µt<“¡ïÿ=‹²+Ó“},¨¢q,ö©$Œ±{iäıûÜÌÇ\\äoWÀ¤E9L\Za&É‘Î1ÉyLR— Ôº[üõÿ\ZÌúûıZ«Ùé¶«õf·×¬}¯Úñúƒ4™L³0N¦½$Gı½Åf9½G³qâèÙƒvĞ¬G½nõ×F07&‹>DY”¢ao\Z¢‡G/]rnøüÕ·,Åqò!ÍÆá4N“Şdğ1\Z‡·ÓuëÕFïvÑb¾AëM«Ş¼gìÛàkgêë„éµš9æüÙÍk­Ú­6Z¯ûŞa~!÷w­öÍ;LQïxMcSÕæÑ“½vó)wMç{¶¼S;	N«Nd×_İ?Øn‡chşÅÖ»àûşy½a[N¢]»{k)®^[·‹7§C¯2§©Êò\\În+ºÊˆCy\n3œ+Om”·QŞFy*¯dĞ£B¹”+£<Œæ¥‡1H¯Şìí®´Ã/ìw–Î¦`ıÆ®á’“ioM?¦CóÉ ‹Âi4ìïz¿WgAÇÛ©|ˆ?OgYôË(\r‡•=¯RkÔMCÁ¯0y…°‡‰ÄÿÊî²ƒ¡ËËŒ>G\0àZ¨ÒDĞ¥•„Eác0şÁVz»¡X©ÜÇ\ZÉåÔÊ,T”/”Î/”˜Ü*èzÇ­vPİìåâ$¨½í€¡¡•XWûZHáÀBÓÔ’Î¥/‹Bš»ÀpJ,1b!é¤÷\'Ÿ²t8LÓU²àY{\0HHLr@²4 ŞÀ\0ÒZ	\"Ê²î@/Fb²‰Ä›HüSFâkE=†oú¬æ$r¥¿ :Á3ª#h£ºê6ª»GuåbÄBi‡êB¶±y>7ÑèºÁÿç\0ËK$VØ•—@›—ú8 e$Iwú!%?´X•ÓşvµÑ\rÚ^¾As@¼êY·Õ«7kíà„zˆW¦ˆp×VQÈV,0±\"°R”é}Ä9A®„‰!bÏOD=ƒå@(u‘ÄÑÏ`D9-\\FÄ0 1@(~	#2È’.10$‹Œ¼Œa¢´vn)ªáôûI«Ò„‰†³¯ÅÖQşx0¥™Ñ&raVùT>ÓaÖ‚qoUVìT=ÓiÀPSN1buÆ+7‚İ©gÜšóN?ÎëI:>ÏòšÆ Æ©y5Kâa8ì]†£4›{?†ĞÚaã0/á4ºH³Ø¼½­~à=¯RDñ4ò†‘wgá$™òG-Şç{…«Õy/Kç&I­-/x­y)k/B+ìLw”@¹¬ıQx!ğ‚¡Õíyì‰ìE\"LuAÂÑ5/l­y)i/‘’.^ \näÎ-ä\\˜ëã…\Z\n²,ıâÂd”Š¥B=©\0%X»\"#‡¼9ÓL®+%%­„jê<CqŠlJÅôÂs3B¡åF7$¬l$TCêïÊ2¹ÉŸò;ĞºRRÒH í&ÔMI‘7q²H	1JxNÉeôg8)Ø`ĞÒ‚\rÀBÌ)„9E#@”9té(kÀ‡Z¾í†A¨´·ñE:îş0÷|tÃÁ—Ù Ì¬bÂ‚~ãVÙSˆÀN>èõ­QbMù(i!b	q+î|áÜ…%}1F$pM£ì\"J Mûf¡wşF7\nĞJ^dj¹’V5 ˆ»	â¼ˆ9úç ¨¬A~¦]‡eš­iˆ;‡Â—Ê–UŞ„çÿş“QÙ‹ ))È‘Ğ’Âÿb„ŸÂz×®p$ò[C7dı¹)k8ZQî:	©mp‹§C.^Œ\r$4ÂKXQœ\\;be±©! ò¶b\nî®#È‹äõ8Á×’’ö¡8–Ò¬µ²ÕñıõÉU+·\0F	\'Åíİ6âûë“«Vn\'ÈéU”¶W.ƒ8•³ßªİàÎV`8Ëòßqû‡tŸ#®)ä¡‚2¤Dã4»êÃÏıC˜])I¼âK0‡Cè)Wæ•jwxUÂ¡%~öµ”Ü8sşØ6eoßşQaF:','2021-12-01 12:08:39'),(13403,3047,'audit/log','xœíXİnÛ6¾ÏS¾q¤Dê\'ğ…ê([ÇlgÅ€#±©:Kje9hZä©ö{±JJbÕLÖÁYS\räP¶ÈÃï|<çã¡¤G¼/KÏñ:©Z.å…Zv¥G-ïKâa¸õÍÒcÂëLOÆ¯ÑñÙpˆúãáÙéhŠ\'ãSÊUœ”s••ÅUØ9L<>ÆQâu®’äM|ş¦Ÿ§©ÌbÏû¸RÅ•îÈcæ09ÌÆ.¶ªÁÒÃŞ—ëÄãÚ<s-ëğZ[^ƒ$¸×PY’] £ç(Ê³LEe’gJ¯–Ş»|Yö’ìÉ\"Éçñùa|ÉT­ı¸—­á½5èå0Ï=ˆ	5!¶-WhÄb±mÑÓ`ôg;şÂ?¢UxöÇ£élâF³ùÈ?\rBäOQî,ËB&Y9×ÃıöÍ«÷b•f†“à8˜£~p4ŸùÏ‡ÁÚ˜B½U…Ê\"ÏKy¾PŞ˜rmøúì;uL$ÙÛ¼H¥fo¾ŒŞ©TŞ™›\rüáüÎéic/\nw^£{Æ¾\n~¿Áp6õ_4 4L4U˜w«ÿf^ûşÌ_„¨WMd~6ÜZØ}ÀÄ`ŠF:	üÑÑÆš^{•É=İù%ŸöO‚SßˆìæÑıƒëå0­ì¼>¾ï·ÛC±„¥—Kµ»W»SOPGŠ©×ÎÓëáÔCİ5ènÚ2vÛN+˜E˜!ólÇ¥Î<w=óÌŒ¦Ád†€q[´`¹‹|UBğë°†)—å<Uå»<Ö¿D…’¥ŠÃ=ô›?<¦h·û6ùT®\nõË\"—qwuûÃn(¦ä¡Ï0A„zØÕìî=¨0—ê“Š`~“Ÿà~RÚ•Â€ş¬9JµN3t<ƒ£y•6\'AÿÕØÇÛ`q\\a‹M±£”2Wà\n\nomìş-ãC‘Ç«¨Ì·Ø/4‡¸®	·i\rÈiË/ı)¿?å÷)¿7	õöŞöÙ*élÌˆA(³0©‰¶ª4\n9w97ş1õÿÙÄÁÄ„Ãfµ\ZQ«¥F®×ñ‡³`‚*VÖp ÿl6FıIp\nÙÑ#ÛùÙ¬b˜ãØ´fÿ÷¹˜sFLêÈ\\[T;$ÃO@&°0­œE¨U­cß¼¥m‰…P—£È¢¤>r0ñ}¶×\nw6K\ZE24–vM#¬¯jš»Û\r“ªvÉòô¼¨êš(“‹\\ß­²$–ñüR.òbí{ªbhëa©,¢æ6‚Úç\"/ıõ®\"Píø‘JJ…b….’B.ó….|†1´ä€ï#-\\[U@@#Äâ&ZZEZè´h]Œ÷‘õ8´Ø;¦ÈåØ¡UäZ­jŒp÷Éhaš¢È?£ó…Ì¢¼a„vk&àÎöŒ€²Ç61B…SéŠåü(ŒXfF´\\Ç­®ma.ìÉ¦Š[œU©ÃI›şdŒğŠ‘Kõ^.2,hYC†ÀÛ³!°Í•Ì­ô•[m6¾>3~?6„¦àó*’E ²á„ß¦Œõ„‚…)a K0¼U©›=!6ø¤JU\\À‘]¡²èR¾O‹ÛxĞÚ¼Ø*n¶ä*]Ë5¥àv>·w§ĞÏîKyş×ŸY£(HeÀRÖpcCK›\\‚‚ç¸±8T+&nl^\'“`ídOÆå%x”d7‰äÔ‰¤KL×FmÑo®«b[|{¹eMëÀ)„ÃÖæõÉH´êH¢öì×# í·b\Z`¯ŠêU@Øcs—08ë¹šy•æÅÕ<•ŸÂì±ú|ƒš3/,@zÚÛºÂ\\lT(§:l^_ÿ\rú\\\Z','2021-12-01 12:08:39'),(13404,3047,'audit/profiling','xœí[íNÛHıÏSXü	H”ï#~¤Á´iC²JÂV+UJLìRï&vë8¨´â©ööÅöm ‡…¦\n\n8qfÆgÎÜ3÷ÃÆw©ûmê\nwsN’ô|s/r‰PJI²7u™»™E“ps/pé.TqŠgT0„|¯L·éÔ?\r§›{¾Ë”û\rºÃ;aŞ h!¸»ÙùÆQ|ê¼tFI‡£,Jb×™œO?İÉ4Ûâ³0Îü4JÁÉ^pû“pî¤…áW!ƒF%Ôİ<¢÷ÁÉûÆõˆn2m)àÅ€–\nÄ±Ø¥iLá<dÈıv¹ÜŒÈ±4Ó¼0ş/ÈZT„L•È‚\nÁd6™Âúõ^wŞ9‡Ç­–Óè´Ú=ç°Û9r†ş,ˆ²ÀJÏ‡·‰Äs¨&?\\÷ó,,ìÀ‚‰1&&¸ØË?.éš©‡aÒ[0ItIÎc’,¶çµ¼FÃŸáß£ÙpwØè´{ın½ÙîÚõ#oèÔ{ÎÖ}š¥~g³¶ÃÅf:­Ç³IliÙõ½®×nxƒ~ıeË›ë“†Â4ŒGa0Èü“qxï[—œë>õ‚â(ş¤ßXÙ`:úNüëáúÍzkp=é^9Şh¸ñ¦ÓlßÑ÷­÷ç%†ã^ıU	ÂÀt:íóVş×Îk£Ş¯·:¯†Î~~!ûwîÕ[÷Ñì9mcSõöÁ=ƒ•­¶ó!·Mã;–¼×xíÕ­È.¿º»s±–®ùï^ßw»ï>,½?\r·¶‹é(,ÅÖjãzÒóæ´ïÔæ4U»=–µÙ’ÛeÄ¢<…Î•§ÖÊ[+o­¼{•WÑéQ¡lÊƒÓÊ(£yéaÒk¶{^·ï\0E÷ë&³¬ßØ5\\rš\r&aö1	Ì™Q\ZúY·?ê­c¯çlÕ>D_²Y\Zş6Nü ¶ãÔ\Z­¦9DğL^ ì`â\"ş¿¶}àVN3ü\0€m¢Jq;p#‹rÁø\'›©=ŞûÎLå.ÖHŞ­ÌDµ@ùDBTbb+¯ïvº^óU{ï¯½ÆÛ\ZZŠuµ«…,„0MÒÙÃ±TâÅ`QHsNIAŒX:éİAç§4	f£,Y&\nÎ‘Ûn\0	‰ó\\ËÊ€*ìÖJXQ®P±èEOLÖxí‰IO|©¨ûÜğU›å¶‰lá/¨Np”\'è­U·VİZuw¨®š¯“X(mQC¨(A‘…ê#Ñ€èúŞ÷c€‡Å%+l‹K E—ú0 U$I·îCJ–ûĞbUN»›õVßë:ùÍqêÇıÎ Ùnt½#ê>^š\"ÂmKE!Z)€‰%U¢Lï\"Î	²L‘\"\"ê	Œ(B©ˆ$ıF”ÑÂfD£²@ŸÃˆ2¤Mg©@FÇŠ0QZ[”ÕpúãiÒ²4a¢!÷µ¡¸Ø(8˜ÊÌhÙÀ°BùT>Q2[€±/U…Ø©z¢lÀPpSV1RèŒ-Vn»QÏ¸6ç­a”×-âdr’æ5QD§‰y7‹£Àgş8Iç>OÂ\0E·‰ŸÊ·#?O“42¯«xÇ©ÕGa”…N:§QêO“±)ÔapÄ»|Ç¡p„×ruÃÆÒºHRë‚¼Ò¼Tµ¡¶†;J \\ÖŒş,¼{xÁpÔí8ì‘ìE\"L-uAÂÑ%/l¥y©h/à‘º}×x/ovl!æÂ\\?/ÔP¦ÉWçdìÇ£¤¤„Ô\n*à%Ô#˜\nP‚µÍ3rˆ›s7ÍäªRRÑJ¨¦ÖŠST„TLÿ,Œ0;#Üè†ä¯¥„jımQ&7ñSşdZUJ*\Z	„İ„Ú))ã&N)áÏF	Ï)9ÿò§%´dC G°“…0«hˆ2§ƒ®\"U­øP·»!D*‹Gø\"7oÌ=Âpğu6òÓB1~I\n¿ÚVÙcˆÀV>èå£QbEù¨h!|	±%‚•‰;_È»°¤ÏÆˆÂ,LOÃÂ´O~ê;gş_Ñx|¥ GÉËH-WÒ²q;Aœ—>Gÿ\ZUµ ˆÏ´-Y©5\rq#)|>§aYíòï?qé•0šâ’	GRî¿áÇ°ÆµÍ‰üÑÃ\rY}nª\ZV”Û² !uáœÄbvÈÅ³‘£„–3ŠâËX±©! ò¶b\nî¶äEòzœà+ÉGEûPKiuÖZÕñãõÉe+·\0F	+Å‹§mÄ×\'—­Ü*NuWQºØqåB\Z¤`S9şı Ş÷n<he\0ƒYšßÇîÓ]¸¦‡\nÊ6vÿ¯Á`âî—ÿmà”7,Áö¡¥\\šWªíîU•ĞKüäs©¸,\Zqf½Ù6e‹‹ÿ\0˜,Æy','2021-12-01 12:08:39'),(13405,3048,'audit/request','xœ½Vİo£F¾ÿÂòS«+æË€Mt6pr­\"¡5,:b(`\'×èş÷Î.`;‰\"U}èËâİùØ™ßüfÇX§úK£kú8+pó@šñ\rÖıåg£‹‚>nZÜ³LÉø&×…›†êkò×‘4íŠà”Ô×\n•5UyhÈ;!••Ç¢÷åÏí±&|Qâ”©ú\'m^èFíy~Ÿ€«² ôÛÖeQ€Ç{»34ÏGºŞºàé—_ÿİ™küÈ¢õ—>ƒw—çºØŸoyŠÓ5IáCÏ%8—;àGÈ\'ä®ªûÒoî{/à&/Y”éKâXˆ‚[°(æn\n\"=sLÇ‹İíÒhÔÒ¢çIù’Ü’ú”\'yé÷¸f™A¥ü•£±pQüÍB‹í’	ô±@¿ ¶›µg!ºƒ{ªºdøÒø¨å.‹]¨e™ş€‹W^mŒ5\Zà“eYpšh»D¾6‡<BÇÛôÓ&òDf÷Ò”ß0W(6½m9Áà‰\'mÂc€îH×œj\0lj¨G‚fP=T}dKE„l¶æÂ°Õ¹-j²!ØÈ˜.Y³§š`©ª9Wæ²(Î¦¹PG¶<“i&©†iÍ\rÁ^°ä¹-ÙÚ\\Q¦bX[×A¹–í\ZËpˆ»+~ã<qÄU9#®ZwV,$U\rÑŸ« ¥Fá2uéÃŠdŸ7m‹ŞÙÊë°âóuY¶Ì±Ğ®IQä )]–ªŠšfB&ïD‚e-Ë¤ÙLËf™”ŠX“TT…l\'HsI™j‰@ˆ€çs¢Ì²,wWé:¢ØB>KW£\rxlKhµlôéSZ}ßs)9ÁÏ,/|öŸ?Ó5I`-ò]ÒKñw*¥êÔ4ßÃ¦&RÒç¡`İçUä‡ãsÏQkSÆ±X\0Ôüptp—qºëUY†£á>´mÕè<ÿôô4rL¤åS\na¾;ÒNo(e¸p5yş›q|Ú7Ì7(\n£¦³Ü(6‚®Ê’J»û)o8\\=7ÒˆãÀ+Ş„Köyy¸roİ¾ËÄÁ«é­}6“áºŞ]n}ĞæºÖ*hY5ƒl¹ŞÕä;­Ù’¤-kÒ(û—UyÂV2â<ˆÅŠ]ÙôzèmÑ3¶õl;DQ¼p¢ğ‹:½Àznbá\ZÖ7-Š6··FĞ ¼nQN\'L_nV?ßˆV»YÇx.<øMËšßåÑ•Ÿ07¤~%ºôtófŞ^ìG·…eˆíR¼ÅÖq­3_)…û)/\0øFöÁŸ©ïn#4Ï”Rş¥&¸I†ÇÖ÷ÿÒBüqÏÅ	ƒ±\ZÙã€\\û­ˆæšãGg:¼+g1½ï#Zú€ß„®!ë\n¤kyæv6Qxkf(Øğ$è÷-\n£8rÖ(¶]Ï\0…TUy&«‚2\'SMSgÓÌkm6‘Ïz])q½?Ñ:Æø%”Ëø~;Ö¥ÆºüïÇzwuB­¦tI/Qt™î´EØCv5îMÏûê W}(ÎáåD£#ìiwöóØÙ','2021-12-01 12:09:04'),(13406,3048,'audit/db','xœíYÛNãF¾ç)¬Ü¤]:çåÂ\rRBRåĞU¥•b{Ykc[u	´Úëm_¬3ãl‰É‚²U• Œçğ}ÿy~t¾.á´’h¹î¢eë,pp¾Æ‘¿˜úÎ–fNk|5ü`]Lû}«;ìOocëb4¼±ü`ÆÅ,J‹üÁoÅ”oä’tZqü1¼ıØÍ’$HCÇùcåj$>È°ÀPO)¤Ü¦gåÖÃ·ØQW2Â(;Ó—\r0Ù¬&†04`âØ\ZßÄÄ¹”åØë{İÉ‘%_ş—ùÊ?õ»ÃÁx2r{ƒÉlàŞx¾å-¥Ë\"â´˜¥Aùïª3ÊèÅ*I\r#GŞ…7ò]ï|6qî{sòèS”Gé<\ngEp»ˆvÏŞÚrcúæîG¥ˆãôS–\'Agél9ÿ%Áãr“ÛŸ=’¯×›ûG¿{ƒgæ^{¿Ç0»—k\n¦5hÌÇúÓ,×®;qûÃKßêèÌ÷†£V8Ş±Dol\r”M¹ƒó‹­Gè%OÔàgT>î^y7®Ù÷[ÏO.Õa˜ªo}¸’ò~~İRõÁ2:>)é””–b\ZuôHzÓœ:V{Ã§ÚÛk‡5Œ]O@µë‰ƒë\\ïàz;]¯nÖ³)7¹fB(×ƒ`Ó÷ ”¾×Œ½ÑÄ’2V°Tx­\nişÊ°åËb–DÅç,Tÿ™çQPD¡bıæö§ŞØ:nŠï‹Uı´È‚°ıÎjwû=õ…\0‚ï!z ‘lÀöÉvˆÁÛ<£ûh.˜˜bDÑQ [ÇÿcDú:¢‚¾MS›Ío2Eªºò&ÖÅpäõ.3\"®¼îõXZ\Zh$u|ŠoƒAˆØ¼;y=˜Z’Q`0âÛe§CñZ2¬RwŠçëÎU\Z‡A(•Êï&Õ°†E€Aa1.MVÁâÍ`Õ\r\n–,Óm,#\Z–]IËÒò!-ÿ/ÓrÅ­v%æêÀ†aAFs£ÿ‚uX@ààÿ;øß¿ú_ÍüÇ07TŒHŞ/óB•Ò…;­sé~ï…%Â+kF3FT¶§®¦v%Å7•u˜0¡+)Téàâ´ÜşÄYZ_OÑXît2œõİ‘w#=¸‹CÛ(,*Öªco¯–ôÈ©¬Ÿ˜©ŞÃ•g.$öeX\ZÇÂˆ†£½/ÃRh8†F§“§“†?Ì°4<‚M\',PÙ¸Æè\Z–<Ç³e‰µ[â—Ÿ¶šÊJ‚¡Â#lˆJ0ôõ`êKÆæÛ}†”ó=ŠÌXDéÿXìéL¬±`A`@¥Ã‘J•)è“¶È‹>öcİI³ä6×ı‘eœÜf‹l£ßYíëx‘İåA’©6È—»†íÅƒR“±ÉìXöÜ+šêÀ@æ\0“LÖê¨¤y›ó@úåwwycUH›b8¡i_#doêêÚÒ ŒlPr`oÍKèı¸È5‡EÑ\\Ôff=ğu\0&|ojê™Xá‰3Pr°ßÚ¯‰„~/äßšG²h¬ÉcSEJ„(ÛÏôÍÃìNuõ¡bŒO¶ªÛÔe¥\0R=‰¦<¨„>ÕÓ‰UÚ\\dê¬P@×$ğşHÔÔ£#	ÆÊ(K+å•Í›“`êÉE”qI“ZZó¿ş¼çÙRQš\'¸±b$\'S§\\íë”ı0F5µÄ! Èƒ©êòåµ^ÓŠœ«ƒ§)©QÎÊµ÷V‘s±¡A(Ï*¬Z±ÙNkúë¹+ÏÕGq\n¡®rİÒó;êô¹À‚3mY£ùI”dùÃ,	îıb²ÄæÈZ÷®¤t0 ¢±`	±Mghjãò	C{çRW/r+b´X[(#ùöíoÓv@1','2021-12-01 12:09:04'),(13407,3048,'audit/log','xœíW]OÛH}çWŒòZÖóeåÁ\r²$ö*N¶Z©’íÄ†ZíÖvV Š?¶¯ûÇvfŠ\rêÊ+­\n\n	ÎÜ;çÜ¹÷;1‡ükÍäi]Ç×i=8‰93nˆOæîCÍ±ÉÁ…ÿœ-§S0ö§Ë™€³¹?Q¼M²&L‹¦º\'‡âEÄ	;ájp›e’Õ‡q™çq‘pşe›V·r!>I841Ã¦A	<¦`H•qÌ\rşõ.ãò?H¡irr\'=· ™”üÏi‘×àôX—E‘®›¬,8Èoë/ş±¬›QVü)ÅUV†Éê$Yq¶>Á‹[x¿9ä¥ØçÄˆè[Ä6%b³Ø²D wê@üDŸÖÛè8\Zû^°˜;ozÎÌ€€HĞ©›*ÎŠ&”£7]ÿÎêÍ6/4+çî™;w½±{\Z.œwS·eS¥Wi•ë4	›xµI_¶~²eË¼½ûÁ.\'²âª¬òXF/¬×Ó<~p·˜8Óğt°÷·~õ\'Ş3¶—î÷–s¾!aßS˜Õ_}\\ÇÎÂ™úç©ôßùóo_p1	€\'‹ÀñN_p¶_u¤\\ÉÅÏy0¾pgÙıWÏïCcª¾8x!âı¼ßHbqôqíèì6ØeŠnÕÁév:À°Õ†O}i—õë¦¥­<‹ÙˆÉÊ³Û•¡¨¼‰¸óğ»MKwUn‘ü2­Å–uæió±Lä“u•ÆMšDGàwgºtp8¼Ênšm•ş²)ãdøÇÓ‰|C‚o!zk@\07lnÀáÑ‹fÏ2½I×bOŒD“yÂ‚©¥:Dm¢HöiwÎü¹;9÷BU6îø2Ñ7ú`ÁÇ!¦Ã‚1Ca¡Í`ÏkÆ¶È’8QNÄ{Õ¨0fP‡ŠZæë4a†~6áŸMøÙ„;UõRî.ìW~ÛXS~î‡6Ô™ÚÅ§¢úî÷u‚Ù¡Lb!Œ‘êˆ´ÁÂÎtáÎŠÏc0ÀY.üpâçîLTÌöEgA¦EGQš…¬W\n9††P-jQ$Á`ã¿\n•Dg=:¡úê 1şnÙë‰E$85M¡†*Ã±ù:,±ƒê±Øpwj¹‡ÑGcÏ£S;Œ25ãe¾ªÔüSgùªÜ”­iŠÉæ2Û”×Uœ—rÌùtİoª‘4(5ŞôÄ !ÒOÑ ©†Áş4@~~OáºêK&5,ÂvÃ¡?šÈ§YS)\n›¦7j›H—LÄÜß^	ûÑÉDòY¶¿{\Zù¦/\rj0¬ Â ­r‰vH}YP|©Ì$…mÑ›…†ÁtlÆ”2ĞnÙV¦¼·ˆûO&n:UYƒõß­²uYKFë÷¥dRYºÏ¡J.j½V·„Ø[‡Eh ªU³£uÌæƒåo§Şî=QŒ’m¥Æâh$%Z3Ë$Ğ}2ÊÓ¼¬nÃ<¾‰FÈgg!°ŸÿÄ‰Œ°AX_*„˜º¶C™e1º»û^Ù','2021-12-01 12:09:04'),(13408,3048,'audit/profiling','xœíZÛn›H¾ÏS ß8‘Úìœg òuHâ­c¯|Øj¥J†š¢\ZØ^5ªòb{»/¶3@7¦¸\rdİÕÊ‰˜Ã÷ıçùÁ³°õ9³˜Õ‰‚(Iï:g¡…˜‚£³Ì\"V\'£ sæ[øqB`AÀ\0ÊËBÍÊ2ï6È:gEõYÎ–ï˜zäF­Îø÷ ã[ãü•±Lâ8Xæa[Ft—}\\Yï“,ï…ñAœ{i˜,ü›3ÿ&ö¢`ãK…	Ê?8¹*ÂVç.ßú7oû+Z‰ÜHÅ.dX`(§ŒˆüHdÀú|ZT­H!W,ïÕ„²É\ZB¦\\\rd†#\n2Ù„Œ¥ú¦Wã7ÆÅ|84úãáüz45.&ãkÃõÖ~˜/$¬ôÎİ$Ü@E^ì[ÖÇuPš“Iu˜£ì¬øØÓƒ¤„‰!5˜8f‰obâ\\ZìÔ:ıÙ‘!ÜËµ{êöÇ£élbF³ÅÈ¾v\\Ã\Z®Ô{–§^ç¥[÷E}†¢S½ZG±fäÄ¹p&Î¨ïœ/fö«¡³1\'\rŞi/‘{7«`÷ì­-7¦oî~TŠ8Œß%iä)+[dË÷Aä=,7ØÃÅéiµŞÒ=úy<=2÷µóÛó©}YP0ñ¨À|\\ü×ËµoÏìáøÒ5zÅFúkãÉ?+ïXb05FÊ¦ìÑùÅªQ\'Å’\'jğ#*Ÿö¯œk[‹ìË¥Ç\'—êĞL-.½¹’ò~|İá{Rõ^Ÿ”tÊ\rJKÑ:z ½iN=£»áSİíµ´ÃZ†Æµ®\' …ë‰ƒë\\ïàz;]¯iÖ3)×¹–•›r=6}Bé{ƒÑÔ™Ì)ƒq=K…§É:—æ¯[î™å‹(Èß\'¾úf™^øî‰ñ«=œ;Sã¸û.ü”¯Óà§UâùİF·?¨|	ÑK\0\rˆ,`Z\0vOv—nÏàS°”\0tL1¢h‹(U1ÂÿQ}Á÷m¢‚¾MS“‚i­HEªºrfÆÅxâ.G‹\"D\\9ı×Sii •Ôe¡ÀxBÄä¥ØÉÓÁ4’Œƒß.;%Š+É°Zİ)¯;×qè{¾Tº/_ÛTÃ,4\nCˆqZ* o«AhP°d™nj`aÊƒ4kiY CZ>¤åÿeZ®¹Õ®Ä\\Ø2,Èh®õ?Bp8øßÁÿş÷Mÿk˜ÿæšŠÉëeşCµş$âVç\\ºßÌùÎá‰µ#‚i£*ÛS7@Ó¸’â€ëÊ:L˜(*)TëàbuìáÌ™…¾¾FcØóÙx1õ\'Îµôàl-,M­°¨¨TÇ^#é‘SY?1]½‡*Ï\\HìË°\n0o÷‡\ZJ4æ¾K¡ájN\Z\\Ù`‡?Ì°\nxëNX ²qÑ4,y!zË•[âï?mµ••C…6F˜•`èÓÁ4—ŒÉ·û\n)#æ{:+0è±ˆÒÿ±ØÓ™¸À‚Åö-y>¨t8R«2ıª-ò•E»aÑ‰“è&-ú#Yİ$«d£_İ×á*¹M½(Qm·-Û;Š¥:c“Ù±ì3¸W\Z\rÕÌ:&˜Tê¨¥yÛó@úå·ikUHëb8¡•wÉŞ84Õ5¥Ai9˜ äÀ›–Ğ‡aVy{=P“éõÀ«\0LøŞ84Ô2±jÃg ä`>·_	ı:\\ÉßŠG´j­õœÖU¤Dˆ²ıLŸ=ÌîäÑTJ!ÚødªºM}¬@ª\'Ñ–•ĞçÅ4Eb·W…\0é:+ĞŠŞ‰†š`”¢%ÁXei­¼2y{Lİ¹bõ4©ÌXşõçM¸L2EiáÖŠ‘œt9œrA\n_§ì‡1j¨%EºL‹x >~­×¶\"çêà©Kj”³²‡@Í½UäB mhPÊ³\n«Wl¦Õ™ÿrnËsgıVœBèúë´hé¹=uú‡\\`Á¦¬ÑÜòi´Eä}r{ÕóhFÕ»’ÒÃ€ˆÖ‚%ÄÔ¡©‰Ë;8íKS½È­ˆÖbM¡ŒäşşoŞÀ;','2021-12-01 12:09:04');
/*!40000 ALTER TABLE `audit_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_entry`
--

DROP TABLE IF EXISTS `audit_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `duration` float DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `request_method` varchar(16) DEFAULT NULL,
  `ajax` int(1) NOT NULL DEFAULT 0,
  `route` varchar(255) DEFAULT NULL,
  `memory_max` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_route` (`route`)
) ENGINE=InnoDB AUTO_INCREMENT=3049 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_entry`
--

LOCK TABLES `audit_entry` WRITE;
/*!40000 ALTER TABLE `audit_entry` DISABLE KEYS */;
INSERT INTO `audit_entry` VALUES (3043,'2021-12-01 12:04:55',0,5.41381,NULL,'CLI',0,'fixture/unload',2730864),(3044,'2021-12-01 12:06:07',0,NULL,NULL,'CLI',0,'fixture/unload',NULL),(3045,'2021-12-01 12:06:20',0,NULL,NULL,'CLI',0,'fixture/unload',NULL),(3046,'2021-12-01 12:07:50',0,2.8155,NULL,'CLI',0,'fixture/load',2688872),(3047,'2021-12-01 12:08:36',0,3.50593,NULL,'CLI',0,'fixture/load',2688872),(3048,'2021-12-01 12:09:01',0,3.22178,NULL,'CLI',0,'fixture/load',2688872);
/*!40000 ALTER TABLE `audit_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_error`
--

DROP TABLE IF EXISTS `audit_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `message` text NOT NULL,
  `code` int(11) DEFAULT 0,
  `file` varchar(512) DEFAULT NULL,
  `line` int(11) DEFAULT NULL,
  `trace` blob DEFAULT NULL,
  `hash` varchar(32) DEFAULT NULL,
  `emailed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_audit_error_entry_id` (`entry_id`),
  KEY `idx_file` (`file`(180)),
  KEY `idx_emailed` (`emailed`),
  CONSTRAINT `fk_audit_error_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `audit_entry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_error`
--

LOCK TABLES `audit_error` WRITE;
/*!40000 ALTER TABLE `audit_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_javascript`
--

DROP TABLE IF EXISTS `audit_javascript`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_javascript` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `type` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `origin` varchar(512) DEFAULT NULL,
  `data` blob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_audit_javascript_entry_id` (`entry_id`),
  CONSTRAINT `fk_audit_javascript_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `audit_entry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_javascript`
--

LOCK TABLES `audit_javascript` WRITE;
/*!40000 ALTER TABLE `audit_javascript` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_javascript` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_mail`
--

DROP TABLE IF EXISTS `audit_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `successful` int(11) NOT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `text` blob DEFAULT NULL,
  `html` blob DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_audit_mail_entry_id` (`entry_id`),
  CONSTRAINT `fk_audit_mail_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `audit_entry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_mail`
--

LOCK TABLES `audit_mail` WRITE;
/*!40000 ALTER TABLE `audit_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_trail`
--

DROP TABLE IF EXISTS `audit_trail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_trail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `model_id` varchar(255) NOT NULL,
  `field` varchar(255) DEFAULT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_audit_trail_entry_id` (`entry_id`),
  KEY `idx_audit_user_id` (`user_id`),
  KEY `idx_audit_trail_field` (`model`,`model_id`,`field`),
  KEY `idx_audit_trail_action` (`action`),
  CONSTRAINT `fk_audit_trail_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `audit_entry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_trail`
--

LOCK TABLES `audit_trail` WRITE;
/*!40000 ALTER TABLE `audit_trail` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_trail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `idx-auth_assignment-user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` VALUES ('admin','1',NULL),('comprobante_aprobar','1',NULL),('comprobante_crear','1',NULL),('comprobante_modificar','1',NULL),('defectuoso_set','1',NULL),('defectuoso_set','8',1637333840),('egreso_alta','1',NULL),('producto_crear','1',NULL),('producto_faltante_set','1',NULL),('usuario','8',1637333329);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` VALUES ('admin',1,'Encargado de gestionar todo el sistema',NULL,NULL,1637065969,NULL),('comprobante_aprobar',2,'Aprueba los comprobantes',NULL,NULL,NULL,NULL),('comprobante_crear',2,'Realiza alta de comprobantes',NULL,NULL,NULL,NULL),('comprobante_modificar',2,'Se encarga de modificar los comprobantes con sus productos',NULL,NULL,NULL,NULL),('defectuoso_set',2,'Este permiso nos permite setear items defectusos en el inventario',NULL,NULL,NULL,NULL),('egreso_alta',2,'Realiza alta de egresos',NULL,NULL,NULL,NULL),('producto_crear',2,'Permite crear productos',NULL,NULL,NULL,NULL),('producto_faltante_set',2,'Se encarga de registrar productos faltantes en comprobante de ingresos de productos',NULL,NULL,NULL,NULL),('soporte',1,'Encargado de gestionar los usuarios y permisos de los mismos',NULL,NULL,1637065969,NULL),('usuario',1,'Encargado de usar la aplicacion como herramienta',NULL,NULL,1637065969,NULL);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES ('admin','soporte'),('admin','usuario');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Alimento'),(2,'Limpieza'),(3,'Otro');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante`
--

DROP TABLE IF EXISTS `comprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprobante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nro_remito` varchar(45) NOT NULL,
  `fecha_emision` date NOT NULL COMMENT 'fecha que se emite el comprobate\n',
  `total` double DEFAULT NULL,
  `proveedorid` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `approved_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nro_remito_UNIQUE` (`nro_remito`),
  KEY `fk_comprobante_proveedor1_idx` (`proveedorid`),
  CONSTRAINT `fk_comprobante_proveedor1` FOREIGN KEY (`proveedorid`) REFERENCES `proveedor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante`
--

LOCK TABLES `comprobante` WRITE;
/*!40000 ALTER TABLE `comprobante` DISABLE KEYS */;
/*!40000 ALTER TABLE `comprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposito`
--

DROP TABLE IF EXISTS `deposito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `lugarid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposito`
--

LOCK TABLES `deposito` WRITE;
/*!40000 ALTER TABLE `deposito` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egreso`
--

DROP TABLE IF EXISTS `egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `egreso` (
  `fecha` date NOT NULL,
  `origen` varchar(100) DEFAULT NULL,
  `destino_nombre` varchar(100) NOT NULL,
  `destino_localidadid` int(11) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `nro_acta` varchar(20) DEFAULT NULL,
  `tipo_egresoid` int(11) DEFAULT NULL,
  `fecha_inicial` date NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suscrito` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tipoegresoid` (`tipo_egresoid`),
  CONSTRAINT `fk_tipoegresoid` FOREIGN KEY (`tipo_egresoid`) REFERENCES `tipo_egreso` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egreso`
--

LOCK TABLES `egreso` WRITE;
/*!40000 ALTER TABLE `egreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `egreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `comprobanteid` int(11) NOT NULL,
  `productoid` int(11) NOT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `precio_unitario` double DEFAULT 0,
  `defectuoso` tinyint(1) DEFAULT 0,
  `egresoid` int(11) DEFAULT NULL,
  `depositoid` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `falta` tinyint(3) DEFAULT 0,
  `inactivo` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_comprobante_has_producto_producto1_idx` (`productoid`),
  KEY `fk_comprobante_has_producto_comprobante1_idx` (`comprobanteid`),
  KEY `fk_stock_egreso1_idx` (`egresoid`),
  KEY `fk_stock_deposito1_idx` (`depositoid`),
  CONSTRAINT `fk_comprobante_has_producto_comprobante1` FOREIGN KEY (`comprobanteid`) REFERENCES `comprobante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comprobante_has_producto_producto1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_egresoid` FOREIGN KEY (`egresoid`) REFERENCES `egreso` (`id`),
  CONSTRAINT `fk_stock_deposito1` FOREIGN KEY (`depositoid`) REFERENCES `deposito` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (230,'1 2 3 listo'),(338,'1888'),(68,'3 arroyos'),(256,'3arroyos'),(289,'7up'),(319,'Abbott'),(254,'Aceitera general deheza'),(234,'Adams'),(33,'Ades'),(314,'Agua mate'),(283,'Aguaribay malbec 2013'),(85,'Aguila'),(196,'Aguila chocolate amargo 70'),(148,'Alcaraz'),(251,'Alfajores jorgito'),(291,'Algabo'),(17,'Alicante'),(217,'Allegro'),(263,'Alma mora'),(36,'Amanda'),(159,'Ametller origen'),(92,'Amodil'),(361,'Andresito'),(1,'Arcor'),(274,'Arlistan'),(145,'Aro'),(27,'Baggio'),(13,'Bagley'),(185,'Bagley argentina sa'),(86,'Bahia'),(308,'Baltika'),(309,'Bazooka'),(41,'Bc'),(54,'Bc la campagnola'),(94,'Beepure'),(228,'Billiken'),(67,'Bimbo'),(271,'Bodega la rural'),(262,'Bon o bon'),(276,'Bon squa'),(340,'Bonchia'),(349,'Bonte'),(158,'Boutique chips'),(320,'Breviss'),(354,'Briosh'),(209,'Cabana mico'),(295,'Cabreiroa'),(44,'Cachafaz'),(111,'Cada dia agd'),(190,'Cameleon'),(103,'Campari'),(101,'Canuelas'),(126,'Capitan del espacio'),(315,'Caracas'),(107,'Carefour'),(192,'Carilo sa'),(12,'Carrefour'),(336,'Castell'),(73,'Cbse'),(72,'Celusal'),(187,'Cepita'),(318,'Cereal fort'),(169,'Cereal mix'),(327,'Cerealitas'),(297,'Chocolatory'),(298,'Chuker'),(69,'Cica'),(213,'Cif'),(40,'Citric'),(5,'Coca cola'),(293,'Coca cola company'),(248,'Coca cola life'),(242,'Coca loca'),(240,'Cocinero'),(264,'Coconut merchant'),(337,'Cofler'),(99,'Colonial'),(130,'Conciencia'),(282,'Congys'),(110,'Cooperativa'),(244,'Costa del sol'),(238,'Cotapa'),(310,'Coto'),(35,'Cruz de malta'),(300,'Cumana'),(173,'Cunnington'),(330,'Cutex'),(236,'D ulcere de lecce'),(218,'Dada'),(25,'Dahi'),(197,'Danica dorada'),(19,'Danone'),(220,'Danone argentina'),(132,'De la panaderia'),(146,'Deluxe bla bla'),(157,'Dhum crack'),(3,'Dia'),(53,'Dicomere'),(287,'Dieter meier'),(123,'Don marcos'),(64,'Don satur'),(45,'Dona magdalena'),(261,'Donsatur'),(225,'Doritos'),(28,'Dos anclas'),(168,'Dos hermanos'),(82,'Dove'),(286,'Dulcor'),(96,'Ecosan'),(118,'Egran'),(89,'El brocal'),(152,'El chucupal'),(356,'El turista'),(59,'Emeth'),(138,'Equal'),(204,'Equal sweet'),(114,'Especias el castillo'),(229,'Estancia el placer'),(120,'Evercrisp'),(302,'Exeter'),(352,'Express light'),(21,'Exquisita'),(129,'Fantasia'),(269,'Fecoapi'),(122,'Fel fort'),(323,'Felfort'),(78,'Felices las vacas'),(239,'Ferrero'),(194,'Fincas el renuevo'),(267,'Flow cereal'),(112,'For van'),(223,'Franui'),(258,'Fronterita'),(177,'Full mix semillado'),(32,'Gallo'),(250,'Gallo snacks'),(253,'Gatorade'),(128,'Genser'),(83,'Gomes da costa'),(7,'Granix'),(165,'Granja del sol'),(90,'Great value'),(353,'Greating'),(359,'Green mills'),(115,'Grimaldi'),(154,'Hamlet'),(9,'Havanna'),(48,'Heineken'),(215,'Heinz'),(10,'Hellmann s'),(224,'Hellmans light'),(93,'Herbalife'),(119,'Hero'),(265,'High altitude'),(357,'Hilerer'),(37,'Hileret'),(116,'Hojaldre'),(193,'Hojalmar'),(233,'Hojalmar s a'),(175,'Ibope'),(16,'Ilolay'),(166,'Imperial'),(313,'Indelma'),(260,'Integra'),(98,'Isenbeck'),(347,'Jaserenisima'),(343,'Johnson s'),(241,'Jorgito'),(328,'Juan valdez'),(24,'Jumbo'),(71,'Kellogg s'),(292,'Kinder'),(84,'Kmd mexico'),(4,'Knorr'),(117,'Kokis'),(150,'Kolynos'),(182,'Kraus'),(322,'La anonima'),(348,'La banda'),(14,'La campagnola'),(311,'La litoralena'),(75,'La merced'),(113,'La morenita'),(216,'La parmesana'),(55,'La paulina'),(2,'La serenisima'),(312,'La serenissima'),(106,'La tranquilina'),(305,'La vie claire'),(137,'La virginia'),(237,'Lagarde'),(210,'Lapataia'),(277,'Latitud 33'),(249,'Le fit'),(188,'Le q'),(47,'Ledesma'),(227,'Leiva'),(131,'Levite'),(51,'Lia'),(243,'Liebig'),(22,'Lucchetti'),(345,'Luchetti'),(280,'Lunaris'),(46,'Macrobiotica'),(195,'Maggi'),(275,'Maizena'),(285,'Makarona'),(294,'Manao'),(61,'Manaos'),(39,'Manfrey'),(191,'Mani king'),(284,'Marbella'),(350,'Margadan'),(203,'Marian arytza'),(259,'Marinezzi'),(174,'Marinozzi'),(324,'Marolio'),(332,'Masseube'),(88,'Matarazzo'),(87,'Mauri'),(306,'Menoyo'),(135,'Merengo'),(38,'Milka'),(56,'Milkaut'),(160,'Milkout'),(164,'Misky'),(186,'Mk organic'),(183,'Mogul extreme'),(30,'Molino canuelas'),(62,'Molto'),(133,'Mondelez argentina s a'),(344,'MondelÄ“z international'),(304,'Moneda'),(355,'Monster'),(97,'Montecarlo'),(231,'Montesitos'),(121,'Morixe'),(23,'Natura'),(91,'Naturalmente granix'),(79,'Nature valley'),(18,'Nescafe'),(172,'Nesquik'),(11,'Nestle'),(290,'News'),(167,'Nobleza gaucha'),(60,'Noel'),(207,'Nosugar'),(278,'Ns'),(201,'Nutella'),(232,'Nutra sem'),(171,'Nutree'),(358,'Oblita'),(102,'Oddis nuts'),(77,'Okebon'),(317,'Old pulteney'),(288,'Onza de oro'),(31,'Oreo'),(70,'Orieta'),(179,'Oro lee s'),(134,'Palmesano'),(279,'Palmolive'),(161,'Pantene'),(321,'Par nor'),(144,'Pastarroz'),(346,'Patagonia berries'),(50,'Paty'),(143,'Pepsi'),(156,'Pergola'),(127,'Pindapoy'),(331,'Pipore'),(339,'Plusbelle'),(351,'Pond s'),(104,'Powerade'),(341,'Pozo'),(299,'Produit thailandais'),(58,'Pureza'),(272,'Pyros'),(20,'Quaker'),(307,'Quilmes'),(296,'Ravana'),(333,'Real'),(199,'Red spoon'),(281,'Regidiet'),(65,'Rexona'),(125,'Ricediex'),(26,'Riera'),(325,'Roland'),(81,'Rosamonte'),(136,'Royal'),(109,'S p'),(95,'Sabores de lo natural'),(342,'San bernardo'),(219,'San cor'),(235,'San ignacio'),(181,'San telmo'),(6,'Sancor'),(170,'Savencia'),(151,'Savora'),(268,'Schatzi'),(42,'Schweppes'),(155,'Semix'),(15,'Ser'),(189,'Serenisima'),(221,'Seven up'),(163,'Shimy'),(49,'Silk'),(335,'Sin culpa'),(245,'Smams'),(105,'Sol pampeano'),(142,'Solo'),(198,'Soriano'),(329,'Speed unlimited'),(80,'Sprite'),(252,'St wendeler'),(301,'Suave'),(208,'Sucaryl'),(141,'Tafi'),(34,'Tang'),(8,'Taragui'),(74,'Terrabusi'),(211,'Tholem'),(180,'Tia maruca'),(222,'Tiqle'),(360,'Tofi'),(270,'Tommy hilfiger'),(255,'Tonadita'),(139,'Tostitos'),(124,'Tratenfu'),(212,'Traviata'),(29,'Tregar'),(100,'Trever'),(205,'Trini'),(214,'Trio'),(162,'Tutti'),(176,'Ultratech'),(153,'Union'),(273,'Valcalin'),(266,'Valente'),(200,'Vauquita'),(57,'Vegetalex'),(257,'Veggieland'),(226,'Verdeflor'),(76,'Veronica'),(43,'Villa del sur'),(147,'Villa san remo'),(184,'Villavicencio'),(303,'Ville vicencio'),(334,'Virgen'),(108,'Wakas'),(246,'Wav'),(316,'Weekly'),(206,'Whey'),(140,'Wilde'),(326,'Yancanelo'),(66,'Yin yang'),(247,'Ying yang'),(178,'Yo pro'),(63,'Yogs'),(202,'Yogurisimo'),(52,'Zafran'),(149,'Zucoa');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('bedezign\\yii2\\audit\\migrations\\m150626_000001_create_audit_entry',1634569281),('bedezign\\yii2\\audit\\migrations\\m150626_000002_create_audit_data',1634569286),('bedezign\\yii2\\audit\\migrations\\m150626_000003_create_audit_error',1634569289),('bedezign\\yii2\\audit\\migrations\\m150626_000004_create_audit_trail',1634569294),('bedezign\\yii2\\audit\\migrations\\m150626_000005_create_audit_javascript',1634569296),('bedezign\\yii2\\audit\\migrations\\m150626_000006_create_audit_mail',1634569299),('bedezign\\yii2\\audit\\migrations\\m150714_000001_alter_audit_data',1634569300),('bedezign\\yii2\\audit\\migrations\\m170126_000001_alter_audit_mail',1634569302),('m000000_000000_base',1634569278),('m140209_132017_init',1634569461),('m140403_174025_create_account_table',1634569465),('m140504_113157_update_tables',1634569468),('m140504_130429_create_token_table',1634569473),('m140506_102106_rbac_init',1634569559),('m140830_171933_fix_ip_field',1634569475),('m140830_172703_change_account_table_name',1634569476),('m141222_110026_update_ip_field',1634569479),('m141222_135246_alter_username_length',1634569479),('m150614_103145_update_social_account_table',1634569481),('m150623_212711_fix_username_notnull',1634569481),('m151218_234654_add_timezone_to_profile',1634569481),('m160929_103127_add_last_login_at_to_user_table',1634569482),('m170907_052038_rbac_add_index_on_auth_assignment_user_id',1634569559),('m180523_151638_rbac_updates_indexes_without_prefix',1634569561),('m200409_110543_rbac_update_mssql_trigger',1634569561),('m200603_152906_marca',1634569304),('m200603_153857_categoria',1634569305),('m200609_165710_comprobante',1634569308),('m200611_151142_inventario',1634569311),('m200611_163245_inventario',1634569312),('m200616_172923_marca',1634569312),('m200619_150926_comprobante',1634569312),('m200626_133414_egreso',1634569312),('m200715_123534_tipoEgreso',1634569313),('m200715_124531_fk_egreso_tipoegresoid',1634569317),('m200717_123548_egreso_fecha_inicial',1634569317),('m200717_131116_egreso_id_autoincrement',1634569326),('m200724_130248_producto_activo',1634569326),('m200731_152727_egreso_suscrito',1634569327),('m211026_125744_comprobante_create_at',1635253330),('m211029_153008_new_column_inactivo_to_table_inventario',1635522804),('m211103_163839_borrar_fecha_inicial_en_table_comprobante',1635957667),('m211105_114648_alterColumn_unidad_valor_table_producto',1636113071),('m211109_162835_add_column_approved_at_to_table_comprobante',1636475575),('m211112_120642_comprobante_alter_column',1636719433),('m211116_123154_rols',1637065971),('m211116_130708_set_rols_to_admin',1637068715),('m211116_134327_create_table_user_persona',1637070242),('m211116_161222_insert_into_user_persona',1637080328),('m211117_132109_new_permisos',1637155623),('m211118_145856_edita_permiso_alta_egreso',1637247829),('m211119_130416_crea_permiso_defectuoso_set',1637327535),('m211119_134308_vincula_permisos_al_admin',1637329753),('m211119_160658_configura_y_crea_permiso_producto_crear',1637338232),('m211119_161058_crea_permiso_producto_crear',1637338986),('m211119_162122_vincula_producto_crear_al_admin',1637338987),('m211125_133231_crea_permiso_producto_faltante_set',1637852322),('m211126_130151_crea_permiso_comprobante_modificar',1637931925);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `unidad_valor` double DEFAULT NULL,
  `unidad_medidaid` int(11) NOT NULL,
  `marcaid` int(11) NOT NULL,
  `categoriaid` int(11) NOT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  KEY `fk_producto_unidad_medida_idx` (`unidad_medidaid`),
  KEY `fk_producto_marca1_idx` (`marcaid`),
  KEY `fk_producto_categoria1_idx` (`categoriaid`),
  CONSTRAINT `fk_producto_categoria1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_marca1` FOREIGN KEY (`marcaid`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_unidad_medida` FOREIGN KEY (`unidad_medidaid`) REFERENCES `unidad_medida` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Aceite de girasol','A300',1.5,3,1,1,1),(2,'Aceite de girasol','A301',900,4,1,1,1),(3,'Arroz blanco','A302',1,1,168,1,1),(4,'Arroz blanco','A303',500,2,2,1,1),(5,'Arvejas','A304',300,2,60,1,1),(6,'Azucar blanca','A305',1,1,4,1,1),(7,'Detergente para vajillas','A306',750,4,100,2,1),(8,'JabÃ³n blanco en pan','A307',200,2,101,2,1),(9,'Lavandina','A308',1,3,102,2,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `cuit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_account`
--

DROP TABLE IF EXISTS `social_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  UNIQUE KEY `account_unique_code` (`code`),
  KEY `fk_user_account` (`user_id`),
  CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_account`
--

LOCK TABLES `social_account` WRITE;
/*!40000 ALTER TABLE `social_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_egreso`
--

DROP TABLE IF EXISTS `tipo_egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_egreso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_egreso`
--

LOCK TABLES `tipo_egreso` WRITE;
/*!40000 ALTER TABLE `tipo_egreso` DISABLE KEYS */;
INSERT INTO `tipo_egreso` VALUES (1,'Modulo'),(2,'Bulto');
/*!40000 ALTER TABLE `tipo_egreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad_medida`
--

DROP TABLE IF EXISTS `unidad_medida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidad_medida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `simbolo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_medida`
--

LOCK TABLES `unidad_medida` WRITE;
/*!40000 ALTER TABLE `unidad_medida` DISABLE KEYS */;
INSERT INTO `unidad_medida` VALUES (1,'Kilogramo','kg'),(2,'Gramo','gr'),(3,'Litro','lt'),(4,'Mililitro','ml'),(5,'Unidad','un'),(6,'Centimetros cÃºbicos','cm3');
/*!40000 ALTER TABLE `unidad_medida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `last_login_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@desarrollohumano.gov.ar','$2y$10$z9tntOU5jwOoQXhf93p6Wu6TMaJPX3H9OOrr9NQoUy7VJBPg6QFJ6','kfWLAPwd8ahvdtwAfzyR5rVQ8pF1dOr_',1634570048,NULL,NULL,'172.21.0.4',1634570049,1638188743,0,1638188743),(8,'test','cperez@correo.com','$2y$10$H61FxJA2QuCZylPN2A8DKO/mBOFqS/J9ZPDg3aporOMPZOfbqFrhO','rECTPEmLOtCYxEKNV_hgeMGztPI_M6fW',1637151736,NULL,NULL,'172.21.0.8',1637151735,1638188551,0,1638188551);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_persona`
--

DROP TABLE IF EXISTS `user_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_persona` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `personaid` int(11) NOT NULL,
  `localidadid` int(11) NOT NULL,
  `fecha_baja` date DEFAULT NULL,
  `descripcion_baja` text DEFAULT NULL,
  `last_login_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  CONSTRAINT `fk_user_persona` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_persona`
--

LOCK TABLES `user_persona` WRITE;
/*!40000 ALTER TABLE `user_persona` DISABLE KEYS */;
INSERT INTO `user_persona` VALUES (1,0,2626,NULL,NULL,'172.21.0.2'),(8,5226,2626,NULL,NULL,'172.21.0.2');
/*!40000 ALTER TABLE `user_persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01 12:11:21
