-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: webcooking
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chi_tiet_meo`
--

DROP TABLE IF EXISTS `chi_tiet_meo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_meo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(150) DEFAULT NULL,
  `NOI_DUNG` longtext,
  `ID_MEO` int DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_MEO` (`ID_MEO`),
  CONSTRAINT `chi_tiet_meo_ibfk_1` FOREIGN KEY (`ID_MEO`) REFERENCES `meo` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_meo`
--

LOCK TABLES `chi_tiet_meo` WRITE;
/*!40000 ALTER TABLE `chi_tiet_meo` DISABLE KEYS */;
INSERT INTO `chi_tiet_meo` VALUES (1,'6 skills trong căn bếp để có bữa ăn ngon','Chỉ cần nắm vững những kỹ năng này, trình nấu nướng của bạn sẽ được nâng cấp, dù thực tế bạn không quá thích vào bếp hay nấu ăn giỏi.\n\n1. Luôn khử mùi hôi các loại thịt\nCác loại thịt này kết hợp với các loại gia vị để có thể chế biến thành nhiều món, từ hầm, chiên, xào, rán, luộc... Tuy nhiên nếu bỏ qua một bước quan trọng nhất, sẽ không có món ăn nào thực sự hoàn hảo. Đó là khử mùi của các loại thịt.\n\nBò kho\nĐây là bí quyết các đầu bếp chuyên nghiệp hay áp dụng, đặc biệt với thịt bò. Ngoài các công dụng như trên nó còn giúp thịt bò khi chín có màu và vị đậm đà, bắt mắt hơn.\n\nĐây là bí quyết các đầu bếp chuyên nghiệp hay áp dụng, đặc biệt với thịt bò. Ngoài các công dụng như trên nó còn giúp thịt bò khi chín có màu và vị đậm đà, bắt mắt hơn.\n\n2. Kỹ năng chiên cá\nNhiều người bị mất điểm ở món cá chiên vì làm cá nát.\n\nMuốn chiên cá vàng rộm và không nát, cần phải học được cách tạo lớp chống dính cho chảo. Đầu tiên làm nóng chảo, cho một ít dầu ăn vào chảo, đun nóng, rồi đổ lớp dầu này đi. Tiếp đó, cho ít dầu lạnh vào, làm nóng rồi mới cho cá rán. Theo cách này bạn sẽ không sợ dính chảo nữa vì đã có một lớp màng bảo vệ.\n\nCá chiên \nBạn cũng có thể dùng củ gừng chà lên bề mặt chảo trước khi rán. Gừng sẽ tạo ra một lớp chống dính, đồng thời khử mùi tanh giúp món cá thơm ngon hơn. Hãy chiên một mặt cho thật vàng, sau đó mới đổi sang mặt khác.\n\n3. Cách làm rau xanh\nMuốn rau xanh, không bị ra nước hãy xào trên lửa lớn với mỡ lợn. Mỡ lợn giúp rau không chỉ béo, ngon hơn mà còn tạo ra màng bọc làm giảm lượng nước trong rau tiết ra.\n\nRau xào\nTại các nhà hàng, người ta còn thường chần rau sơ, rồi thả vào chậu nước đá lạnh, khi ăn mới xào, giúp rau luôn xanh bắt mắt. Thời điểm cho muối vào rau cũng rất quan trọng. Phải đợi rau chín tới mới cho muối. Nếu cho sớm quá, rau sẽ bị ra nước, không còn bóng, chưa kể ăn mất ngon.\n\n4. Khử mùi tanh của cá\nNhiều người sợ cá mè, cá trôi, cá trắm vì mùi tanh. Nhưng lý do thật sự mùi tanh của cá chủ yếu do chưa được làm sạch.\n\nCá sống\nNên dùng baking soda làm sạch cá, lý do trong bột này có tính kiềm, giúp loại bỏ chất nhầy trên bề mặt của các loại cá. Một khi hết chất nhầy sẽ hết mùi tanh.\n\n5. Lưu ý khi dùng rượu khi nấu ăn\nNhiều người nghĩ đến rượu đầu tiên để khử mùi cho các loại thịt, cá. Tuy nhiên không phải nguyên liệu nào cũng dùng được rượu.\n\nRượu\nVí dụ khi trộn nhân thịt băm làm bánh, tuyệt đối không cho rượu, bởi khi rượu gặp nhiệt độ cao sẽ bay hơi cồn, làm cho nhân bánh có vị lạ.\n\n6. Xử lý khi món ăn bị mặn\nCác món canh có thể dễ xử lý khi bị mặn, vì chỉ cần cho nước. Nhưng các món xào, hay hầm, bạn không thể làm vậy.\n\nTrong trường hợp rau củ xào bị mặn, hãy thêm một chút đường để phân tán vị mặn và cân bằng món ăn.\n\nCá kho\nNếu là món hầm, bạn có thể cho thêm khoai tây hoặc củ cải vào, vì hai loại này có khả năng hấp thụ muối rất tốt.',1,'2024-03-31 00:00:00','2024-03-31 00:00:00'),(2,'10 bí kíp chọn thực phẩm tươi ngon','Với 10 mẹo nhận biết dưới đây, bạn dễ dàng loại bỏ những loại thực phẩm không an toàn.\n\n1. Thịt gà\nTrên miếng ức gà, nên chú ý đến những sọc trắng và mỡ dày. Nếu có nhiều sọc và mỡ tức là gà đã được tiêm hormone tăng trưởng. Miếng thịt gà như vậy không tốt cho sức khỏe con người.\n\nỨc gà\nKhi chọn thịt gà nên nhìn vào màu sắc miếng thịt. Nếu có dấu hiệu chuyển sang màu vàng, thịt chắc chắn không còn tươi.\n\nNên chọn những miếng ức gà có màu hồng nhạt, sờ không nhũn tay.\n\n2. Thịt lợn, thịt bò\nDùng ngón tay ấn vào thịt, nếu thịt tươi, đủ độ đàn hồi thì dấu tay bạn sẽ biến mất. Thịt chất lượng có màu đỏ tươi, sờ vào không quá mềm hay cứng, không quá khô hoặc ướt và không có mùi lạ.\n\nThịt heo - bò\nCách nữa để kiểm tra thịt tươi là cắt đôi miếng thịt. Nếu thịt màu sẫm nhưng đường viền trắng, có nghĩa thời hạn sử dụng đã được kéo dài bằng chất phụ gia. Lau khô bằng khăn giấy, thịt tươi không để lại quá nhiều ẩm và vết máu trên khăn.\n\n3. Cá\nCá tươi mắt sẽ không đục và mang có màu đỏ tươi. Vảy cá tươi có màu ánh bạc tự nhiên, gắn chặt trên thân.\n\nCá sống\nMột số người bán có thể che giấu việc cá không còn tươi bằng cách cạo vảy hoặc bỏ đầu, lúc này nên chú ý đến thịt cá. Thịt cá phải có màu đỏ hồng chứ không chuyển sang tái nhạt, thậm chí là nâu.\n\n4. Trứng\nĐể kiểm tra trứng còn tươi không, lấy một cốc nước lạnh rồi cho trứng vào. Trứng nằm theo chiều ngang là trứng tươi, trứng hơi nổi trong nước nghĩa là không quá tươi nhưng vẫn có thể dùng được. Nếu trứng nổi hẳn lên trên mặt nước, chắc chắn đã hỏng.\n\nTrứng gà\nKhi chọn trứng, nên chọn những quả có lớp vỏ ngoài sáng bóng, mịn và không bị nứt.\n\n5. Cà chua\nChọn cà chua, nên tránh những quả có đốm ở phần vỏ và quả bị dập, úng. Bóp nhẹ cà chua, nếu thấy quả vẫn cứng thì nên đưa lên mũi ngửi. Những quả gần như không có mùi thì không nên chọn.\n\nCà chua\nCà chua chín có màu đỏ tươi, vỏ căng, hơi mềm và có mùi thơm đặc trưng.\n\n6. Rau thơm\nKhi mua nên dựng cọng rau theo chiều thẳng đứng, thân và lá rủ xuống hai bên nghĩa là rau đã héo.\n\nRau thơm\nCũng không nên chọn rau có màu xanh quá đậm và thân quá dài, bởi thường chứa nitrat, không có lợi cho sức khỏe. Rau tươi luôn có màu xanh tự nhiên.\n\n7. Dứa\nĐể chọn được dứa ngon, ngọt, nên chọn những trái có màu vàng tươi từ cuống đến phần đuôi. Trái dứa càng vàng thì độ ngọt càng cao.\n\nDứa\nNên chọn những quả dứa mắt càng lớn, càng thưa sẽ càng ngon. Những quả này sau khi cắt bỏ phần mắt, phần thịt thường dày. Còn mắt dứa lớn, thưa chứng tỏ dứa già và chín tự nhiên, không phải chín do thuốc.\n\n8. Dâu tây\nTránh chọn những quả có đốm trắng hoặc xanh lá cây vì dâu sẽ không tiếp tục chín sau hái. Nên chọn quả đỏ, bóng vì dâu đã chín. Khi chọn nên ấn vào thân quả, nếu không mềm nhũn, không có vết thâm, đặc biệt phần thịt gần cuống thì đó là dâu ngon. Dâu tây chín thường có màu đỏ tươi, mùi thơm nhẹ.\n\nDâu tây\nĐể kiểm tra dâu có ngâm hóa chất hay không, nghiền nhỏ và trộn với đường. Quả tươi, không có thuốc sẽ nhiều nước.\n\n9. Sữa\nĐể chứng minh chất lượng sữa, hãy cho vào bình sữa hai thìa muối. Nếu sữa chuyển sang màu xanh thì chứng tỏ kém chất lượng vì có thêm hóa chất.\n\nSữa\nHoặc có thể pha sữa với tinh bột nghệ theo tỷ lệ 1:2. Nếu chất lượng tốt, các bông cặn sẽ xuất hiện trong sữa sau 5-7 giây, nếu sữa giả thì quá trình này tốn nhiều thời gian hơn.\n\n10. Mật ong\nSử dụng thìa múc mật ong rồi đưa lên cao. Mật ong giả kém chất lượng nhỏ giọt và ngay lập tức lan rộng trên bề mặt. Mật ong chất lượng cao thường đặc và chảy thành dòng loãng.\n\nRau thơm\nCách khác để kiểm tra chất lượng mật ong là cho một thìa vào cốc nước, khuấy đều lên. Mật ong giả được làm từ đường sẽ hòa tan nhanh vào nước. Mật ong tốt sẽ lâu tan hơn.\n\nVy Trang\n(Theo Brightside)',2,'2024-03-31 00:00:00','2024-03-31 00:00:00'),(3,'Cách làm sạch ấm đun nước điện','Tần suất làm sạch sẽ phụ thuộc vào tần suất sử dụng ấm đun nước của bạn. Bên ngoài nên được lau để loại bỏ các vết ố và bắn tung tóe ít nhất một lần một tuần.\n\n1. Vật liệu cần chuẩn bị\nBọt biển không mài mòn hoặc bàn chải, vải sợi nhỏ, giấm trắng chưng cất, nước chanh hoặc bột axit xitric, baking soda, nước rửa bát.\n\nDụng cụ\n2. Tẩy cặn bám dưới đáy ấm bằng giấm trắng.\nTẩy cặn bám dưới đáy ấm bằng giấm trắng.\n- Đổ dung dịch gồm nước và giấm trắng chưng cất theo tỉ lệ 1:1, đến khoảng nửa ấm.\n\n- Đun sôi dung dịch.\n\n- Tắt ấm đun nước nếu nó không tự động tắt. Để dung dịch giấm ngấm trong ít nhất 20 phút rồi đổ bỏ.\n\n3. Tẩy cặn ấm đun nước bằng nước chanh hoặc bột axit citric.\nTẩy cặn ấm đun nước bằng nước chanh hoặc bột axit citric.\nBạn có thể sử dụng nước chanh mới vắt hoặc bột axit xitric, theo các bước:\n\n- Pha dung dịch theo tỉ lệ 1:1 gồm nước cốt chanh và nước, hoặc sử dụng hai thìa bột canh axit xitric trong một ấm nước, đổ đến nửa ấm.\n\n- Đun sôi dung dịch.\n\n- Tắt ấm nước và để dung dịch trong ít nhất 20 phút trước khi đổ bỏ.\n\n4. Rút phích cắm và tháo rời ấm đun nước.\nRút phích cắm và tháo rời ấm đun nước\nTrước khi vệ sinh thêm, hãy rút phích cắm của ấm đun nước đã nguội. Nếu nó có bộ lọc nước, hãy tháo ra.\n\n5. Làm sạch hoặc thay thế bộ lọc nước.\nLàm sạch hoặc thay thế bộ lọc nước.\nNếu ấm có bộ lọc nước hoặc hộp mực lọc nước, hãy vệ sinh bộ lọc đã tháo theo hướng dẫn của nhà sản xuất. Hầu hết các bộ lọc là kim loại, có thể được làm sạch bằng cách ngâm trong dung dịch nước nóng và giấm trắng chưng cất trong ít nhất năm phút.\n\nChà bằng bàn chải và rửa sạch bằng nước.\n\n6. Cọ rửa bên trong ấm đun nước.\nCọ rửa bên trong ấm đun nước\nNên dùng miếng bọt biển không mài mòn hoặc bàn chải mềm để cọ bên trong ấm, làm lỏng mọi chất khoáng tích tụ bên trong. Bạn nên đặc biệt chú ý đến các khu vực xung quanh vòi có thể tích tụ nhiều khoáng chất.\n\nNhúng bàn chải hoặc miếng bọt biển vào giấm nguyên chất có thể giúp đánh bật chất tích tụ xung quanh vòi.\n\n7. Làm sạch bên ngoài ấm đun nước.\nLàm sạch bên ngoài ấm đun nước.\nLau sạch bên ngoài của ấm đun nước bằng một miếng bọt biển không mài mòn. Nhúng miếng bọt biển vào dung dịch nước ấm và vài giọt nước rửa chén để loại bỏ vết ố hoặc mảnh bắn tung tóe.\n\nVới vết bẩn khó tẩy, hãy nhúng miếng bọt biển ẩm vào một ít muối nở (baking soda) khô. Tính mài mòn nhẹ nhàng của baking soda sẽ giúp loại bỏ các vết bẩn. Sau khi làm sạch, hãy lau khô ấm bằng vải sợ nhỏ để tránh trầy xước.\n\nLưu ý: Để bên ngoài ấm đun nước điện bằng thép không gỉ hoặc ố vàng, hãy nhỏ một vài giọt dầu ô liu vào miếng vải mềm, xoa bên ngoài ấm.\n\n8. Lắp ráp lại ấm đun nước và thực hiện lần vệ sinh cuối cùng.\nLắp ráp lại ấm đun nước và thực hiện lần vệ sinh cuối cùng\nKhi ấm đã sạch, hãy lắp ráp lại các bộ phận đã tháo và đổ khoảng một nửa ấm nước. Cắm điện và đun sôi nước để tráng lại lần cuối.\n\nRửa thêm một lần nữa để đảm bảo rằng tất cả dung dịch tẩy rửa và khoáng chất lỏng đã biến mất.\n\nMẹo để ấm sạch lâu hơn:\n- Không để nước đọng trong ấm đun nước bằng cách chỉ đun nóng lượng nước bạn nghĩ sẽ cần cho mỗi lần sử dụng. Hãy đổ hết nước sau mỗi lần sử dụng.\n\n- Sử dụng nước đã qua lọc thay vì nước máy.\n\nNhật Minh\n(Theo Spruce)',3,'2024-03-31 00:00:00','2024-03-31 00:00:00'),(4,'4 mẹo biến thịt dai thành thịt mềm','Những thủ thuật này được các đầu bếp có thâm niên đúc kết ra, có thể chữa thịt dai trở nên mềm mại, ngon tuyệt.\n\nTheo Brightside, có 4 cách đơn giản cứu món thịt bị dai:\n- Sử dụng các loại trái cây như táo, dứa, xoài, lê đều có tác dụng rất tốt. Gọt vỏ trái cây nếu cần thiết, sau đó cắt lát mỏng hoặc ép lấy nước. Nấu thịt một lần nữa với những trái cây này. Các loại nước ép trái cây có tác dụng rất tốt để làm mềm thịt. Đây là lý do tại sao người ta thường hay nấu thịt lợn, thịt bò với quả dứa.\n\nThịt ngâm rượu\n- Dùng rượu sake: Khi ướp thịt, hãy kết hợp một chút dầu oliu với rượu sake, để qua đêm trong ngăn mát tủ lạnh sẽ tăng thêm hương vị và thịt mềm hơn.\n\n- Dùng Coca: Coca đóng vai trò như một loại nước làm mềm thịt rất hoàn hảo. Trước khi chế biến, ngâm thịt trong coca 10 phút. Sau đó chắt hết nước, để ráo, chế biến thành các món bạn thích. Hãy coi đây như một bí quyết để món thịt có hương vị thơm ngon. Lưu ý thêm, công thức này thích hợp với những miếng thịt dày.\n\n- Dùng chanh: Ướp thịt với nước cốt chanh trong 30 phút trước khi nấu ăn cũng làm cho thịt mềm hơn rất nhiều. Bạn cũng có thể dùng giấm.\n\nBảo Nhiên',7,'2024-03-31 00:00:00','2024-03-31 00:00:00'),(5,'6 Lưu ý cho người mới bắt đầu','Nếu bạn chỉ mới bắt đầu hành trình nấu ăn của mình, có thể bạn sẽ cảm thấy hơi sợ hãi khi thử các công thức mới hay thậm chí là có phần nản lòng khi không làm đúng ngay lần đầu tiên. Nhưng việc luyện tập sẽ làm mọi thứ hoàn hảo, vì vậy đừng bỏ cuộc! Để giúp hành trình của bạn dễ dàng hơn, chúng tôi đã tổng hợp lại danh sách 6 sai lầm nấu ăn phổ biến mà mọi người thường mắc phải và cách mà bạn có thể tránh chúng.\n\n1. Đọc và chuẩn bị\nĐọc và chuẩn bị\nRất nhiều người thường đánh giá thấp tầm quan trọng của việc chuẩn bị trước khi bắt đầu nấu, và bạn sẽ ngạc nhiên khi biết được mình có thể tiết kiệm được rất nhiều thời gian khi làm theo mẹo này. Trước khi bắt đầu nấu, hãy đọc công thức thật cẩn thận và đảm bảo rằng bạn có đủ các thành phần và thiết bị nhà bếp mà mình cần để nấu từ đầu đến cuối. Bạn sẽ không còn phải dò dẫm tìm thứ mình cần trong tủ lạnh hay tủ bếp trong khi nồi nước sốt đang sôi sùng sục nữa!\n\n2. Làm nóng chảo và lò trước khi nấu\nLàm nóng chảo và nồi trước khi nấu\nMẹo này áp dụng cho tất cả các cách nấu ăn - làm nóng chảo trước sẽ giúp giữ lại nước ép trong miếng thịt và cho nó màu nâu đẹp mắt ngay từ lúc chạm vào chảo. Không làm nóng chảo trước có thể dẫn đến thực phẩm hoặc rau củ bị sũng nước mất quá nhiều thời gian để mềm. Bạn có thể xác định chảo sẵn sàng khi cho một vài giọt trước lên bề mặt chảo và chúng bốc hơi hết.\n\n3. Kích cỡ rất quan trọng\nKích cỡ dụng cụ\nKhi bạn đun sôi thức ăn, việc đảm bảo có đủ nước để thức ăn \"bơi\" trong đó, đặc biệt là với mì pasta vì nó sẽ nở ra khi nấu, là rất quan trọng. Nếu có quá nhiều mì và quá ít nước, sợi mì sẽ bị vón cục và nhiều bột. Tương tự, hãy để ý cả kích thước chảo khi chiên rán. Đừng cho quá nhiều thịt hoặc rau đến mức bạn gặp khó khăn khi lật chúng - khiến chúng có thể không được nấu đều.\n\n4. Trộn quá tay các khối bột\nMáy chế biến thực phẩm\nTrộn quá tay các khối bột có thể dẫn đến kết quả là những chiếc bánh ngọt và muffin cứng, dai. Sử dụng máy chế biến thực phẩm hoặc thiết bị nhà bếp là cách dễ dàng để đảm bảo bạn có được khối bột trộn đều như mong muốn - chỉ cần làm theo đúng hướng dẫn là được.\n\n5. Liên tục nếm\nMuối và tiêu\nNếu bạn đang thử nấu một món ăn mà mình hiếm khi hoặc chưa từng nấu trước đây, thì có lẽ việc liên tục nếm món ăn tại mỗi bước để tránh nêm quá ít hoặc quá nhiều gia vị sẽ là một ý tưởng tốt. Nếm ngay từ sớm, và hãy nếm thường xuyên. Nếu phát hiện nêm gia vị quá tay, hãy cố gắng làm loãng bằng cách cho thêm một chút nước cam hoặc giấm để cân bằng lại hương vị.\n\n6. Thêm tỏi vào đúng thời tiểm\nTỏi\nTỏi bị cháy sẽ biến những món thịt hoặc rau được nêm hoàn hảo nhất trở nên đắng, vì vậy thời điểm bắt đầu cho tỏi vào xào là rất quan trọng. Nếu có thể, hãy sử dụng tỏi băm hoặc đậm nhỏ vì chúng ít khả năng bị cháy trong chảo hơn. Nếu bạn nấu các công thức món Tây, hãy thêm tỏi băm vào gần cuối quá trình nấu. Nếu bạn nấu các món xào châu Á thường cần xào tỏi ở lúc đầu, hãy theo dõi cẩn thận và đảm bảo cho thêm chất lỏng hoặc giảm nhiệt khi tỏi đã chuyển nâu vàng.',5,'2024-03-31 00:00:00','2024-03-31 00:00:00'),(6,'Hướng dẫn nấu ăn cùng các loại ngũ cốc','Nếu bạn đang muốn bổ sung thêm nhiều ngũ cốc nguyên cám vào chế độ ăn uống nhưng chưa biết bắt đầu từ đâu và nấu như thế nào thì bạn có thể tìm hiểu hướng dẫn nấu ăn với ngũ cốc đơn giản này của chúng tôi. Cách chuẩn bị ngũ cốc có thể chỉ đơn giản như là cho thêm chúng vào nồi cơm đang nấu hoặc món salad, hay dùng chúng thay cho yến mạch và cornflakes. Hãy đọc và ngạc nhiên với đa dạng các cách nấu ngũ cốc!\n\n1. Hạt dền (Amaranth)\nHạt dền (Amaranth) là một loại \"hạt\" giống như ngũ cốc, giàu protein và không chứa gluten, có kích thước tương đương với hạt anh túc. Về hương vị, nó có vị như hạt dẻ, có mạch nha và có mùi thơm.\n\nHạt dền (Amaranth)\nHạt dền sẽ trở nên mềm nhũn khi được nấu như cơm. Nếu bạn không thích các món mềm, chúng tôi khuyên bạn nên rang, nổ như bỏng hoặc luộc loại hạt này.\n\nBạn có thể thử nướng hạt dền trong một chiếc chảo nóng, khô cho đến khi nó nổ như bỏng ngô, tạo thành một món ăn nhẹ hấp dẫn hoặc ăn kèm với súp hay salad. Nếu không, hãy nấu 1/2 cup hạt dền với 1 1/2 cup nước ép táo để tạo thành món cháo mịn ngon miệng cho bữa sáng.\n\nHạt dền cũng rất phù hợp để nấu cùng các loại ngũ cốc khô hơn như gạo nâu, bổ sung thêm hương vị hạt dẻ ngọt ngào cho gạo. Hãy thay 1/4 khẩu phần của ngũ cốc bạn hay sử dụng với hạt dền để có bữa tối bổ dưỡng hơn.\n\n2. Diêm mạch (Quinoa)\nDiêm mạch (Quinoa), cũng như hạt dền, là một loại ngũ cốc cổ xưa và là lương thực chính của người Axtec và Maya. Tuy nhiên, kết cấu của chúng rất khác nhau. Diêm mạch được coi là siêu thực phẩm vì đây là nguồn cung cấp protein hoàn chỉnh cho hàm lượng sắt, magiê và chất xơ cao. Diêm mạnh cũng cực kỳ dễ nấu và có mùi vị như hạt dẻ mịn mượt, thơm ngon, là sự thay thế hoàn hảo cho cơm trắng có nhiều đường.\n\nDiêm mạch (Quinoa)\nKhi nấu ăn với diêm mạch, hãy nhớ rửa sạch bởi lớp phủ tự nhiên của nó có vị đắng. Chỉ cần nấu diêm mạch đơn giản như nấu cơm - nếu muốn thêm hương vị, hãy nấu cùng nước dùng gà hoặc nước dùng rau để làm thành món ăn phụ đơn giản nhưng tuyệt vời đi kèm với các món thịt. Diêm mạch hấp thụ chất lỏng rất tốt nhưng vẫn giữ được độ mịn, vì vậy rất nhiều người thích dùng nó như một \"chiếc giường\" để đặt thịt nướng hoặc cá nướng lên.\n\nHãy nấu theo tỷ lệ 1 cup diêm mạch khô và 2 cup chất lỏng. Và đoán xem? Bạn có thể nấu một cách rất đơn giản chỉ bằng nồi cơm điện.\n\n3. Đại mạch (Barley)\nĐại mạch (Barley) ít xa lạ với chúng ta so với các loại ngũ cốc cổ khác, nhưng vẫn không kém phần linh hoạt. Ngoài việc có thể làm thành nước đại mạch, nó cũng rất tuyệt vời khi dùng trong các món súp nhờ độ mềm, dai. Bạn chỉ cần thêm các hạt đại mạch ngọc trai vào súp và nước hầm để món ăn thêm đậm đặc và dinh dưỡng.\n\nĐại mạch (Barley)\nĐại mạch rất giàu chất xơ và protein, và có 2 dạng: đại mạch không vỏ trấu (hulled barley) và đại mạch ngọc trai (pearl barley). Đại mạch không vỏ trấu vẫn giữ được lớp cám và nội nhũ. Có màu nâu nhạt và hương vị giống hạt dẻ, loại đại mạch này được coi là lựa chọn lành mạnh hơn so với đại mạch ngọc trai đã qua xử lý.\n\n4. Lúa mì nâu (spelt)\nLúa mì nâu (spelt) đã từng là lương thực chính ở châu Âu, nhưng đã bị lúa mì thay thế; tuy nhiên giờ đây nó đã trở nên phổ biến hơn với những người quan tâm đến sức khỏe. Lúa mì nâu cũng hơi dai như đại mạch nhưng săn chắc và có vị gần với hạt dẻ hơn, và có kết cấu mịn khi nấu chín.\n\nLúa mì nâu (spelt)\nLúa mì nâu có thể là sự thay thế hoàn hảo cho gạo, vì vậy một trong những cách nấu loại lúa mì này dễ nhất là làm thành risotto với rau, phô mai và một ít nước chanh. Nó có thể thay thế pasta trong các món salad hoặc kết hợp cùng cà ri để có hương vị ngon nhất. Tỷ lệ nấu lý tưởng là 1 cup lúa mì nâu và 4 cup chất lỏng. Nếu bạn thích món ăn mềm và mịn, hãy ngâm nó qua đêm trước khi nấu.\n\n5. Gạo lứt và Gạo hoang\nGạo lứt và Gạo hoang là những người anh em gần nhất với giống gạo trắng, và có lẽ đã quen thuộc với với hầu hết chúng ta.\n\nGạo lứt và Gạo hoang\nGạo lứt là loại gạo vẫn còn một phần vỏ trấu - có chứa nhiều protein và chất xơ. Để thêm gạo lứt vào chế độ ăn uống của mình, hãy nấu nó y như bạn nấu gạo trắng nhưng lâu hơn 1 chút, bởi loại gạo này cứng hơn gạo trắng. Tỷ lệ ước tính nên là 1 cup gạo lứt với 2 1/2 cup chất lỏng.\n\nGạo hoang có vị hạt dẻ nồng hơn và là một loại hạt vẫn còn hoàn toàn nguyên vẹn với cám, nội nhũ và mầm, khiến có giàu dinh dưỡng và chất xơ hơn cả gạo lứt. Để món ăn có kết cấu tốt nhất, hãy nấu 1 cup gạo hoang với 3 cup chất lỏng.\n\nĐây đều là những loại ngũ cốc cứng, vì vậy có thể dùng làm nhân nhồi gà tây và mang tới mùi vị tuyệt vời cho các món salad lạnh mà không gây mềm nhũn.\n\n6. Hạt kê (millet)\nMặc dù hạt kê (millet) có thể trông giống như thức ăn của chim (thực tế đúng là vậy!) nhưng nó là loại ngũ cốc cực kỳ ngon, nhẹ, ngọt và rất dễ kết hợp vào các bữa ăn hàng ngày của bạn.\n\nHạt kê (millet)\nGiàu chất sắt, Vitamin B và canxi, hạt kê có vị hơi giống hạt ngô và không chứa gluten. Nó nấu rất nhanh và là món ăn hoàn hảo nếu bạn cần một bữa ăn đơn giản. Để nấu 1 cup hạt kê, bạn sẽ cần 2 cup nước. Nếu bạn muốn có kết cấu giống như cháo, hãy cho thêm 1 cup nước nữa. Hạt kê chỉ mất 15 phút để nấu, và 10 phút để tơi vụn lên thành ngũ cốc vàng, thơm. Bạn có thể cho hạt kê thô vào bánh quy, muffin hoặc bánh mì để tăng thêm độ giòn.',6,'2024-03-31 00:00:00','2024-03-31 00:00:00');
/*!40000 ALTER TABLE `chi_tiet_meo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_mon_an`
--

DROP TABLE IF EXISTS `chi_tiet_mon_an`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_mon_an` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(150) DEFAULT NULL,
  `NOI_DUNG` longtext,
  `ID_MON_AN` int DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_MON_AN` (`ID_MON_AN`),
  CONSTRAINT `chi_tiet_mon_an_ibfk_1` FOREIGN KEY (`ID_MON_AN`) REFERENCES `mon_an` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_mon_an`
--

LOCK TABLES `chi_tiet_mon_an` WRITE;
/*!40000 ALTER TABLE `chi_tiet_mon_an` DISABLE KEYS */;
INSERT INTO `chi_tiet_mon_an` VALUES (1,'CÁCH LÀM BÁNH BAO - BÁNH BAO NHÂN XÁ XÍU','Ở ngày khô lạnh nhiều hơn ngày nóng, nên nhiều khi nhớ khủng khiếp cảm giác cầm cái bánh bao còn nghi ngút hơi, nhấp nháp lớp vỏ mềm xốp, rồi đến phần nhân thịt trứng bùi bùi, thơm thơm. Nhớ thế nhưng mà mãi vẫn chưa làm được, một phần vì không có thời gian, một phần khác là cảm giác làm bánh bao rất phức tạp, rồi thì thiếu nồi hấp… cho nên cứ lần lữa mãi. Đến tận gần đây, vì lâu quá rồi chẳng được ăn, thèm không chịu nổi nên có đứa mới thật sự hạ quyết tâm lăn lên mạng tìm công thức hướng dẫn cách làm bánh bao rồi lăn vào bếp làm bánh. Vì chưa làm bánh bao bao giờ nên mình có tham khảo khá nhiều công thức và kinh nghiệm của các chị em khác trên mạng, và cuối cùng quyết định thử với công thức vỏ bánh của chị Cindy Phương (mình xem tại blog của chị Huyền Phan) – là công thức đã được rất nhiều chị em thử và khen ngợi. Kết quả đúng là trên cả mong đợi. Bột nhồi xong đã cảm giác là ngon rồi. Và lúc mở nắp nồi hấp ra, thấy bánh nở phồng trắng tinh, rồi vội vàng xé một miếng và nếm thử, thấy đúng cái vị mà mình vẫn nhớ…. chao ôi là sung sướng :D :D Hóa ra làm bánh bao cũng không khó như mình nghĩ!!! Và mấy ngày gần đây lại có bữa sáng với bánh bao nóng và sữa đậu nành ^.^ Sau lần đầu tiên thành công rực rỡ, mình thử thêm một vài lần nữa để chỉnh sửa lại công thức vỏ bánh (cho bớt phức tạp hơn), và thử với một vài loại nhân khác. Đến hôm nay thì thấy rất hài lòng nên mình ghi lại công thức, kinh nghiệm và cách làm bánh bao mà mình tổng hợp được ở đây, hi vọng sẽ giúp được nhiều bạn đang muốn tự làm bánh bao, đặc biệt là các bạn ở xa nhà như mình.\n\nCách làm bánh bao nhân xá xíu\nNguyên liệu\nPhần vỏ bánh\n15 ml sữa tươi không đường\n3 gr đường\n3gr men instant\n250 gram bột mì đa dụng (hàm lượng protein 10-11%)\n120 ml sữa tươi không đường\n30 ml dầu ăn\n30 gram dầu ăn\n75 gram bột mì đa dụng\n1 lòng trắng trứng (28-30gram)\n30 – 50 gram đường\n4gram bột nở/ bột nổi (baking powder)\nPhần nhân xá xíu\n180gram thịt xá xíu\n30gram hành tây (khoảng 1/4 củ)\n1/2 thìa canh dầu ăn\n1/2 thìa canh bột năng (tapioca flour) hoặc bột ngô (corn starch)\n70ml nước\nSốt xá xíu\n1/2 thìa canh xì dầu\n1/2 thìa canh dầu hào\n1 thìa cafe mật ong (hoặc đường)\n1/2 thìa cafe dầu vừng\n1/4 thìa cafe bột ngũ vị hương\n3-4 giọt phẩm màu đỏ (không bắt buộc)\nCách làm\nVỏ bánh bao\n1. Mình dùng men instant nên không kích hoạt. Nếu các bạn dùng men khô hoặc muốn kiểm tra xem men có còn tốt hay không thì các bạn kích hoạt như hướng dẫn trong phần ở dưới.\n\n2. Hâm nóng 15ml sữa tươi (sao cho sữa hơi ấm, khoảng 30-35 độ C). Cho 1/2 thìa cafe đường vào quấy tan. Cho men nở vào, dùng đũa gỗ quấy đều. Để yên 10-15 phút. Men sẽ nở bung giống gạch cua (như trong hình dưới).\n3. Cho bột mì, sữa tươi, dầu ăn và phần sữa hòa men vào âu. Dùng thìa gỗ hoặc đũa cả quấy & trộn đến khi các nguyên liệu quyện lại thành một khối.\n\nNguyên tắc thông thường là càng nhồi kĩ và bột càng dai (đàn hồi tốt) thì thớ bánh càng dai. Tuy nhiên, bánh bao không cần thớ dai như bánh mì nên nhồi bột bánh bao khá nhẹ nhàng, không mệt như làm bánh mì, cũng không cần nhồi bằng máy. Chỉ cần bột tương đối đàn hồi và có mặt bột mịn là ổn. Nếu nhồi bằng máy, nên giảm bớt thời gian và tốc độ.\n\nTùy vào độ hút nước của bột mì mà bột có thể khô hoặc nhão. Mình làm thì bao giờ khối bột cũng rất vừa phải, không quá khô hay nhão, khi nhồi hoàn toàn không cần dùng bột áo, tay nhồi bột cũng sạch bong và khô ráo. Nếu bột quá khô (nhồi thấy nặng tay, khó nhồi) thì có thể thêm 1 chút dầu ăn hoặc nước. Nếu quá nhão, hãy thêm 5-10gram bột áo.\n\n4. Chuẩn bị một chiếc âu hay nồi lớn. Quét một lớp mỏng dầu ăn bên trong lòng âu. Cho khối bột vào, lật khối bột cho dầu ăn bao đều bên ngoài bột. Đậy nắp vung nồi hoặc phủ khăn ẩm/ bọc nilon/ cho vào túi kín (để giữ cho bột không bị khô). Ủ đến khi bột nở gấp 2.5 – 3 lần.\n\nNhiệt độ ủ tốt nhất là trong khoảng 25-38 độ C. Nên nếu là ngày mùa hè thì có thể ủ ở nhiệt độ phòng. Mùa đông trời lạnh, các bạn có thể ủ trong lò nướng bằng cách bật lò ở nhiệt độ 50 – 70 độ C trong khoảng 3-5 phút rồi tắt lò, cho âu đựng bột vào ủ. Hoặc ủ trong lò vi sóng, đặt thêm 1 bát nước sôi to để giữ ẩm và giữ nhiệt.\n\nLưu ý: không ủ trong lò quá nóng sẽ làm chết men.\n\nNhân xá xíu\n1. Hành tây, thịt xá xíu thái hạt lựu. Nên dùng loại thịt có cả nạc cả mỡ (mình dùng nạc vai). Nếu không có sẵn thịt xá xíu, các bạn có thể dùng thịt còn tươi sống (nhưng nên tăng phần sốt xá xíu để thịt đậm đà hơn), hoặc thịt quay.\n\n2. Trộn tất cả các gia vị làm sốt xá xíu với nhau, quấy đều.\n3. Đun nóng dầu ăn trong chảo. Cho hành tây vào xào thơm. Cho thịt vào đảo đều (nếu thịt đã chín rồi thì không nên đảo quá kĩ, sẽ làm thịt bị khô). Cho nước sốt xá xíu, đảo đều.\n\n4. Hòa tan bột năng hoặc bột ngô với nước lạnh. Đổ vào chảo, đảo nhanh tay. Ta sẽ có phần sốt sệt, kết dính thịt với nhau. Đổ ra bát, để nguội.\n\nNặn và hấp bánh bao\n1.Sau khi bột đã ủ đủ, dùng tay ép nhẹ cho hơi khí bên trong bột thoát ra ngoài. Cho các nguyên liệu trong phần bột thứ 2 (gồm bột mì đa dụng, lòng trắng trứng, bột nở, đường) vào. Nhồi thêm khoảng 10 – 15 phút đến khi có khối bột dẻo mịn và đàn hồi. Với công thức này, mình làm được 8 bánh, mỗi bánh có 70 – 75 gram bột & khoảng 35 – 40 gram nhân.\n\n2. Với công thức này, mình làm được 8 bánh, mỗi bánh có 70 – 75 gram bột & khoảng 35 – 40 gram nhân.\n\n3. Dùng sao sắc chia bột làm 8 phần. Chuẩn bị xửng hấp (đun sôi nước). Cắt 8 miếng giấy trắng để lót bánh (mình dùng vỏ giấy cupcake màu trắng, rất tiện).\n\n4. Vì bánh bao sẽ nở gấp rưỡi đến gấp 2, nên tùy vào độ lớn của xửng mà mỗi lần có thể hấp từ 2-4 cái bánh. Mình hấp 3 cái một lần. Cách cán bột và nặn bánh như sau:\n\n5. Vê tròn viên bột (giúp cho mặt bột mịn). Dùng lòng bàn tay ấn nhẹ cho viên bột dẹp ra, rồi cán nhẹ cho bột dàn đều thành hình tròn đường kính khoảng 6 – 7cm. Để cho bột nghỉ, thao tác tương tự với 2 viên bột còn lại.\n\nSau khi cán xong viên bột thứ 3 thì quay lại với viên bột đầu tiên. Cán mỏng phần mép bột, sao cho sau khi cán xong, viên bột có hình tròn, đường kính khoảng 8-9cm, phần mép mỏng hơn phần giữa. Việc cán hai lần này giúp cho bột có thời gian nghỉ, không bị co lại, khi gói sẽ dễ hơn.\n\n6. Bánh gói xong đặt lên các đế giấy đã chuẩn bị sẵn. Để bánh nghỉ 15 phút rồi cho vào nồi hấp trong khoảng 13 – 15 phút. Khâu hấp bánh có một số lưu ý như sau:\n\n– Để tránh cho hơi nước đọng từ nắp vung chảy xuống làm rỗ mặt bánh, các bạn có thể dùng một chiếc khăn phủ lên khay hấp bánh, rồi đậy vung. Hoặc cách tốt hơn là dùng xửng tre để hấp bánh, hơi nước được giữ lại trong nắp vung tre sẽ không làm rỗ bánh (mình phủ khăn thấy rất ổn).\n\n– Không hấp bánh quá lâu (nhiều hơn 15p với kích thước bánh như trong bài), sẽ làm cho bánh dễ bị xẹp, chai, mặt bánh nhăn nheo.\n\n7. Trong quá trình đợi hấp bánh thì tiếp tục gói các phần bột còn lại. Nếu làm nhiều bánh thì nên có khăn hoặc nilon đậy phần bột/ bánh chưa hấp, tránh cho vỏ bánh bị khô. Bánh hấp xong lấy ra khỏi nồi. Dùng nóng.\n\nBảo quản\n– Bánh bao ngon nhất là ăn ngay khi vừa hấp xong. Nếu muốn để lâu hơn, thì ngay khi bánh vừa nguội, cho bánh vào hộp hoặc túi kín, để tủ lạnh. Ngày hôm sau khi ăn thì hấp lại hoặc quay trong lò vi sóng khoảng 1 phút (tủy công suất lò và kích thước bánh). Nếu dùng lò vi sóng, phải để bánh trong âu có nắp đậy hoặc có nilon che để vỏ bánh không bị khô. Ngoài ra, có thể trữ bánh trong ngăn đá. Trước khi ăn thì rã đông trong ngăn mát rồi hấp hoặc quay lò vi sóng lại. Mình đã thử tất cả các cách bảo quản này và thấy đều ổn. Kể cả cách để bánh trong ngăn đá rồi rã đông bằng lò vi sóng, rồi hấp lại, thấy bánh vẫn rất ngon :',NULL,'2024-03-31 00:00:00','2024-03-31 00:00:00'),(2,'Yến mạch sữa chua healthy','Một chiếc bánh “thuần healthy”, gluten-free, dùng 100% bột yến mạch, nhưng vẫn cực mềm, ẩm, và thơm nức mùi chuối tươi đây ạ Bánh chuối thì không phải nói nhiều rồi, nhưng phiên bản lần này còn “khuyến mãi” thêm mùi thơm mộc mạc của yến mạch, vị thanh nhẹ và kết cấu siêu ẩm xốp từ sữa chua, và đương nhiên là cực nhiều dưỡng chất nữa cơ. Mỗi sáng chỉ cần 1 – 2 lát bánh này với cốc sữa hạt nữa là vừa đủ chất, vừa no lâu, vừa tốt cho tiêu hóa. Cách làm cực đơn giản ạ, chỉ cần trộn tất cả nguyên liệu với nhau, nướng bằng lò hay NCKD đều được cả.\n\nCách làm BÁNH CHUỐI YẾN MẠCH SỮA CHUA healthy\nNguyên liệu\n120 sữa chua\n100 gram sữa tươi\n110 gram yến mạch cán dẹt\n1 quả trứng (60 gram/quả cả vỏ)\n10 gram đường vàng\n10 gram đường nâu\n30 gram dầu ăn\n7 gram muối nở (baking soda)\nCác loại hạt rang chín, cắt nhỏ (không bắt buộc)\nCách làm\n1. Ngâm sữa chua với yến mạch trong tối thiểu 3 giờ, tốt nhất là qua đêm\n\n2. Nghiền nát chuối chín\n\n3. Trộn tất cả các nguyên liệu ướt gồm: Yến mạch ngâm sữa, trứng, đường, dầu ăn, bơ, chuối\n\n4. Rây các loại bột khô vào âu nguyên liệu ướt vào gồm: Bột yến mạch, bột quế, muối nở.\n\n5. Trộn đều tới khi hỗn hợp vừa hòa quyện, không trộn quá nhiều.\n\n6. Cuối cùng trộn thêm hạt cắt nhỏ (không bắt buộc)\n\n7. Nướng bánh (lò được làm nóng trước 15 phút)\n\n– Nướng NCKD: 150 – 160 độ C trong 50 – 60 phút (sau 1/2 thời gian kiểm tra nếu bánh xém mặt thì dùng giấy bạc để che.\n\n– Nướng bằng lò: 165 – 180 độ C trong 60 phút).\n        ',NULL,'2024-03-31 00:00:00','2024-03-31 00:00:00'),(3,'TỔNG HỢP CÁCH LÀM BÁNH TRUNG THU: BÁNH NƯỚNG VÀ BÁNH DẺO (A-Z)','Còn chưa tới Rằm tháng Bảy mà vì không khí tự làm bánh nướng, bánh dẻo năm nay quá rộn ràng nên cảm giác như Tết Trung Thu đã gần lắm rồi. Ngồi điểm lại cũng thấy Savoury Days đã có hơn 20 bài viết về chủ đề bánh trung thu, nên mình viết bài này để tổng hợp tất cả các bài viết hiện có tại SD về cách làm bánh trung thu, bao gồm cách làm cụ thể, các thất bại thường gặp và cách giải quyết, các ghi chú để tránh thất bại… để các bạn tham khảo được tiện hơn (nếu không cần xem các phần giới thiệu cụ thể, bạn có thể tham khảo trực tiếp mục lục tổng hợp link các bài viết về cách làm bánh trung thu ở cuối bài viết này nhé).\n\nBánh trung thu đậm vị Việt Nam\nNguyên liệu\nChuẩn bị\n– Làm trứng muối thời gian muối tối thiểu 20 – 30 ngày. Có thể muối nhiều trứng trong một lần. Sau khi trứng đủ chín, đập lấy lòng đỏ và xử lí trứng như cách làm trứng muối trong bài viết này. Lòng đỏ này có thể bảo quản đông lạnh trong nhiều tuần. Rã đông trong ngăn mát tủ lạnh và dùng bình thường.\nLàm rượu Mai Quế Lộ: rượu Mai Quế Lộ làm cho nhân thập cẩm thơm ngon hơn nhiều, thời gian ngâm rượu tối thiểu là 2 – 3 tuần, nhưng càng để lâu rượu càng ngon hơn.\nNấu nước đường bánh nướng: cần chuẩn bị trước khi làm bánh tối thiểu 10 – 14 ngày, nước đường càng để lâu sẽ cho vỏ bánh có màu càng sậm đẹp, vỏ mềm dẻo dễ cán, vị sau khi nướng cũng ngon hơn.\nMua khuôn bánh và các dụng cụ khác: Khoảng 2 – 2.5 tháng trước Trung thu tầm ở Việt Nam bắt đầu có nhiều địa chỉ bán khuôn. Nên mua từ thời điểm này vì có nhiều lựa chọn mẫu mã đẹp và giá cũng rẻ hơn so với tầm sát trung thu.\nA. Bánh nướng\nNhân bánh:\nNhân đậu xanh\nNhân sen nhuyễn\nNhân đậu đỏ\nNhân trà xanh (biến tấu từ nhân đậu xanh)\nNhân thập cẩm\nNhân mè đen\nNhân sầu riêng\nNhân sữa dừa\nNhân chanh leo\nTrong số các loại nhân trên, nhân đậu xanh là loại nhân nhuyễn cơ bản nhất. Cách sên nhân đậu xanh có thể áp dụng tương tự cho nhiều loại nhân nhuyễn khác như sen, đậu đỏ… Ngoài ra, với “nền” là nhân đậu xanh, các bạn có thể pha thêm các loại mùi vị như trà xanh, lá dứa, chocolate… hoặc các loại hạt (dưa, bí, vừng) để tạo ra các loại nhân mới.\n\nThời gian sên nhân trung bình khoảng 1 – 2 giờ đồng hồ (không tính thời gian nấu/ hấp và xay). Mặc dù có một số cách sên khác dùng lò vi sóng hoặc trộn thêm bột… giúp rút ngắn thời gian này. Nhưng theo kinh nghiệm của các bậc tiền bối làm nghề lâu năm với bánh trung thu thì sên nhân càng kĩ sẽ giúp cho nhân để được càng lâu (có thể để cả chục ngày mà không hỏng).\n\nLàm vỏ bánh, nướng, bảo quản:\n1. Cách làm bánh nướng với công thức vỏ bánh cơ bản, cách đóng bánh, quết trứng mặt bánh được viết trong bài cách làm bánh nướng trung thu. Trong bài viết mình cũng có hướng dẫn cách điều chỉnh công thức để có vỏ bánh mềm hay khô giòn như ý muốn.\n\n2. Một số vấn đề thường gặp với vỏ bánh nướng là:\n\nVỏ bánh quá cứng và không mềm được\nVỏ bánh bị mất nét trong hoặc sau khi nướng\nVỏ bánh không giữ được màu (nếu dùng màu tự nhiên)\nVỏ bánh bị rạn, vỡ\nVỏ bánh quá cứng và không mềm được\nB. Bánh dẻo\nHiện tại đã có cách làm bánh dẻo lai giữa bánh dẻo truyền thống và bánh dẻo da tuyết của Singapore. Bánh làm theo cách này có mùi vị dẻo dai giống như bánh dẻo truyền thống nhưng không quá ngọt như bánh truyền thống, và phải bảo quản lạnh giống bánh của Singapore.\n\nĐa phần các loại nhân bánh nướng đều có thể dùng làm nhân bánh dẻo, nên với phần nhân, các bạn xem trong mục bánh nướng nhé.\n\nNguyên liệu\n300g đường trắng (đường tinh luyện)\n5ml nước cốt chanh\n300ml nước\n392ml nước đường bánh dẻo\n6ml nước hoa bưởi\n180g đậu xanh cà vỏ\n70-80ml dầu dừa hoặc dầu ăn\n9g bột mì đa dụng\n200g bột bánh dẻo Bắc (bột nếp rang)\nPhần vỏ bánh\n1.Đun sôi 150ml nước cùng 150gr đường, đun đến khi đường tan ra thì tắt bếp. Cho nước đường ra tô, sau đó cho từ từ bột bánh dẻo vào nước đường rồi dùng dụng cụ đánh trứng để trộn bột cho hòa quyện.\n\n2. Đến khi bột mịn và dẻo là đạt, dùng màng bọc thực phẩm bao lại và để bột nghỉ trong vòng 30 phút.\n\n3. Phủ một ít bột bánh dư lên thớt và cho bột dẻo lên trên. Dùng tay nhào kỹ cho đến khi bột thành khối dẻo mịn và không còn dính tay là được.\n\nPhần nhân bánh\n1.Cho 50gr lạp xưởng cắt hạt lựu, 50gr chà bông, 80g hạt điều đã xay nhỏ, 70g mứt bí đao, 30g mè trắng, lá chanh cắt nhỏ, 30gr mỡ đường vào tô sạch và trộn đều.\n\n2.Tiếp theo cho vào 40gr nước đường bánh nướng để tạo độ ngọt cho nhân và 10gr rượu mai quế lộ rồi trộn đều. Sau đó, cho từ từ 20gr bột bánh dẻo để tạo độ kết dính cho nhân\nTạo thân và thành phẩm\nTrộn đều hỗn hợp nước đường, nước hoa bưởi, rồi thêm từ từ bột bánh dẻo và khuấy nhanh tay. Tiếp đó, xoa 1 lớp bột mỏng lên bột và nhào đều tay cho đến khi bột dẻo và mịn là đạt. Sau đó, bạn dùng màng bọc thực phẩm bao lại và ủ trong vòng 30 phút.\n\nCuối cùng, bạn lấy bột ra nhào lại một lần nữa rồi chia bột thành các phần bằng nhau.\n\nBạn lấy một phần bột dùng chày cán bột thành hình tròn sao cho phần mép mỏng hơn phía trong. Cho phần nhân vào giữa vừa bọc vỏ vừa miết chặt sao cho vỏ bao sát nhân. Sau đó, dính các mép bột vào với nhau và vê bột 2 - 3 vòng.\n\nThêm một chút dầu ăn hoặc bột mì vào khuôn, sau đó cho bột vào dùng tay ấn nhẹ nhàng để bột dàn đều trong khuôn. Đặt bánh xuống mặt phẳng dùng tay nhấn mạnh tay cầm để lấy ra khỏi khuôn.\n        ',NULL,'2024-03-31 00:00:00','2024-03-31 00:00:00'),(4,'Burnt CheseCake mềm chảy','Một loại bánh có thể dễ tới mức nào? Đó là cho tất cả nguyên liệu vào máy xay sinh tố, xay mịn, đổ vào khuôn rồi cho vào lò Bạn không đọc nhầm đâu ạ, món cheesecake nướng cháy trứ danh này thực sự có thể làm đơn giản như vậy đấy, nhà bạn nào chỉ có NCKD cũng bon chen thoải mái nha. Công thức burnt cheesecake thì mình đã có rồi, nhưng phiên bản hôm nay là kiểu bên ngoài thì mềm, ở giữa thì hơi chảy, ăn vào tan ngay trong miệng, cực kì hợp cho những ai thích vị phomai nhưng không ăn được các món quá ngấy.\n\nCách làm BUNRT CHEESECAKE MỀM CHẢY\nNguyên liệu\n200 gram kem phomai (cream cheese), để mềm ở nhiệt độ phòng\n1 thìa cafe nước cốt chanh tươi (không bắt buộc)\n20 gram sữa đặc\n40 gram đường xay + 1 nhúm muối nhỏ\n250 gram kem tươi\n5 lòng đỏ trứng gà\n1 thìa cafe tinh chất vani\nCách làm\n1. Chuẩn bị:\n\n- Làm nóng NCKD ở 190 độ C trước 10 phút. Nếu bạn dùng lò thì làm nóng ở khoảng 210 - 220 độ C\n\n- Lót giấy nến vào khuôn tròn 16cm.\n\n2. Cho toàn bộ nguyên liệu vào máy xay sinh tố, xay nhuyễn mịn (sau khi xay xong có thể lọc qua rây nếu chưa chắc chắn).\n\n3. Nướng\n\n- Với NCKD: Nướng 190 - 200 độ C trong 7 - 10 phút, tới khi thấy mặt bánh đã cháy xém thì dùng giấy bạc che mặt và nướng thêm khoảng 15 - 18 phút.\n\n- Với lò nướng: Nướng 210 - 220 độ C ở rack giữa trong khoảng 18 - 20 phút.\n\n- Kiểm tra bánh chín: Bánh nướng càng lâu sẽ càng khô hơn. Nếu bạn muốn ăn ở giữ bánh mềm chảy thì như video thì kiểm tra bằng cách lắc khuôn bánh, nếu viền xung quanh đã khô không di chuyển, còn khoảng giữa bánh vẫn rung rinh là được (phần còn rung rinh này sẽ cóđường kính khoảng 5cm chính giữa bánh). Không nên nướng bánh non quá, khi nguội bánh sẽ không định hình được và chảy lỏng.\n\n- Nếu bạn muốn ăn bánh chín hẳn và khô ráo thì nướng khoảng 25 - 28 phút, tới khi lắc thấy bánh không còn rung rinh.\n\n4. Sau khi nướng, để bánh nguội hoàn toàn rồi để lạnh tối thiểu 4 giờ trước khi ăn. Bảo quản bánh trong ngăn mát và dùng trong 3 - 4 ngày.\n        ',NULL,'2024-03-31 00:00:00','2024-03-31 00:00:00'),(5,'Bún cá Hà Nội chuẩn bị Bắc','Bún cá là món ăn quen thuộc của người Hà Nội với hương vị đậm đà ngon ngọt, hấp dẫn đặc trưng. Khác với bún cá ở các địa phương khác bún cá Hà Nội mang những nét bản sắt riêng với công thức độc đáo, chắc chắn sẽ mang lại cho thực khách một trải nghiệm độc đáo, vô cùng mới là chưa từng có ở bất kì món ăn nào khác.\n\nCách nấu bún cá Hà Nội thơm ngon chuẩn vị không tanh ăn là ghiền\nNguyên liệu\nCá rô phi-800 gr\nBún tươi-500 gr\nXương heo-400 gr\nĐậu hũ non\nHành khô\nMắm tôm\nNước cốt chanh\nBột nghệ\nRau ăn kèm\nNên chọn cá rô phi sống thịt mới ngọt và ngon, không bỡ.Cá phải còn nguyên vẹn, không trầy xước, tróc vảy.\nCách chế biến Bún cá Hà Nội\nNấu nước hầm xương\nCá rô phi mua về lọc phần thịt và xương cá để riêng.\n\nDùng nồi đun sôi 300ml nước, sau đó cho xương heo vào chần sơ qua khoảng 2 phút đến khi phần máu trong xương ra hết là được.\n\nTiếp theo ta tắt bếp và rửa sạch phần xương vừa chần.\n\nĐun sôi nồi 300ml nước, cho đầu và xương cá vào chần sơ qua tầm 1 phút đến khi cá hết bọt.\n\nSau đó, lấy phần đầu và xương cá vừa chần ra rửa sạch.\n\nĐổ 1.3 - 1.5 lít nước vào nồi. Tiếp tục cho phần xương heo, đầu và xương cá vừa chần phía trên vào nồi để ninh cho ngọt nước.\n\nSơ chế các nguyên liệu\nĐặt dao 1 góc chéo 30 - 45 độ để thái lát thịt cá rô phi thành từng khúc tầm 2 - 2.5 cm.\n\nCà chua cắt thành từng miếng như hình múi cau, hành tím và rau sống ăn kèm thái nhỏ.\n\nHành lá cắt phần cuộn để riêng, phần lá thái nhỏ. Phần cuộn hành chẻ ra làm bốn sau đó ngâm ngay vào nước để giữ được sợi hành cong.\n\nRau thì là cắt thành từng khúc từ 3 - 4 cm. Rau mùi và tía tô để nguyên.\n\nCắt đôi miếng đậu hũ non lớn rồi từ đó cắt thành những miếng đậu hũ nhỏ.\nƯớp cá\nCho 1/2 muỗng nước cốt chanh vào phần cá vừa thái lát giúp cá chiên xong cứng và giòn hơn, không bị gãy.\n\nTiếp theo cho 1/2 muỗng mắm tôm kèm 1 muỗng cà phê bột ngọt, 1 muỗng cà phê bột nghệ vào phần cá trên rồi trộn thật kỹ cho cá ngấm đều gia vị. Ướp cá khoảng 15-20 phút.\n\nChiên đậu hũ và cá\nCho dầu ăn vào chảo đun đến khi dầu sôi ta cho đậu hũ non vừa cắt thành từng miếng nhỏ vào chiên. Chiên đến khi đậu vàng giòn thì gắp ra đĩa.\n\nPhần cá sau khi ướp xong cho vào một ít bột chiên giòn phủ đều trên bề mặt cá để sau khi chiên xong cá có độ giòn vừa phải.\n\nCho 200ml dầu ăn vào chảo, đun đến khi chảo nóng ta thả cá vô chiên, bạn nên chiên cá ngập trong dầu. Chiên đến khi vàng thì lật sang mặt sau để cá được chiên vàng đều sau đó gắp ra đĩa\n\nMẹo nhỏ: Khi cho cá vào chiên dùng khăn giấy thấm hết nước ở cá để tránh khi chiên bị dầu bắn nhé!\nNấu nước lèo\nTrước tiên ta phi hành tím cho thơm rồi cho cà chua và một ít bột nghệ vào đảo sơ qua đến khi cà chua hơi dính thì chuẩn bị cho vào nồi nước dùng.\n\nTa gắp đầu cá, xương cá và xương heo ra khỏi nồi nước dùng. Sau đó cho cà chua, hành vào nồi và nêm muối, bột ngọt, nước cốt chanh sao cho vừa ăn.\n        ',NULL,'2024-03-31 00:00:00','2024-03-31 00:00:00'),(6,'CHÂN GÀ NGÂM SẢ ỚT CHUA CAY, ĐẬM VỊ','Món ăn vặt quốc dân cuối cùng cũng đổ bộ SD đây ạaaa!!!! Chân gà giòn sần sật, chua chua, ngọt ngọt, cay cay lại thơm mùi sả – tắc, dù ăn vặt hay để làm mồi nhậu cho cả nhà uống bia tối mùa hè thì đều hết xảy.\n\nMình chính xác là “đạo” chân gà, nhiều khi thèm lắm nhưng chẳng dám ăn ngoài hàng vì sợ họ mua chân gà không đảm bảo, rồi sơ chế không sạch, khi ăn chân gà có mùi không thơm, giờ có công thức rồi thì làm tại nhà vừa nhanh lại ngon – bổ – rẻ, cả nhà trẻ nhỏ người lớn ăn đều yên tâm ? ❤️Nhắn nhắn: Trong 2 ngày duy nhất (06 – 08/06), tất cả khóa học làm bánh Online của Savoury Days được ưu đãi 20% dành riêng cho học viên mới. Bạn liên hệ fanpage để nhận thông tin cụ thể nha ?\n\nCách làm CHÂN GÀ NGÂM SẢ ỚT\nNguyên liệu\nA.Nước ngâm chân gà\n1,5 lít nước\n230 gram nước mắm\n300 gram đường\n60 gram nước quất (tắc) tươi\n1 thìa canh bột ớt Hàn Quốc (không bắt buộc)\nLưu ý: Bột ớt Hàn Quốc sẽ giúp cho chân gà có màu đỏ đẹp mà không bị quá cay, bạn có thể dùng bột ớt Việt Nam nhưng chỉ nên dùng khoảng 1 thìa cà phê nếu không ăn được quá cay nhé.\n\n\nB. Chân gà ngâm sả ớt:\n1kg chân gà rút xương\n5-6 củ sả, cắt nhỏ\n10 quả quất, cắt dọc\nỚt tươi (không bắt buộc)\nNguyên liệu sơ chế chân gà:\n3-4 củ sả\nGừng, muối, rượu trắng\n\nCách làm\n1. Làm nước ngâm chân gà: Cho nước, nước mắm, đường, nước quất tươi và bột ớt vào nồi, khuấy đều ở lửa vừa-lớn cho đường tan hết, đun tới khi hỗn hợp sôi, tiếp tục đun sôi khoảng 1-2 phút thì tắt bếp, để nguội hoàn toàn.\n\n2. Bóp sạch chân gà với rượu, muối, sả và gừng đập dập để khử mùi, rửa lại thêm 3-4 lần nước tới khi chân gà sạch hoàn toàn.\n\n3. Đun khoảng 2 lít nước để luộc chân gà, thêm sả và gừng đập dập. Khi nước đã sôi, cho chân gà vào luộc 20 phút ở lửa vừa-lớn.\n\n4. Chuẩn bị 1 bát nước đá lạnh. Khi chân gà đã chín, rửa lại với nước cho sạch, thả chân gà vào ngâm trong bát nước đá lạnh trong vòng 20 phút để giúp chân gà được giòn.\n\n5. Đổ bỏ nước đá lạnh, đợi chân gà ráo nước thì cho vào hộp sạch để ngâm, thêm sả, quất và ớt tươi.\n\n6. Khi nước ngâm chân gà đã nguội, đổ vào hộp chân gà, trộn đều và đóng kín hộp, ngâm chân gà tối thiểu 6 tiếng là có thể dùng được. Chân gà sẽ ngon hơn khi được ngâm từ 1-2 ngày. Bảo quản trong tủ lạnh, dùng trong vòng 1 tuần.\n        ',NULL,'2024-03-31 00:00:00','2024-03-31 00:00:00');
/*!40000 ALTER TABLE `chi_tiet_mon_an` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_ctma`
--

DROP TABLE IF EXISTS `image_ctma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_ctma` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_CTMA` int DEFAULT NULL,
  `IMAGE` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_CTMA` (`ID_CTMA`),
  CONSTRAINT `image_ctma_ibfk_1` FOREIGN KEY (`ID_CTMA`) REFERENCES `chi_tiet_mon_an` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_ctma`
--

LOCK TABLES `image_ctma` WRITE;
/*!40000 ALTER TABLE `image_ctma` DISABLE KEYS */;
INSERT INTO `image_ctma` VALUES (1,1,'https://static-images.vnncdn.net/files/publish/cach-lam-banh-bao-nhan-thit-don-gian-tai-nha-2f7c6f81c863468bbf28bd23f7b04b68.jpg'),(2,1,'https://static-images.vnncdn.net/files/publish/cach-lam-banh-bao-nhan-thit-don-gian-tai-nha-2f7c6f81c863468bbf28bd23f7b04b68.jpg'),(3,1,'http://farm4.staticflickr.com/3777/9896872445_850a51fd5a.jpg'),(4,1,'https://cdn.tgdd.vn/2021/11/CookDish/cach-lam-banh-bao-nhan-thit-mien-thom-ngon-de-lam-avt-1200x676.jpg'),(5,2,'https://cdn.tgdd.vn/Files/2019/09/29/1203269/muon-giam-can-nhanh-hoc-ngay-cach-pha-bot-yen-mach-uong-nay-201909292313063193.jpg'),(6,2,'https://thanhnien.mediacdn.vn/uploaded/minhnguyet/2017_02_06/lamdep6_ESKS.jpg?width=500'),(7,3,'https://statics.vinpearl.com/banh-trung-thu-chay-1_1687421324.jpg'),(8,3,'https://cdn.tgdd.vn/2020/07/CookRecipe/Avatar/trung-muoi-uot-thumbnail.jpg'),(9,3,'https://cdn.tgdd.vn/Files/2022/08/18/1456969/6-cach-lam-banh-trung-thu-nhan-trung-muoi-de-lam-tai-nha-202208180023402298.jpg'),(10,3,'https://i-giadinh.vnecdn.net/2022/09/06/Buoc-6-Thanh-pham-1-9352-1662455241.jpg'),(11,3,'https://media1.nguoiduatin.vn/media/ha-thi-kim-dung/2019/09/04/cach-lam-banh-trung-thu-deo-6.jpg'),(12,3,'https://cdn.tgdd.vn/2020/08/CookProduct/1260-1200x676-54.jpg'),(13,4,'/image/cakememchay.jpg'),(14,4,'/image/cakemem.jpg'),(15,5,'https://cdn.tgdd.vn/Files/2021/09/11/1381884/cach-nau-bun-ca-ha-noi-thom-ngon-chuan-vi-202109111452323215.jpg'),(16,5,'https://cdn.tgdd.vn/Files/2020/04/03/1246339/cach-nau-bun-ca-ha-noi-thom-ngon-chuan-vi-khong-ta-1.jpg'),(17,5,'https://cdn.tgdd.vn/Files/2017/08/14/1012860/4-meo-giup-dau-hu-chien-vang-uom-gion-rum-de-ca-tieng-van-gion-202206031650196014.jpg'),(18,5,'https://vnn-imgs-a1.vgcloud.vn/danviet.mediacdn.vn/2020/8/13/logo-11710526233855617347979162387833690213678981n-15972334754091746940814-crop-1597251664646975542178.jpg'),(19,6,'https://i.ytimg.com/vi/6sqv4rrUA2g/maxresdefault.jpg'),(20,6,'https://cdn.eva.vn/upload/3-2023/images/2023-07-03/cach-lam-chan-ga-sa-tac-an-lien-gion-ngon-khong-bi-nhot-dang-cach-lam-chan-ga-sa-tac-eva-vn-012-1675938155-437--1688368917-452-width780height585.jpg'),(21,6,'https://daotaobeptruong.vn/wp-content/uploads/2020/03/cach-lam-chan-ga-ngam-sa-tac-ngon.jpg'),(22,6,'https://cdn.tgdd.vn/Files/2020/03/20/1243308/lam-ngay-chan-ga-ngam-sa-tac-sieu-ngon-sieu-de-cho-ngay-cuoi-tuan-202112201408076048.jpg');
/*!40000 ALTER TABLE `image_ctma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_ctmeo`
--

DROP TABLE IF EXISTS `image_ctmeo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_ctmeo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_CTMEO` int DEFAULT NULL,
  `IMAGE` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_CTMEO` (`ID_CTMEO`),
  CONSTRAINT `image_ctmeo_ibfk_1` FOREIGN KEY (`ID_CTMEO`) REFERENCES `chi_tiet_meo` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_ctmeo`
--

LOCK TABLES `image_ctmeo` WRITE;
/*!40000 ALTER TABLE `image_ctmeo` DISABLE KEYS */;
INSERT INTO `image_ctmeo` VALUES (1,1,'/image/6skillslambep/bokho.png'),(2,1,'/image/6skillslambep/cachien.jpg'),(3,1,'/image/6skillslambep/rauxao.png'),(4,1,'/image/6skillslambep/casong.jpg'),(5,1,'/image/6skillslambep/ruou.png'),(6,1,'/image/6skillslambep/cakho.png'),(7,2,'/image/10bikipchonthucphamtuoi/thitga.jpg'),(8,2,'/image/10bikipchonthucphamtuoi/thitbo_heo.jpg'),(9,2,'/image/10bikipchonthucphamtuoi/ca.jpg'),(10,2,'/image/10bikipchonthucphamtuoi/trungga.jpg'),(11,2,'/image/10bikipchonthucphamtuoi/cachua.jpg'),(12,2,'/image/10bikipchonthucphamtuoi/rauthom.jpg'),(13,2,'/image/10bikipchonthucphamtuoi/dua.jpg'),(14,2,'/image/10bikipchonthucphamtuoi/dautay.jpg'),(15,2,'/image/10bikipchonthucphamtuoi/sua.jpg'),(16,2,'/image/10bikipchonthucphamtuoi/matong.jpg'),(17,3,'/image/lamsachamdunnuoc/1.jpg'),(18,3,'/image/lamsachamdunnuoc/2.jpg'),(19,3,'/image/lamsachamdunnuoc/3.jpg'),(20,3,'/image/lamsachamdunnuoc/4.jpg'),(21,3,'/image/lamsachamdunnuoc/5.jpg'),(22,3,'/image/lamsachamdunnuoc/6.jpg'),(23,3,'/image/lamsachamdunnuoc/7.jpg'),(24,3,'/image/lamsachamdunnuoc/8.jpg'),(25,4,'/image/4meobienthitdaithanhthitmem/1.jpg'),(26,5,'/image/6luuychonguoimoibatdau/MCIM02007674_FR10-KL-L1-6CookingTips-Prep.img'),(27,5,'/image/6luuychonguoimoibatdau/MCIM02007677_FR10-KL-R1-6CookingTips-PreHeat.webp'),(28,5,'/image/6luuychonguoimoibatdau/MCIM02007675_FR10-KL-L2-6CookingTips-SizeMAtters.webp'),(29,5,'/image/6luuychonguoimoibatdau/MCIM02007678_FR10-KL-R2-6CookingTips-OverMixing.webp'),(30,5,'/image/6luuychonguoimoibatdau/MCIM02007676_FR10-KL-L3-6CookingTips-Keeptasting.webp'),(31,5,'/image/6luuychonguoimoibatdau/MCIM02007679_FR10-KL-R3-6CookingTips-Garlic.webp'),(32,6,'/image/Nauanvoingucoc/MCIM02007763_FR14-KL-L1-CookingWithGrains-Amaranth.webp'),(33,6,'/image/Nauanvoingucoc/MCIM02007767_FR14-KL-R1-CookingWithGrains-Quinoa.webp'),(34,6,'/image/Nauanvoingucoc/MCIM02007764_FR14-KL-L2-CookingWithGrains-Barley.webp'),(35,6,'/image/Nauanvoingucoc/MCIM02007768_FR14-KL-R2-CookingWithGrains-Spelt.webp'),(36,6,'/image/Nauanvoingucoc/MCIM02007765_FR14-KL-L3-CookingWithGrains-BrownRice.webp'),(37,6,'/image/Nauanvoingucoc/MCIM02007769_FR14-KL-R3-CookingWithGrains-Millet.webp');
/*!40000 ALTER TABLE `image_ctmeo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meo`
--

DROP TABLE IF EXISTS `meo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(150) DEFAULT NULL,
  `NOI_DUNG` varchar(150) DEFAULT NULL,
  `IMAGE` varchar(500) DEFAULT NULL,
  `LINK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meo`
--

LOCK TABLES `meo` WRITE;
/*!40000 ALTER TABLE `meo` DISABLE KEYS */;
INSERT INTO `meo` VALUES (1,'6 skills trong căn bếp để có bữa ăn ngon','Chỉ cần nắm vững những kỹ năng này, trình nấu nướng của bạn sẽ được nâng cấp, dù thực tế bạn không quá thích vào bếp hay nấu ăn giỏi.','/image/6skillslambep/bokho.png','/MeoVat/6-Skills-lam-bep'),(2,'10 bí kíp chọn thực phẩm tươi ngon','Với 10 mẹo nhận biết dưới đây, bạn dễ dàng loại bỏ những loại thực phẩm không an toàn','/image/10bikipchonthucphamtuoi/trungga.jpg','/MeoVat/10-bi-kip-chon-thuc-pham-tuoi'),(3,'Cách làm sạch ấm đun nước điện','Tần suất làm sạch sẽ phụ thuộc vào tần suất sử dụng ấm nước của bạn.Bên ngoài nên được lau loại bỏ các vết ố và bẩn tung tóe ít nhất một lần một tuần','/image/lamsachamdunnuoc/1.jpg','/MeoVat/Cach-lam-sang-am-dun-nuoc-dien'),(4,'9 mẹo nấu ăn hữu ích bạn có thể học lỏm từ đầu bếp nhà hàng','Cắt lát chanh càng mỏng, bạn sẽ cắt được lát chanh càng chua','/image/9meocooking/meo3-6308-1506331373.jpg','/MeoVat/9-meo-nau-an-huu-ich'),(5,'6 lưu ý nấu ăn đơn giản','Cho người đầu bếp mới bắt đầu, 6 sai lầm nấu ăn phổ biến mà mọi người thường mắc phải và cách mà bạn có thể tránh chúng','/image/6luuychonguoimoibatdau/MCIM02007674_FR10-KL-L1-6CookingTips-Prep.img','/MeoVat/6-luu-y-cho-nguoi-moi-bat-dau'),(6,'Hướng dẫn nấu ăn cùng các loại ngũ cốc','Nếu bạn muốn bổ sung thêm nhiều ngũ cốc nguyên cám vào chế độ ăn uống thì bạn có thể tìm hiểu hướng dẫn nấu ăn với ngũ cốc đơn giản này','/image/Nauanvoingucoc/MCIM02007763_FR14-KL-L1-CookingWithGrains-Amaranth.webp','/MeoVat/Nau-an-voi-ngu-coc'),(7,'4 mẹo biến thịt dai thành mềm mại','Những thủ thuật này được các đầu bếp có thâm niên đúc kết ra, có thể chữa thịt dai trở nên mềm mại, ngon tuyệt','/image/4meobienthitdaithanhthitmem/1.jpg','/MeoVat/4-meo-bien-thit-dai-thanh-thit-mem'),(8,'Công thức nấu ăn và cháo ngon của đầu bếp Singapore','Cho gạo đã vo sạch để qua đêm sẽ giúp nấu cơm hoặc cháo đỡ dính và nhanh hơn','/image/MeonaucomvachaoSGP/3.jpg','/MeoVat/Cong-thuc-nau-chao-cua-dau-bep-Singapore');
/*!40000 ALTER TABLE `meo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mon_an`
--

DROP TABLE IF EXISTS `mon_an`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mon_an` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(150) DEFAULT NULL,
  `NOI_DUNG` varchar(500) DEFAULT NULL,
  `IMAGE` varchar(500) DEFAULT NULL,
  `THE_LOAI` varchar(20) DEFAULT NULL,
  `KT_CHE_BIEN` varchar(20) DEFAULT NULL,
  `LINK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mon_an`
--

LOCK TABLES `mon_an` WRITE;
/*!40000 ALTER TABLE `mon_an` DISABLE KEYS */;
INSERT INTO `mon_an` VALUES (81,'Sandwich thịt nguội','Lớp bánh mì vàng giọn, ăn kèm với thịt nguội đậm đà mềm mại.','https://assets.bonappetit.com/photos/62b1f659a38f8b1339b88af8/16:9/w_640,c_limit/20220615-0622-sandwiches-1746-final%20(1).jpg','Đồ ăn sáng','Nướng',NULL),(82,'Bánh quy và xúc xích mặn','Một sự kết hợp táo bạo! Bạn nghĩ sao?','https://assets.bonappetit.com/photos/64fb75ef5d66b46cd549fcd3/16:9/w_640,c_limit/20230906-WEB-0519.jpg','Đồ ăn sáng','Xào',NULL),(83,'Cơm chiên gừng','Không cần quá nhiều nguyên liệu. Chỉ cần gừng!','https://assets.bonappetit.com/photos/65ca6bc164786bb14f43d34d/16:9/w_640,c_limit/20240130-WEB-0241.jpg','Đồ ăn sáng','Chiên',NULL),(84,'Ức gà kẹp thịt nguội','Chỉ với ức gà, thịt nguội, phô mai lát, có ngay bữa sáng ngon lành.','https://assets.bonappetit.com/photos/5e2f3838ac861400082fcca3/16:9/w_640,c_limit/0220-Chicken-Cordon-Bleu-Lede.jpg','Đồ ăn sáng','Nướng',NULL),(85,'Mức táo ngọt ngào','Mức táo ngọt ngào cho bữa sáng.','https://assets.bonappetit.com/photos/57d199a92e9e46792492c45a/16:9/w_640,c_limit/apple-butter.jpg','Đồ ăn sáng',NULL,NULL),(86,'Bánh mì nướng kiểu Ấn','Điều làm cho những chiếc bánh mì sữa chua thơm này trở nên gây nghiện là chhaunk, một hỗn hợp gia vị và thảo mộc chiên giòn cũng là lớp phủ tuyệt vời cho bít tết nướng hoặc nachos.','https://assets.bonappetit.com/photos/5c8a8e4c18e26d32b7735c8f/16:9/w_640,c_limit/Dahi-Toast.jpg','Đồ ăn sáng','Nướng',NULL),(87,'Phở bò nóng hổi','Sự kết hợp giữa nước phở đậm đà và thịt bò mềm mại.','https://assets.bonappetit.com/photos/601185e9e0a941bb1291e9e2/16:9/w_640,c_limit/GoLive-Beef-Pho.jpg','Đồ ăn sáng',NULL,NULL),(88,'Trà cam','Trà cam cho bữa sáng tao nhã','https://assets.bonappetit.com/photos/5dcc733991b5830008dc1410/16:9/w_640,c_limit/1219-Elena-Apres-Amaro-Hot-Toddy.jpg','Đồ ăn sáng','Thức Uống',NULL),(89,'Sandwich kẹp bơ','Đơn giản, ngon lành cho bữa sáng.','https://assets.bonappetit.com/photos/62b1f8f4ee3de8c374121bac/16:9/w_640,c_limit/20220615-0622-sandwiches-1779-final.jpg','Đồ ăn sáng',NULL,NULL),(90,'Pancake chuối','Đơn giản, ngon lành cho bữa sáng.','https://assets.bonappetit.com/photos/61defe765f99da4446b8a522/16:9/w_640,c_limit/Vegan_Banana_Oatmeal_Pancake_16x9.jpg','Đồ ăn sáng','Nướng',NULL),(91,'A Better Aperol Cocktail','What’s the Naked and Famous? A Better Aperol Cocktail','https://assets.bonappetit.com/photos/6488c77dee399ec121b43195/16:9/w_640,c_limit/20230530-ITS-24599-LEDE.jpg','Đồ ăn sáng','Thức Uống',NULL),(92,'Blueberry xay','Ngọt mát cho buổi trưa oi bức.','https://assets.bonappetit.com/photos/63a1e0b3c37a58ec105a304e/16:9/w_640,c_limit/1220-smoothie-blueberry-lede.jpg','Đồ ăn trưa','Thức Uống',NULL),(93,'Súp miso Nhật Bản','Đơn giản nhưng không tầm thường.','https://assets.bonappetit.com/photos/58a6240fa9bc8a7a3f1cfada/16:9/w_640,c_limit/classic-miso-soup.jpg','Đồ ăn trưa',NULL,NULL),(94,'Som tum Thai','Món gỏi đu đủ kiểu Thái thích hợp cho mùa hè.','https://assets.bonappetit.com/photos/644819df047251c7e5ee250b/16:9/w_640,c_limit/042523-green-papaya-salad-lede.jpg','Đồ ăn trưa','Trộn',NULL),(95,'Canh kim chi Hàn Quốc','Đậm đà và cay nồng!','https://assets.bonappetit.com/photos/5c5b6d2dd7da442cb562476c/16:9/w_640,c_limit/BA030119korean01.jpg','Đồ ăn trưa','Hầm',NULL),(96,'Gà nướng kèm nước cốt dừa','Đậm đà và cay nồng!','https://assets.bonappetit.com/photos/5d4ddd5feed18100091d2a56/16:9/w_640,c_limit/BA-0919-Coconut-Milk-Chicken-Playbook.jpg','Đồ ăn trưa','Nướng',NULL),(97,'Cà ri gà kiểu Thái','Dễ dàng, ngon lành.','https://assets.bonappetit.com/photos/57ae0a62f1c801a1038bcf17/16:9/w_640,c_limit/thai-chicken-curry.jpg','Đồ ăn trưa','Hầm',NULL),(98,'Cà ri gà xanh','Cay nồng, chua ngọt.','https://assets.bonappetit.com/photos/57b0d8631b334044149764a5/16:9/w_640,c_limit/thai-green-chicken-curry-940.jpg','Đồ ăn trưa','Hầm',NULL),(99,'Burger chay','Dễ dàng, ngon lành.','https://assets.bonappetit.com/photos/5b1981ee9731de29fe912023/16:9/w_640,c_limit/easiest-ever-grilled-veggie-burgers.jpg','Đồ ăn trưa',NULL,NULL),(100,'Ramen gà','Dễ dàng, ngon lành.','https://assets.bonappetit.com/photos/6437281f4c497b684ece7ff3/16:9/w_640,c_limit/Recipe_Beauty_Gingery_Chicken_Ramen_0350.jpg','Đồ ăn trưa',NULL,NULL);
/*!40000 ALTER TABLE `mon_an` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phan_hoi`
--

DROP TABLE IF EXISTS `phan_hoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phan_hoi` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(150) DEFAULT NULL,
  `NOI_DUNG` varchar(500) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `USER_ID` int DEFAULT NULL,
  `EMAIL` varchar(150) DEFAULT NULL,
  `SUBJECT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `USER_ID` (`USER_ID`),
  CONSTRAINT `phan_hoi_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phan_hoi`
--

LOCK TABLES `phan_hoi` WRITE;
/*!40000 ALTER TABLE `phan_hoi` DISABLE KEYS */;
/*!40000 ALTER TABLE `phan_hoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_name` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (2,'Subscriber'),(1,'Super Admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(150) DEFAULT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `ACCOUNT` varchar(150) DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  `ROLE_ID` int DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  UNIQUE KEY `SDT` (`SDT`),
  UNIQUE KEY `ACCOUNT` (`ACCOUNT`),
  KEY `ROLE_ID` (`ROLE_ID`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yeu_thich_meo`
--

DROP TABLE IF EXISTS `yeu_thich_meo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yeu_thich_meo` (
  `ID_USER` int NOT NULL,
  `ID_CTMEO` int NOT NULL,
  PRIMARY KEY (`ID_USER`,`ID_CTMEO`),
  KEY `ID_CTMEO` (`ID_CTMEO`),
  CONSTRAINT `yeu_thich_meo_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID`),
  CONSTRAINT `yeu_thich_meo_ibfk_2` FOREIGN KEY (`ID_CTMEO`) REFERENCES `chi_tiet_meo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeu_thich_meo`
--

LOCK TABLES `yeu_thich_meo` WRITE;
/*!40000 ALTER TABLE `yeu_thich_meo` DISABLE KEYS */;
/*!40000 ALTER TABLE `yeu_thich_meo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yeu_thich_mon_an`
--

DROP TABLE IF EXISTS `yeu_thich_mon_an`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yeu_thich_mon_an` (
  `ID_USER` int NOT NULL,
  `ID_CTMA` int NOT NULL,
  PRIMARY KEY (`ID_USER`,`ID_CTMA`),
  KEY `ID_CTMA` (`ID_CTMA`),
  CONSTRAINT `yeu_thich_mon_an_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID`),
  CONSTRAINT `yeu_thich_mon_an_ibfk_2` FOREIGN KEY (`ID_CTMA`) REFERENCES `chi_tiet_mon_an` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeu_thich_mon_an`
--

LOCK TABLES `yeu_thich_mon_an` WRITE;
/*!40000 ALTER TABLE `yeu_thich_mon_an` DISABLE KEYS */;
/*!40000 ALTER TABLE `yeu_thich_mon_an` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26  3:03:36
