import 'package:intl/intl.dart';


String formatDate(String date){
  DateTime value = DateTime.parse(date);

  String formattedDate = DateFormat('dd/MM/yyyy').format(value);
  return formattedDate;
}