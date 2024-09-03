import 'package:hive/hive.dart';
part 'notemodel.g.dart';// عن طريق الكومند flutter packages pub run build_runner buildاسم الملف الى هيتعمله جينيريت الادابتر عن طريق البيلد راننر 

@HiveType(typeId: 0)//uniqe of any model in app
class NoteModel extends HiveObject{
  @HiveField(0)//uniqe in class only
   String title;
  @HiveField(1)
   String subtitle;
    @HiveField(2)

  final String date;
    @HiveField(3)
   int color;
  NoteModel(
      {required this.color,
      required this.date,
      required this.subtitle,
      required this.title});
}
