import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:take_home/core/components/app_image_viewer.dart';
import 'package:take_home/core/di/service_locator.dart';
import 'package:take_home/core/extensions/e_build_context.dart';
import 'package:take_home/core/theme/app_colors.dart';
import 'package:take_home/features/comment/presentation/widgets/comment_bottom_sheet.dart';
import 'package:take_home/features/kanban_board/domain/model/kanban_model.dart';
import 'package:take_home/features/kanban_board/domain/model/section_model.dart';
import 'package:take_home/features/kanban_board/domain/model/time_tracking_model.dart';
import 'package:take_home/features/kanban_board/presentation/cubit/kanban_cubit/kanban_cubit.dart';
import 'package:take_home/features/kanban_board/presentation/cubit/task_cubit/task_cubit.dart';
import 'package:take_home/features/kanban_board/presentation/cubit/timer_cubit/timer_cubit.dart';
import 'package:take_home/features/kanban_board/presentation/widgets/edit_task_dialog.dart';

class KanbanDataList extends StatefulWidget {
  final Section section;

  const KanbanDataList({super.key, required this.section});

  @override
  State<KanbanDataList> createState() => _KanbanDataListState();
}

class _KanbanDataListState extends State<KanbanDataList> {
  final cubit = sl<KanbanCubit>();
  int current = 0;
  final GlobalKey dragTargetKey = GlobalKey();
  final CarouselController controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  void onDragUpdate(DragUpdateDetails details, int currentIndex, Section section) {
    final RenderBox renderBox = dragTargetKey.currentContext!.findRenderObject() as RenderBox;
    final dragTargetPosition = renderBox.localToGlobal(Offset.zero);
    final dragTargetWidth = renderBox.size.width;
    final dragTargetHeight = renderBox.size.height;

    // Restrict drag if it goes outside the bounds of the box
    if (details.globalPosition.dx < dragTargetPosition.dx ||
        details.globalPosition.dx > dragTargetPosition.dx + dragTargetWidth ||
        details.globalPosition.dy < dragTargetPosition.dy ||
        details.globalPosition.dy > dragTargetPosition.dy + dragTargetHeight) {
      return;
    }

    // Move carousel if the drag is within the bounds and near the edges
    if (details.globalPosition.dx >= dragTargetPosition.dx + dragTargetWidth - 50) {
      // Move to the next page if it's not the last page
      if (current < section.tasks.length - 1) {
        controller.nextPage();
      }
    } else if (details.globalPosition.dx <= dragTargetPosition.dx + 50) {
      // Move to the previous page if it's not the first page
      if (current > 0) {
        controller.previousPage();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String sectionName = '';
    if (widget.section.name.contains('To Do')) {
      sectionName = context.localization.todo;
    } else if (widget.section.name.contains('In Progress')) {
      sectionName = context.localization.inProgress;
    } else {
      sectionName = context.localization.done;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 25),
          child: Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: AppColors.cardBackground,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: AppImage.network(imageUrl: widget.section.imageUrl),
                ),
              ),
              const SizedBox(width: 10),
              Text(sectionName, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              const SizedBox(width: 10),
              Text(
                widget.section.tasks.length.toString(),
                style: const TextStyle(fontSize: 14, color: AppColors.lightGrey),
              )
            ],
          ),
        ),
        SizedBox(
          height: 200,
          width: context.width,
          child: DragTarget<Task>(
            key: dragTargetKey,
            onWillAcceptWithDetails: (task) => true,
            onAcceptWithDetails: (task) {
              cubit.taskDragTargetUpdated(task.data, widget.section);
            },
            builder: (context, candidateData, rejectedData) {
              return widget.section.tasks.isEmpty
                  ? const SizedBox()
                  : Column(
                      children: [
                        Flexible(
                          child: CarouselSlider.builder(
                            carouselController: controller,
                            itemCount: widget.section.tasks.length,
                            itemBuilder: (context, index, pageIndex) {
                              return _DraggableTask(
                                section: widget.section,
                                index: index,
                                onDragUpdate: (details) => onDragUpdate(details, index, widget.section),
                              );
                            },
                            options: CarouselOptions(
                                aspectRatio: 2.0,
                                autoPlay: false,
                                enableInfiniteScroll: false,
                                padEnds: false,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    current = index;
                                  });
                                }),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: widget.section.tasks.asMap().entries.map(
                            (entry) {
                              return GestureDetector(
                                onTap: () => controller.animateToPage(entry.key),
                                child: Container(
                                  width: 8.0,
                                  height: 4.0,
                                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: AppColors.lightGrey.withOpacity(current == entry.key ? 0.9 : 0.3)),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    );
            },
          ),
        ),
      ],
    );
  }
}

class _DraggableTask extends StatefulWidget {
  final Section section;
  final int index;
  final Function(DragUpdateDetails) onDragUpdate;

  const _DraggableTask({required this.section, required this.index, required this.onDragUpdate});

  @override
  State<_DraggableTask> createState() => _DraggableTaskState();
}

class _DraggableTaskState extends State<_DraggableTask> with SingleTickerProviderStateMixin {
  final cubit = sl<KanbanCubit>();
  late AnimationController _controller;
  late Animation<double> _animation;
  final taskCubit = sl<TaskCubit>();
  late TimerCubit timerCubit;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _animation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    final task = widget.section.tasks[widget.index];
    final timeTracking = Hive.box<TimeTrackingModel>('task_time_tracking').get(task.id)!;
    timerCubit = TimerCubit(timeTracking);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    timerCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final task = widget.section.tasks[widget.index];

    return BlocBuilder<TaskCubit, TaskState>(
      bloc: taskCubit,
      builder: (context, state) {
        return GestureDetector(
          onDoubleTap: () {
            _showCustomDialog(context, widget.section, task);
          },
          child: LongPressDraggable<Task>(
            onDragUpdate: widget.onDragUpdate,
            onDragStarted: () => _controller.forward(),
            onDraggableCanceled: (_, __) => _controller.reverse(),
            onDragEnd: (_) => _controller.reverse(),
            data: task,
            feedback: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.scale(
                  scale: _animation.value,
                  child: child,
                );
              },
              child: RotationTransition(
                turns: const AlwaysStoppedAnimation(15 / 360),
                child: Material(
                  color: AppColors.cardBackground,
                  borderRadius: BorderRadius.circular(10.0),
                  elevation: 1,
                  child: Container(
                    height: 100,
                    width: context.width - 100,
                    decoration: BoxDecoration(
                      color: AppColors.cardBackground,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                    child: Text(task.content),
                  ),
                ),
              ),
            ),
            child: DragTarget<Task>(
              onWillAcceptWithDetails: (incomingTask) => true,
              onAcceptWithDetails: (incomingTask) {
                cubit.taskDraggableUpdated(widget.index, incomingTask.data, widget.section);
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  key: Key(task.id),
                  height: 100,
                  width: context.width,
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                Text(
                                  task.content,
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                BlocBuilder<TimerCubit, TimerState>(
                                  bloc: timerCubit,
                                  builder: (context, state) {
                                    final isTimerRunning = timerCubit.state.when(
                                      initial: (totalTimeSpent) => false,
                                      running: (secondSpent) => true,
                                      stopped: (totalTimeSpent) => false,
                                    );
                                    return IconButton(
                                        onPressed: () {
                                          isTimerRunning ? timerCubit.stopTimer() : timerCubit.startTimer();
                                          setState(() {});
                                        },
                                        icon: Icon(isTimerRunning ? Icons.pause : Icons.play_arrow));
                                  },
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                  taskCubit.completeTask(widget.section, task);
                                },
                                icon: taskCubit.state == const TaskState.completingTask()
                                    ? const CircularProgressIndicator.adaptive()
                                    : const Icon(
                                        Icons.done,
                                        size: 15,
                                      ),
                              ),
                              IconButton(
                                color: Colors.red.shade300,
                                onPressed: () {
                                  taskCubit.deleteTask(widget.section, task);
                                },
                                icon: taskCubit.state == const TaskState.deletingTask()
                                    ? const CircularProgressIndicator.adaptive()
                                    : Icon(
                                        Icons.delete_outline_outlined,
                                        color: Colors.red.shade600,
                                        size: 15,
                                      ),
                              ),
                            ],
                          )
                        ],
                      ),
                      BlocBuilder<TimerCubit, TimerState>(
                        bloc: timerCubit,
                        builder: (context, state) {
                          final minutes = state.timeSpent ~/ 60;
                          final seconds = state.timeSpent % 60;
                          return Text("Time spent: $minutes:${seconds.toString().padLeft(2, '0')}");
                        },
                      ),
                      Flexible(
                        child: Text(
                          task.description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => CommentBottomSheet(taskId: task.id),
                            );
                          },
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            Icons.comment,
                            color: AppColors.yellow,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  void _showCustomDialog(BuildContext context, Section section, Task task) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black45,
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
        return EditTaskDialog(
          task: task,
          section: section,
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          ),
          child: child,
        );
      },
    );
  }
}
