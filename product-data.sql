use milkstore;

INSERT INTO `milkstore`.`milk_product_category`
(`category_name`)
VALUES
('Sữa bột pha sẵn'),
('Sữa bầu'),
('Sữa bột'),
('Sữa tăng cân cho bé'),
('Sữa tăng chiều cao');


INSERT INTO `milkstore`.`milk_product`
(`category_id`,
`product_name`,
`product_description`,
`product_image`,
`quantity_in_stock`,
`price`,
`manu_date`,
`expi_date`,
`delete_status`,
`visibility_status`)
VALUES
(3,
'Sữa Colosbaby Gold 0+ Vị thanh nhạt 800g (0-12 tháng)',
'Trẻ sơ sinh từ 0-6 tháng là giai đoạn miễn dịch khỏe mạnh do kháng thể miễn dịch từ mẹ truyền sang vẫn còn duy trì. Bước sang tháng thứ 6 là bắt đầu thời kỳ khoảng trống miễn dịch do kháng thể từ mẹ truyền sang giảm dần và cơ thể bé chưa thể tạo ra kháng thể. Trong giai đoạn này trẻ hay ốm bệnh và rất dễ bị bệnh vi khuẩn, virus, bệnh hô hấp, tiêu hóa. Đối với các bé đang bú mẹ thì kháng thể từ sữa mẹ giúp con khỏe mạnh, nhưng với các bé cần bổ sung dinh dưỡng từ bên ngoài thì sữa ColosBaby Gold 0+ vị thanh nhẹ là lựa chọn rất phù hợp cho con.
Sữa ColosBaby Gold 0+ là sản phẩm dinh dưỡng dành cho trẻ từ 0-12 tháng tuổi. Sản phẩm bổ sung năng lượng, các dưỡng chất thiết yếu, đặc biệt là kháng thể IgG từ sữa non ColosIgG 24h giúp hỗ trợ tăng đề kháng, phát triển thể chất và tăng trưởng khỏe mạnh.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/3ff35963-9776-4e00-8e78-afb119ce9823.jpg?alt=media',
71,
545000,
'2024-07-01',
'2026-05-25',
0,
1),
(3,
'Sữa Colosbaby Gold 0+ Vị thanh nhạt 400g (0-12 tháng)',
'Sữa Colosbaby Gold mới mới với công thức dinh dưỡng ưu việt dựa trên nền tảng tăng cường miễn dịch với nhiều cơ chế bảo vệ từ thành phần sữa non Colos IgG 24h nhập khẩu độc quyền Mỹ cùng với HMO và hàng triệu lợi khuẩn Bifidus cho con sức để kháng vượt trội. Về hỗ trợ tăng cân thì cũng vượt trội hơn hẳn nhờ hỗ trợ từ nhiều hướng với công thức đầy đủ, cân đối và các thành phần hỗ trợ tiêu hóa, hấp thu, ngon miệng. Như bộ chất “vàng” Whey protein, Whey thủy phân, MCT Dễ chuẩn năng lượng, dễ hấp thu giúp con tăng cân khỏe mạnh.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/6d887bfb-262c-4067-8bab-d36896079e8a.png?alt=media',
60,
285000,
'2024-05-25',
'2025-05-25',
0,
1),
(3,
'Sữa Colosbaby Gold 1+ Vị thanh nhạt 800g (0-12 tháng)',
'Trẻ trong giai đoạn từ 6 – 36 tháng đều phải trải qua “Khoảng trống miễn dịch” – là khi cơ thể trẻ thiếu kháng thể để chống lại yếu tố gây bệnh. Nguyên nhân bởi vì lúc này là thời điểm trẻ tiếp xúc và làm quen với môi trường mới qua: ăn dặm, tập bò, tạp đi, đi lớp…. Ô nhiễm từ khí thải và bụi mịn từ các khu công nghiệp, công trường xây dựng, phương tiện giao thông ở các đô thị lớn,.. ảnh hưởng đến sức khỏe của trẻ. Ngoài ra thì các mầm bệnh biến đổi phát triển nhất là vào thời điểm giao mùa.
Tăng cường miễn dịch từ sản phẩm dinh dưỡng sữa Colosbaby Gold 1+ tự nhiên là giải pháp hiệu quả để giúp bảo vệ đa cơ chế cho cơ thể trẻ từ đó giúp tăng cân khỏe mạnh.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/610e1c90-4faf-47d8-a1d9-0535e3a490f0.jpg?alt=media',
666,
515000,
'2024-04-20',
'2026-06-20',
0,
1),
(3,
'Sữa GrowPLUS+ Vàng sữa non 1+ 800G (trên 1 tuổi)',
'Sữa Grow Plus sữa non (Vàng) với công thức được phát triển bởi Viện nghiên cứu dinh dưỡng Nutifood Thụy Điển (NNRIS), xây dựng nền tảng FDI Đề kháng khỏe, tiêu hóa tốt giúp trẻ hấp thu tối ưu các dưỡng chất. Sản phẩm được bổ sung 100% sữa non 24h tự nhiên từ Mỹ cùng 2′-FL HMO giúp tăng cường hệ miễn dịch, tạo nền tảng vững chắc cho bé cao lớn và thông minh hơn.
Con uống Grow Plus sữa non (Vàng) hàng ngày sẽ giúp tăng cường hệ miễn dịch, tạo nền tảng vững chắc cho bé cao lớn và thông minh hơn. Giúp con ăn ngon miệng, tăng cân điều độ, con khoẻ mạnh, cứng cáp và phát triển toàn diện bắt kịp đà tăng trưởng theo lứa tuổi.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/c14a61be-270e-4c2c-88f7-bc6732cceab0.png?alt=media',
70,
450000,
'2024-03-29',
'2026-04-15',
0,
1),
(3,
'Sữa GrowPLUS+ Vàng sữa non 0+ 800G (trên 1 tuổi)',
'Sữa Grow Plus sữa non (Vàng) với công thức được phát triển bởi Viện nghiên cứu dinh dưỡng Nutifood Thụy Điển (NNRIS), xây dựng nền tảng FDI Đề kháng khỏe, tiêu hóa tốt giúp trẻ hấp thu tối ưu các dưỡng chất. Sản phẩm được bổ sung 100% sữa non 24h tự nhiên từ Mỹ cùng 2′-FL HMO giúp tăng cường hệ miễn dịch, tạo nền tảng vững chắc cho bé cao lớn và thông minh hơn.
Con uống Grow Plus sữa non (Vàng) hàng ngày sẽ giúp tăng cường hệ miễn dịch, tạo nền tảng vững chắc cho bé cao lớn và thông minh hơn. Giúp con ăn ngon miệng, tăng cân điều độ, con khoẻ mạnh, cứng cáp và phát triển toàn diện bắt kịp đà tăng trưởng theo lứa tuổi.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/a1ab022c-281a-4bb9-a24d-970a86286382.jpg?alt=media',
240,
480000,
'2024-05-20',
'2026-05-20',
0,
1),
(3, 
'Sữa Ensure Ensure Úc 850G chính hãng giá cực rẻ',
' Khi nhắc đến dòng sản phẩm dinh dưỡng công thức dành cho người cao tuổi không thể bỏ qua dòng Ensure với rất nhiều dòng: Ensure úc, Ensure Đức, Ensure gold, Ensure Vigor… trong đó các sản phẩm đến từ Úc luôn được người tiêu dùng ưa chuộng. Bằng chứng là người Úc luôn luôn có thể trạng, sức khỏe tinh thần và thể chất tốt hơn các nước khác rất nhiều. Điều này cho thấy tiêu chuẩn dinh dưỡng từ quốc gia Úc có những thế mạnh riêng điều mà nhiều quốc gia khác đang hướng đến.
Vậy trong sản phẩm sữa Ensure Úc có gì đặc biệt mà được nhiều người biết đến tin tưởng và dùng nhiều đến như vậy? Chúng ta cùng đi tìm hiểu nhé!',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/350b1f0b-bd79-40bc-9a5e-2c152b804d59.jpg?alt=media',
340,
780000,
'2024-03-20',
'2026-03-20',
0,
1),
(3,
'Sữa meta Care Opti 0+ 800g (trẻ từ 0 - 12 tháng)',
'Mẹ có biết, hệ tiêu hóa khỏe mạnh là nền tảng để bé hấp thu tốt các dưỡng chất cần thiết? Meta Care Opti 0+ giàu đạm Whey, kết hợp cùng tinh chất Oliu, HMO (2’FL), chất xơ, lợi khuẩn và các vi chất thiết yếu phù hợp với hệ tiêu hóa của bé.
– Bổ sung đạm Whey giàu Alpha-lactalbumin dễ hấp thu, HMO 2’FL, chất xơ hòa tan từ rau diếp xoăn và lợi khuẩn giúp ngăn ngừa táo bón; Cùng Nucleotides thúc đẩy chức năng tiêu hóa của trẻ.
– Bộ đôi Lysine và Kẽm giúp trẻ ăn ngon miệng, cung cấp đầy đủ dinh dưỡng theo khuyến nghị của bộ y tế, đảm bảo sự phát triển bình thường của trẻ.
– Hàm lượng cao sữa non và Kẽm ngừa nhiễm khuẩn, cùng hệ Antioxidant (Selen, Vitmain A, C, E) tăng cường hệ miễn dịch.
– Canxi hữu cơ tư tảo biển và Vitmain D3 giúp trẻ phát triển chiều cao, cùng Vitamin K2 hỗ trợ hấp thu Canxi từ máu vào xương, giúp hệ xương bé chắc khỏe.
– Cung cấp DHA và Choline giúp phát triển não bộ, cùng Folic Acid tăng khả năng ghi nhớ, học hỏi ở trẻ.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/c9eea5cd-8522-4648-9f11-6b9e624757bb.jpg?alt=media',
678,
355000,
'2024-05-20',
'2026-05-20',
0,
1),
(1,
'SPBS Colos Gain 110ml Tăng cân nhanh (trên 1 tuổi)',
'Thương hiệu sữa Vitadairy nổi tiếng với dòng sản phẩm Colosbaby giúp trẻ tăng trưởng và phát triển khỏe mạnh đáp ứng hầu hết nhu cầu dinh dưỡng của trẻ em Việt. Tuy nhiên đối với những trẻ có thể trạng suy dinh dưỡng, thiếu cân, thiếu chiều cao do biếng ăn kéo dài thì cần một chế độ dinh dưỡng đặc biệt. Thì Colos Gain là lựa chọn hoàn hảo mà các mẹ nên tham khảo cho con.
Sữa Colos Gain với công thức đột phá mới, được bổ sung nguyên liệu sữa non ColosIgG 24h nhập khẩu độc quyền từ Mỹ giúp trẻ tăng cường miễn dịch, hạn chế ốm vặt hỗ trợ cải thiện tình trạng sức khỏe cho trẻ gầy còm. Sản phẩm dạng pha sẵn 180ml thơm ngon bổ dưỡng và tiện lợi các bé rất thích.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/8ae773e4-3801-4fdb-a02e-50ad6c693001.jpg?alt=media',
34,
395000,
'2024-04-22',
'2025-06-20',
0,
1),
(1,
'Sữa Grow Plus đỏ FDI pha sẵn 110ml (trẻ từ 1 tuổi trở lên)',
'Mừng quá các mẹ ơi! Cu tí nhà mình trước đây chậm tăng cân, suy dinh dưỡng, thấp còi mình đã thử mọi cách mà không khá nên được. May mắn cho mình là tình cờ xem được video chia sẻ của bác sĩ Nutifood về tình trạng trẻ suy dinh dưỡng thấp còi và giải pháp giúp trẻ bắt kịp đà tăng trưởng.
Ngay sau đó mình đã thực hiện theo các hướng dẫn của bác sĩ về bổ sung đầy đủ dưỡng chất cho con từ các bữa ăn chính và bổ sung 2-3 hộp sữa Grow Plus đỏ 110ml pha sẵn vào bữa ăn phụ mỗi ngày. Ngoài ra cho con chế độ ăn ngủ chơi đúng giờ, hết tháng đầu là thấy con tươi tắn hẳn, da dẻ hồng hào hơn và đặc biệt là khi bế bé lên cảm giác nặng tay hơn hẳn. Lúc trước cân 3 tháng lên được có 200g mà giờ 1 tháng cân đã tăng 400g mình mừng lắm.
Các mẹ có con bị đứng cân, không tăng cân hoặc tăng chậm 2-3 tháng thì đặc biệt quan tâm đến chế độ dinh dưỡng hợp lý và dùng thêm sữa Grow Plus đỏ cho con nhé. Theo mình nên dùng sữa dạng pha sẵn có hương vị thơm ngon mà con rất thích.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/8241ac9b-d62c-4ff4-8e2e-e6c460f83361.jpg?alt=media',
124,
380000,
'2024-06-15',
'2025-06-15',
0,
1),
(1,
'Sữa Ensure Gold StrengthPro hương Vani 237ml Abbott (1 thùng 24 chai)',
'Ensure Gold TrengthPro là sản phẩm dinh dưỡng cao cấp của Abbott với hệ dưỡng chất StrengthPro gồm HMB, YBG và nhiều dưỡng chất khác sẽ giúp tăng cường sức khỏe, hệ miễn dịch. Sản phẩm đã được chứng minh là thức uống bổ sung dinh dưỡng có thể giúp những người bị bệnh hoặc đang phục hồi sau phẫu thuật nhận được chất dinh dưỡng cần thiết. Sữa Ensure Gold TrengthPro là sản phẩm dinh dưỡng hoàn chỉnh giúp lấp đầy khoảng trống dinh dưỡng ở người trưởng thành. Nó được chứng minh lâm sàng để cải thiện và hỗ trợ sức khỏe cơ, xương, tim, miễn dịch và tiêu hóa. Sản phẩm mang hương vani thơm béo và dễ uống. Sản phẩm có chứa 28 loại vitamin và khoáng chất thiết yếu giúp cân bằng vi chất; trong đó có một số chất có khả năng chống oxy hóa như beta caroten, vitamin C, vitamin E, kẽm và selen,… góp phần bảo vệ cơ thể trước tác động của lão hóa.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/ddd595db-a162-4eba-a83d-3bb831ed8d9c.jpg?alt=media',
333,
1400000,
'2024-02-15',
'2026-02-15',
0,
1),
(2,
'Sữa óc chó Hàn Quốc hạn nhân đậu đen 190ml (thùng 24 hộp)',
'Sữa óc chó Hàn Quốc là thức uống 3 trong 1 được chiết suất từ nguồn dinh dưỡng thiên nhiên kết hợp giữa 3 loại hạt Óc chó, Hạnh Nhân và Đậu đen rất giàu dinh dưỡng. Bên trong sữa có màu nâu nhạt, có mùi thơm của hạt óc chó xen lẫn hạnh nhân cùng đậu đen hòa quyện vào nhau tạo nên một thức uống rất là tuyệt vời, giàu dinh dưỡng.
Nếu đã có lần bạn được thưởng thức từng loại hạt rang lên và ăn trực tiếp thì khó có thể quên được cảm giác ngọt ngọt, bùi bùi, thơm đậm đà trong miệng. Sau khi ăn bạn sẽ thấy cơ thể rất dễ chịu là bởi vì sản phẩm từ thực vật tự nhiên rất giàu dinh dưỡng tốt cho sức khỏe.
Sự kết hợp hoàn hảo của 3 loại hạt Óc chó, hạnh nhân, đậu đen cung cấp hầu hết chất dinh dưỡng, vitamin và khoáng chất cần thiết cho cơ thể. Chính vì vậy mà sữa óc chó Hàn Quốc đang là lựa chọn hàng đầu và được sử dụng rất phổ biến hiện nay.
Sản phẩm sữa óc chó nổi tiếng của Hàn Quốc giờ đây đã có tại Việt Nam với nhiều công dụng tuyệt vời bổ sung dinh dưỡng phù hợp cho mọi lứa tuổi đặc biệt là phụ nữ mang thai, sau sinh, người trung và cao tuổi cần bồi bổ sức khỏe. ',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/b143f2ab-80fa-4214-b7eb-6ca8eb1ad96c.jpg?alt=media',
886,
320000,
'2024-01-22',
'2025-01-25',
0,
1),
(2,
'Sữa Meiji Mama Milk Nhật bản 350g (Sữa bầu)',
'Meiji MAMA milk được tạo ra nhằm cung cấp các chất dinh dưỡng cần thiết hỗ trợ sức khỏe cho người mẹ đang mang thai và đang cho con bú cũng như sức khỏe và sự tăng trưởng của thai nhi và trẻ sơ sinh.
Sản phẩm có chứa không chỉ các chất dinh dưỡng cơ bản như là proteins, chất béo, và carbohydrates, mà còn cả các loại vitamin và khoáng chất bao gồm sắt, can-xi, kẽm, axit folic, những thành phần thường khó hấp thụ qua đường ăn uống trong quá trình mang thai và dưỡng sức.
Sản phẩm Meiji Mama bao gồm cả axit docosahexaenoic (DHA) giúp kích thích khả năng tăng trưởng khỏe mạnh của thai nhi và trẻ sơ sinh, fructooligosaccharides và xơ thô là các carbohydrates khó tiêu.
Sữa bầu Meiji không chỉ tập trung vào hỗ trợ tăng cường sức khỏe cho mẹ mà còn được đánh giá cao nhờ việc cung cấp lượng dinh dưỡng lớn cho thai nhi trong suốt giai đoạn trong bụng mẹ.
Giúp cân bằng dinh dưỡng và đảm bảo một cách tốt nhất sự hoàn thiện các cơ quan và phát triển toàn diện của trẻ ở những giai đoạn ban đầu. Đặc biệt, sữa bầu Meiji còn được các mẹ bầu đánh giá cao về hương vị nhờ kết cấu dạng bột sữa mịn, giúp hòa tan đều khi pha và tạo cảm giác cực dễ uống mà không gây ra tình trạng đầy hơi khi sử dụng.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/2c18f5a6-6dc9-4cb2-b2a4-1359ed3e26b9.jpg?alt=media',
236,
220000,
'2024-05-07',
'2026-05-07',
0,
1),
(2,
'Sữa Enfamama A+ DHA hương vani cho mẹ bầu & cho con bú 830g',
'Ngày nay, hầu hết các mẹ bầu đều lựa chọn sữa bột công thức làm nguồn dinh dưỡng bổ sung cho bữa ăn phụ để đảm bảo cung cấp đủ dưỡng chất cho mẹ và thai nhi phát triển khỏe mạnh. Sữa công thức cũng là thực phẩm không thể thiếu đối với người phương Tây giàu protein, vitamin và khoáng chất cần thiết theo nhu cầu của mỗi người. Và cần thiết hơn với mẹ bầu, bởi vì lúc này mẹ ăn không phải cho riêng mình mà còn ăn cho sự phát triển đầy đủ của bào thai.
Sữa Enfamama A+ được kiểm trứng đáp ứng đầy đủ nhu cầu dinh dưỡng dành cho mẹ bầu và sau sinh. Hơn nữa, sản phẩm còn giúp cung cấp hàm lượng cao DHA và các dưỡng chất thiết yếu như Choline, Axit folic hàm lượng cao giúp thai nhi phát triển trí não, giảm thiểu các nguy cơ ảnh hưởng đến sự phát triển bào thai.
Hệ chất xơ cao cấp giúp mẹ giảm bớt nỗi lo táo bón và hỗ trợ sức khỏe đường ruột mà nhiều mẹ bầu gặp phải. Hệ tieu hóa khỏe mạnh sẽ giúp mẹ hấp thu tối đa nguồn dinh dưỡng đến từ Enfamama A+
Hàm lượng cao các dưỡng chất thiết yếu (Axit Folic, Canxi, Sắt, Vitamin D, B12…) giúp đáp ứng nhu cầu dinh dưỡng gia tăng trong giai đoạn mang thai và cho con bú.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/3ec19864-346e-46e3-bc9d-0e2c4e5618f2.jpg?alt=media',
620,
510000,
'2024-03-24',
'2026-03-24',
0,
1),
(2,
'Sữa Óc Chó Hàn Quốc Hạnh nhân Đậu Đen 140ml (1 thùng 24 hộp)',
'Sữa óc chó hạnh nhân đậu đen Hàn Quốc được xem như loại thức uống đầy đủ các dưỡng chất cần thiết và hương vị thơm ngon, do được chiết xuất theo tỷ lệ thích hợp với khẩu vị người Châu Á. Sản phẩm thuộc tập đoàn Sahmyook danh tiếng Hàn Quốc, đặc biệt được ưa chuộng vô cùng, có mặt ở hầu hết các siêu thị lớn lẫn cửa hàng nhỏ tại xứ sở Kim Chi.
– Quả óc chó kết hợp với đậu đen Hàn Quốc có tác dụng giảm Cholesterol, Chống lão hóa và tăng cường sức đề kháng rất tốt cho sức khỏe người sử dụng. Quả óc chó chứa Axit béo Omega-3, Giàu chất xơ, Vitamin B, Magiê, Vitamin E giúp bảo vệ hệ Tim mạch, bảo vệ động mạch do có nhiều chất béo chưa bão hoà. Tăng cường sức khỏe cho não bộ, hệ thần kinh.
–Hạnh nhân là nguồn cung cấp dồi dào về vitamin E, Calcium, phosphor, Sắt và Magnesium. Nó còn chứa Kẽm, Selenium, Đồng và Niacin, hạnh nhân có nhiều chất bổ dưỡng nhất.
–Nước đậu đen hạnh nhân óc chó Hàn Quốc là nguồn cung cấp Isulin cao cho bệnh nhân bị mắc bệnh Tiểu đường. Cung cấp lượng lớn các dưỡng chất Ca, K, Mg, giúp hệ tiêu hóa nhuận tràng, ngăn ngừa sỏi mật do giàu chất xơ.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/98652f3d-c18f-4eb0-b31d-da41d42103f4.jpg?alt=media',
40,
265000,
'2024-05-07',
'2026-05-07',
0,
1),
(4,
'Sữa Appeton Weight Gain Junior tăng cân cho trẻ 3-12 tuổi',
'Appeton Weight Gain có thể nói là dòng sữa đi đầu trong việc nghiên cứu và phát triển dòng sữa tăng cân cho người gầy, trong đó có đối tượng trẻ em. Hương vị thơm ngon, dễ uống, tăng cân nhanh đã giúp cho sản phẩm Appeton nổi tiếng trên toàn thế giới. Bằng chứng là Appeton Weight Gain Junior được chứng minh lâm sàng giúp tăng cân hiệu quả và khỏe mạnh (dần dần, đều đặn và không có tác dụng phụ) trung bình 2Kg trong vòng 2 tháng khi sử dụng đúng theo chỉ dẫn của nhà sản xuất.
Chỉ số PER là thước đo khả năng giúp tăng trọng lượng cơ thể từ hàm lượng Protein sẵn có. Chỉ số PER càng cao thì khả năng tăng cân càng cao. Trong sữa Appeton Weight Gain Junior có chỉ số PER = 3.1 cao vượt trội hơn hẳn so với các sản phẩm khác. Thực tế thì chưa có sản phẩm nào có chỉ số cao hơn. Vì vậy mẹ có con từ 3 tuổi cần tăng cân thì đây là lựa chọn tuyệt vời',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/ef411361-b33a-48ad-b6f9-d19e00fe411d.jpg?alt=media',
777,
550000,
'2024-03-12',
'2026-05-11',
0,
1),
(4,
'Sữa care 100 Gold 900g (cho trẻ 1-10 tuổi)',
'Bếu biếng ăn nếu không được chăm sóc kịp thời sẽ dẫn đến thiếu hụt năng lượng, dinh dưỡng. Bé sẽ rơi vào vòng “luẩn quẩn”: Biếng ăn => Sụt cân, suy dinh dưỡng => Suy giảm sức đề kháng do thiếu vi chất => Ốm bệnh.
Để khắc phục dứt điểm, mẹ hãy áp dụng giải pháp đồng bộ, vừa khắc phục biếng ăn, hấp thu kém, vừa phục hồi dinh dưỡng, năng lượng đồng thời phải giúp bé tăng sức đề kháng.
Sữa Care 100 Gold là dòng sản phẩm được thiết kế chuyên biệt dành cho trẻ biếng ăn, suy dinh dưỡng thấp còi từ 1 đến 10 tuổi. Sữa giúp bổ sung thêm năng lượng, chất đạm, các vitamin và khoáng chất cần thiết vào khẩu phần ăn giúp trẻ tăng trưởng và phát triển chiều cao, cân nặng, trí não tối đa.
Sữa Care 100 Gold có nguyên liệu được nhập khẩu từ New Zealand, công thức được nghiên cứu bởi các chuyên gia dinh dưỡng hàng đầu Việt Nam. Sản phẩm được sản xuất bởi công ty Nutricare, được chứng nhận bởi bộ y tế phù hợp với trẻ từ 1 đến 10 tuổi.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/d8ebeb31-d562-4559-bf1a-8e6970e4ba48.jpg?alt=media',
747,
350000,
'2024-05-10',
'2026-07-10',
0,
1),
(4,
'Sữa PediaSure Úc nắp tím 850g (trẻ 1 - 10 tuổi)',
'Nhắc đến dòng sữa giúp trẻ tăng cân tăng chiều cao không thể không kể đến dòng sản phẩm Pediasure của Abbott Hoa Kỳ nổi tiếng trên toàn thế giới. Pediasure thì có nhiều loại được sản xuất ở các quốc gia khác nhau, mặc dù cùng chung một công dụng nhưng mỗi quốc gia lại có các tiêu chuẩn dinh dưỡng khác nhau. Điều này giải thích vì sao cùng một sản phẩm lại có giá thành khác nhau và Pediasure Úc được xem là sản phẩm giá thành cao nhất, và tất nhiên là được các mẹ đánh giá là tốt nhất.
Không chỉ Pediasure mà các loại sữa đến từ Úc đều rất nổi tiếng tại Việt Nam nhờ công dụng giúp bé tăng trưởng và phát triển khỏe mạnh. Bằng chứng là trẻ em tại Úc được thừa hưởng các thành tựu khoa học tiên tiến hiện đại nên có tầm vóc, thể chất và trí tuệ vượt trội hơn hẳn. Và đối với sữa Pediasure Úc cũng như vậy, những em bé sử dụng sữa Pediasure Úc một thời gian mẹ sẽ thấy con phát triển hơn hẳn so với các em bé khác.
Sữa PediaSure được thiết kế công thức TRIPLE SURE với tỉ lệ năng lượng cao, cung cấp đầy đủ 27 chất dinh dưỡng, vitamin và khoáng chất ở mức tối đa giúp hỗ trợ hiệu quả cho sự tăng trưởng và phát triển của trẻ trong giai đoạn từ 1-10 tuổi.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/2a51c941-c5ce-44fb-a16a-523d7f84724e.jpg?alt=media',
410,
800000,
'2024-02-20',
'2026-02-20',
0,
1),
(4,
'Sữa Diamond Nutrient Kid 0+',
'Các mẹ hẳn đều biết, để phục hồi cân nặng và chiều cao thì cần tăng năng lượng nạp vào qua thức ăn cho bé. Tuy nhiên, thật chẳng dễ dàng để con yêu ăn nhiều và hấp thu đủ năng lượng và dinh dưỡng cho cả ngày dài.
Để tăng năng lượng nạp vào cho trẻ qua thức ăn, cần chọn cho trẻ những thực phẩm giàu năng lượng, đậm đặc dinh dưỡng, để với lượng thức ăn nhỏ mà trẻ chấp nhận ăn hàng ngày vẫn sẽ cung cấp đủ năng lượng, dinh dưỡng, giúp trẻ tăng cân nhanh, bắt kịp đà tăng trưởng. Uống sữa Diamond Nutrient Kid hàng ngày sẽ giúp trẻ:
Tăng trưởng chiều cao và cân nặng
Ăn ngon, hỗ trợ tiêu hóa
Tăng cường miễn dịch
Thông minh, sáng mắt
Thoải mái ngủ ngon
Sữa Diamond Nutrient Kid 0+ có nguyên liệu sữa bột nhập khẩu từ New Zealand với công thức độc quyền đặc biệt được các chuyên gia dinh dưỡng khuyên dùng giúp trẻ tăng cân và chiều cao hiệu quả.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/2458f349-d02f-4467-be23-303b8dd9f600.jpg?alt=media',
644,
365000,
'2024-04-22',
'2026-07-22',
0,
1),
(4,
'Sữa Nutralait BA 700g (trẻ biếng ăn từ 1-10 tuổi)',
'Công dụng chính của sữa Nutralait BA là dinh dưỡng chuyên biệt giúp trẻ tăng trưởng chiều cao và cân nặng, hỗ trợ tiêu hóa cải thiện cảm giác chán ăn và tăng cường hệ miễn dịch.
Sữa Nutralait BA giúp tăng trưởng cân nặng vượt trội nhờ đậm độ dinh dưỡng cao, linh hoạt với 2 cách pha 1Kcal/ml và 1,2Kcal/ml. Đậm độ năng lượng cao giúp cung cấp dinh dưỡng nhiều hơn trong 1 ly sữa, trẻ không cần ăn lượng nhiều nhưng vẫn cung cấp năng lượng đáng kể.
Cách pha linh hoạt tạo thuận tiện để điều chỉnh phù hợp trong từng giai đoạn khác nhau hoặc phù hợp với khẩu vị của trẻ. Mỗi ngày 2-3 ly sử dụng như bữa phụ bổ sung vào chế độ ăn hằng ngày, giúp trẻ tăng cân, bắt kịp đà tăng trưởng
Tỷ lệ dinh dưỡng cân đối giữa chất Đạm:Béo:Đường = 11%:40%:49% Các chất sinh năng lượng có tỷ lệ phù hợp với các khuyến cáo dinh dưỡng, cung cấp bữa ăn phụ cân đối cho trẻ phát triển khỏe mạnh.
Chất béo được tăng cường để cung cấp năng lượng, tăng phát triển lớp mỡ dưới da, giúp trẻ suy dinh dưỡng nhanh chóng phục hồi thể trạng. Chất đạm có tỷ lệ phù hợp giúp phát triển khối cơ, cung cấp các acid amin cần thiết cho cơ thể',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/44646e06-9997-433c-abb8-cd13d07e1857.jpg?alt=media',
360,
360000,
'2024-01-02',
'2026-02-20',
0,
1),
(5,
'Sữa ASUMIRU Nhật Bản tăng chiều cao 3-16 tuổi (vị dâu)',
'Khi lựa chọn Sữa cho con các mẹ luôn ưu tiên các sản phẩm đến từ Nhật Bản, bởi chất lượng sản phẩm luôn là tiêu chí hàng đầu. Mặc dù các loại sữa đến từ Nhật Bản không có nhiều để các mẹ lựa chọn, điều đó cho thấy sản phẩm ít nhưng mà chất lượng lại rất tuyệt vời. Cũng như vậy, sản phẩm chuyên biệt tăng chiều cao cho bé đến từ Nhật Bản rất hiếm và Asumiru có thể được xem như là một lựa chọn tuyệt vời nhất dành cho các bé muốn tăng chiều cao trong giai đoạn phát triển từ 3-16 tuổi.
Điều khác biệt nhất của sản phẩm Asumiru – Nhỏ Mà Có Võ này đó chính là công thức độc quyền giúp thúc đẩy việc tiết Hoocmon tăng trưởng giúp bé đạt được chiều cao lý tưởng nhất. Sự kết hợp hoàn hảo của các thành phần chính cấu tạo nên hệ xương răng trong sữa Asumiru là bí quyết giúp thúc đẩy xương dài ra nhanh. Sử dụng Asumiru hàng ngày sẽ giúp trẻ nhanh chóng đạt được:
Phát triển chiều cao vượt trội, không gây dậy thì sớm. Đảm bảo phát triển tự nhiên, an toàn. Phát triển não bộ, tăng khả năng học tập và ghi nhớ. Tăng cường cơ & sức mạnh cơ bắp, phù hợp với trẻ hoạt động thể thao nhiều, vận động viên nhí. Tăng khả năng hấp thụ của trẻ. Tăng cường sức đề kháng, cải thiện miễn dịch. Bổ sung đầy đủ vitamin & khoáng chất 1 ngày. Không gây nóng trong, táo bón, thừa k.g. 4 không: không chất bảo quản tổng hợp, không chất tạo màu, không chất tạo ngọt tổng hợp',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/40cefd56-b2de-4bfd-b958-7663d54e5fb5.jpg?alt=media',
877,
895000,
'2024-05-23',
'2026-06-20',
0,
1),
(5,
'Sữa Abbott Grow 2+ 850g (trẻ từ 2 tuổi trở lên)',
'Để đáp ứng nhu cầu tăng trưởng cao của trẻ trong suốt giai đoạn phát triển quan trọng từ 2 tuổi, hàng ngày con bạn cần được bổ sung đầy đủ và cân đối các dưỡng chất cần thiết. Sữa Abbott Grow 2 với công thức giàu dưỡng chất, hương vị thơm ngon, được thiết kế một cách khoa học hỗ trợ sự phát triển tốt của trẻ trong suốt giai đoạn quan trọng này.
Sữa Abbott Grow 2 có công thức dinh dưỡng đặc chế đáp ứng nhu cầu tăng trưởng cao của trẻ trong suốt giai đoạn phát triển quan trọng này, hàng ngày con bạn can được bổ sung đầy đủ và cân đối các dưỡng chất cần thiết.
Giàu dưỡng chất, hương vị thơm ngon, được thiết kế một cách khoa học hỗ trợ sự phát triển tốt của trẻ trong suốt giai đoạn quan trọng này.
Giúp trẻ phát triển xương và chiều cao: Sữa Abbott Grow 4 là nguồn dinh dưỡng tốt cung cấp đầy đủ với hàm lượng cao canxi, phospho, vitamin D – đây là các nguyên liệu cần thiết để xây dựng và phát triển hệ xương chắc khỏe.
Bổ sung taurin hỗ trợ phát triển trí não và thị giác. 28 vitamin và khoáng chất có trong AbGrow 4 cùng với chế độ ăn hợp lý và cân đối hàng ngày, giúp đáp ứng các nhu cầu dinh dưỡng cần thiết cho sự phát triển tốt của trẻ. Các nguyên tố siêu vi lượng selen, crôm, molybden duy nhất có trong công thức Abbott Grow 4 ngoài việc hỗ trợ nâng cao sức đề kháng của cơ thể, còn tham gia điều hòa chức năng chuyển hóa năng lượng của cơ thể, giúp trẻ lớn nhanh và khỏe mạnh.
Các chất chống oxi hóa giúp bảo vệ các tế bào của cơ thể chống lại tác động có hại của các gốc tự do.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/251c8af5-56d5-4693-837d-7c326f5d799b.jpg?alt=media',
421,
345000,
'2024-06-20',
'2026-06-20',
0,
1),
(5,
'Sữa Hikid Hàn Quốc Tăng chiều cao, cân nặng Vain 600g (1 tuổi trở lên)',
'Là một người hâm mộ Bác sĩ Anh Nguyễn (Người Việt sống tại Vương Quốc Anh), mình thường xuyên theo dõi những bài chia sẻ rất hữu ích trên facbook của bác sĩ. Mình thấy cũng có rất nhiều mẹ Việt đang theo dõi để học hỏi theo những chia sẻ về chăm sóc con từ những nghiên cứu khoa học mới nhất. Gần đây mình có đọc bài viết của bác sĩ về chủ đề DINH DƯỠNG ĐÚNG ĐỂ TRẺ TĂNG CHIỀU CAO” rất hayMình xin trích dẫn một đoạn quan trọng nhất liên quan đến sản phẩm sữa Hàn Quốc bạn đang muốn tham khảo cho con như sau:“Canxi là thành phần chính cấu tạo khung xương. Nên tận dụng nguồn canxi tự nhiên hơn là từ thuốc hay thực phẩm bổ sung vì đó là nguồn hấp thụ tốt nhất và an toàn nhất.Tuy nhiên, cha mẹ cần lưu ý sự hấp thụ canxi luôn cần sự hỗ trợ đầy đủ của vitamin D3 và K2. Nếu không có vitamin D3 thì Canxi sẽ không thể hấp thu từ ruột vào máu, không có vitamin K2 thì canxi từ máu không thể gắn hiệu quả vào xương.Vitamin D3 kích thích nguyên bào xương sản xuất Osteocalcin – một protein có chức năng gắn canxi vào xương. Nhưng Osteocalcin này nếu thiếu vitamin K2 sẽ không thể hoạt động được. Vì thế, việc phối hợp D3 và K2 sẽ giúp canxi được hấp thu và sử dụng hiệu quả tại xương, từ đó giúp trẻ có hệ xương chắc khỏe và tăng chiều cao tốt hơn.Ngoài chế độ ăn uống đa dạng và cân bằng, cha mẹ hãy tạo cho con môi trường ăn uống lành mạnh và vui vẻ, tránh ép trẻ quá mức, hạn chế thức ăn nhanh, đồ ăn chiên rán quá nhiều dầu mỡ, bánh kẹo ngọt, nước ngọt có ga… bởi chúng sẽ gây ra tình trạng béo phì, một sức ép đối với tăng trưởng chiều cao.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/8f7e264e-093f-4980-85c9-36987b489f6c.jpg?alt=media',
431,
520000,
'2024-02-15',
'2026-05-15',
0,
1),
(5,
'Sữa Nutrient KAO 700g (trẻ từ 1 - 6 tuổi)',
'Sữa Nutrient Kao với công thức ưu việt, tổng hòa các tác động toàn diện và khoa học. Giúp phát triển hệ xương cứng cáp chắc khỏe, đạt chiều cao tối ưu.
Hàm lượng canxi cao đáp ứng phần lớn nhu cầu Canxi hàng ngày của cơ thể: 100% Canxi có nguồn gốc từ sữa nên mức độ hấp thu vào cơ thể cao hơn nhiều so với canxi vô cơ. Cơ thể hấp thu dễ dàng Canxi và Phospho tại ruột
Vitamin D tăng cường hấp thu canxi tốt hơn giúp trẻ tăng phát triển chiều cao do tăng duy trì lượng canxi và phosphat để tạo xương.
Thành phần Lysine giúp tăng khả năng hấp thu canxi, hạn chế canxi bài tiết ra ngoài và tăng cường cấp máu cho xương giúp xương chắc khỏe.
Kẽm giúp thúc đẩy quá trình tăng sinh tế bào, tăng trưởng cơ thể',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/9f4471c4-fa33-412e-96fb-a5042fb1371d.jpg?alt=media',
220,
335000,
'2024-02-20',
'2026-10-20',
0,
1),
(5, 
'Sữa Hikid Premium Hàn Quốc tách béo 600g (trẻ từ 1 tuổi trở lên)',
'Mẹ quan tâm đến chiều cao của trẻ đều biết Hikid là dòng sữa mát nổi tiếng được yêu thích bởi hàng triệu bà mẹ Châu Á. Sự khác biệt của Hikid nằm ở bí mật khoa học, tiêu chuẩn khắt khe về chất lượng và độ an toàn.
Với hàm lượng Canxi cao vượt trội, lên tới 183mg canxi trong 100g sữa, cùng với việc bổ sung Vitamin D, Kẽm, Magie và hàm lượng cao vitamin K2. Sữa Hikid Premium bổ sung và tăng khả năng hấp thu canxi, phát triển chiều cao tối đa của trẻ.
Tuy nhiên, nếu sản phẩm chỉ chú trọng bổ sung Canxi vào sữa sẽ khiến trẻ táo bón và hại thận. Bí quyết sau mỗi lon sữa là nhờ các hạt Vitamin tổng hợp nhiều màu sắc có thể tan và chín trong nước, chuyển hóa dễ dàng các chất dinh dưỡng vào cơ thể bé. Đây được xem như bước đột phá của nền công nghiệp sản xuất sữa, cũng là bí quyết gia truyền của ILDong – Tập đoàn tiền thân làm Dược với hơn 70 năm kinh nghiệm, mẹ khó tìm được loại sữa thứ hai có ưu điểm này.
Điểm nổi bật làm làm nên chất lượng của Hikid Premium chính là thành phần sữa non với hàm lượng cực cao IGF và TGF giúp tăng cường sức khỏe, kháng viêm và tăng sức đề kháng của trẻ. Với nồng độ dinh dưỡng cao trong một khối lượng rất ít, sữa non bổ sung đầy đủ các chất dinh dưỡng cân đối, giàu đạm và vitamin, các kháng thể diệt vi khuẩn và điều hòa miễn dịch, nhờ đó giúp trẻ phát triển toàn diện, khỏe mạnh và chống lại bệnh tật.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/a3f2839a-008c-47d4-9b61-8d7df8366d55.jpg?alt=media',
87,
520000,
'2024-06-20',
'2026-06-20',
0,
1),
(5, 
'Sữa Hikid Premium Hàn Quốc tách béo phiên bản 2 600g  (trẻ từ 1 tuổi trở lên)',
'Mẹ quan tâm đến chiều cao của trẻ đều biết Hikid là dòng sữa mát nổi tiếng được yêu thích bởi hàng triệu bà mẹ Châu Á. Sự khác biệt của Hikid nằm ở bí mật khoa học, tiêu chuẩn khắt khe về chất lượng và độ an toàn.
Với hàm lượng Canxi cao vượt trội, lên tới 183mg canxi trong 100g sữa, cùng với việc bổ sung Vitamin D, Kẽm, Magie và hàm lượng cao vitamin K2. Sữa Hikid Premium bổ sung và tăng khả năng hấp thu canxi, phát triển chiều cao tối đa của trẻ.
Tuy nhiên, nếu sản phẩm chỉ chú trọng bổ sung Canxi vào sữa sẽ khiến trẻ táo bón và hại thận. Bí quyết sau mỗi lon sữa là nhờ các hạt Vitamin tổng hợp nhiều màu sắc có thể tan và chín trong nước, chuyển hóa dễ dàng các chất dinh dưỡng vào cơ thể bé. Đây được xem như bước đột phá của nền công nghiệp sản xuất sữa, cũng là bí quyết gia truyền của ILDong – Tập đoàn tiền thân làm Dược với hơn 70 năm kinh nghiệm, mẹ khó tìm được loại sữa thứ hai có ưu điểm này.
Điểm nổi bật làm làm nên chất lượng của Hikid Premium chính là thành phần sữa non với hàm lượng cực cao IGF và TGF giúp tăng cường sức khỏe, kháng viêm và tăng sức đề kháng của trẻ. Với nồng độ dinh dưỡng cao trong một khối lượng rất ít, sữa non bổ sung đầy đủ các chất dinh dưỡng cân đối, giàu đạm và vitamin, các kháng thể diệt vi khuẩn và điều hòa miễn dịch, nhờ đó giúp trẻ phát triển toàn diện, khỏe mạnh và chống lại bệnh tật.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/a3f2839a-008c-47d4-9b61-8d7df8366d55.jpg?alt=media',
87,
520000,
'2024-06-20',
'2024-06-20',
0,
1),
(5, 
'Sữa Hikid Premium Hàn Quốc tách béo phiên bản 3 600g  (trẻ từ 1 tuổi trở lên)',
'Mẹ quan tâm đến chiều cao của trẻ đều biết Hikid là dòng sữa mát nổi tiếng được yêu thích bởi hàng triệu bà mẹ Châu Á. Sự khác biệt của Hikid nằm ở bí mật khoa học, tiêu chuẩn khắt khe về chất lượng và độ an toàn.
Với hàm lượng Canxi cao vượt trội, lên tới 183mg canxi trong 100g sữa, cùng với việc bổ sung Vitamin D, Kẽm, Magie và hàm lượng cao vitamin K2. Sữa Hikid Premium bổ sung và tăng khả năng hấp thu canxi, phát triển chiều cao tối đa của trẻ.
Tuy nhiên, nếu sản phẩm chỉ chú trọng bổ sung Canxi vào sữa sẽ khiến trẻ táo bón và hại thận. Bí quyết sau mỗi lon sữa là nhờ các hạt Vitamin tổng hợp nhiều màu sắc có thể tan và chín trong nước, chuyển hóa dễ dàng các chất dinh dưỡng vào cơ thể bé. Đây được xem như bước đột phá của nền công nghiệp sản xuất sữa, cũng là bí quyết gia truyền của ILDong – Tập đoàn tiền thân làm Dược với hơn 70 năm kinh nghiệm, mẹ khó tìm được loại sữa thứ hai có ưu điểm này.
Điểm nổi bật làm làm nên chất lượng của Hikid Premium chính là thành phần sữa non với hàm lượng cực cao IGF và TGF giúp tăng cường sức khỏe, kháng viêm và tăng sức đề kháng của trẻ. Với nồng độ dinh dưỡng cao trong một khối lượng rất ít, sữa non bổ sung đầy đủ các chất dinh dưỡng cân đối, giàu đạm và vitamin, các kháng thể diệt vi khuẩn và điều hòa miễn dịch, nhờ đó giúp trẻ phát triển toàn diện, khỏe mạnh và chống lại bệnh tật.',
'https://firebasestorage.googleapis.com/v0/b/swp-firebase-8e460.appspot.com/o/a3f2839a-008c-47d4-9b61-8d7df8366d55.jpg?alt=media',
87,
520000,
'2024-06-20',
'2024-06-20',
0,
1);


