<?php

require_once "thuctap.php";
$tt = new thuctap;

echo "<h3>Test stripUnicode</h3>";
$str1 = " Mồi phú quí dữ làng xa mã. Bả vinh hoa lừa gã công khanh. Giấc Nam Kha khéo bất bình.Bừng con mắt dậy thấy mình tay không.";
echo $tt->stripUnicode($str1);
echo "<br>";

echo "<h3>Test stripSpecial</h3>";
$str2 = "  !    Bóng gương   thấp thoáng dưới mành & Cỏ cây cũng muốn nổi tình mây mưa ',  Chìm đáy nước cá lờ đờ lặn , & Lửng da trời nhạn ngẩn ngơ sa ? Hương trời đắm nguyệt say hoa  ?  Tây Thi mất vía, Hằng Nga giật  $     mình ";
echo $tt->stripSpecial($str2);
echo "<br>";

echo "<h3>Test changeTitle</h3>";
$str3 = "  tRời    bUồN làM   GÌ trời  RẦU $  RẦU. aNH thươNG    em  AnH đi  Đâu  '   ĐÂu";
echo $tt->changeTitle($str3);

echo "<h3>List loai tin</h3>";
$kq = $tt->getListLoaitin();
while ($row = $kq->fetch_assoc()) {
	echo $row['Ten'], "<br>";
}

echo "<h3>List tin trong loai tin</h3>";
$kq = $tt->getNewsInLoaitin(4, 6);
while ($row  = $kq->fetch_assoc()) {
	echo "<p><a href='#'>", $row['TieuDe'], "</a></p>";
}

?>