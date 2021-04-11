import 'package:intl/intl.dart';

var date = DateTime.now();
var fixedDate = new DateTime(2019, 12, 4, 14, 3, 12);
String formattedTime = DateFormat('dd').format(fixedDate); // 04
String formattedTime2 = DateFormat('kk:mm:a').format(fixedDate); // 14:03 AM
// print(formattedTime)
String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(fixedDate); // 2019=12-04 - 14:03 AM
// print(formattedDate)
// print(date.day);
// 2019-12-10 10:02:22.287949
// String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);