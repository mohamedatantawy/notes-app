import 'package:hive/hive.dart';
part 'notes_Model.g.dart';
@HiveType(typeId: 0)
class NotesModel extends HiveObject {
  @HiveField(0)
  final String title;
 @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String data;
  @HiveField(3)
  final int color;

  NotesModel({
    required this.title,
    required this.subtitle,
    required this.data,
    required this.color,
  });
}
