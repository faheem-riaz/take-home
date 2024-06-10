import 'package:take_home/features/kanban_board/domain/model/kanban_model.dart';

class Section {
  final String id;
  final String name;
  final String imageUrl;
  final List<Task> tasks;
  Section(this.id, this.name, this.tasks, this.imageUrl);
}
