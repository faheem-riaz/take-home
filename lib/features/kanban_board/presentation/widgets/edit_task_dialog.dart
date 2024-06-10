import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_home/core/components/app_text_form_field.dart';
import 'package:take_home/core/di/service_locator.dart';
import 'package:take_home/core/extensions/e_build_context.dart';
import 'package:take_home/core/theme/app_colors.dart';
import 'package:take_home/features/kanban_board/domain/model/kanban_model.dart';
import 'package:take_home/features/kanban_board/domain/model/section_model.dart';
import 'package:take_home/features/kanban_board/presentation/cubit/task_cubit/task_cubit.dart';

class EditTaskDialog extends StatefulWidget {
  final Section section;
  final Task task;

  const EditTaskDialog({super.key, required this.section, required this.task});

  @override
  State<EditTaskDialog> createState() => _EditTaskDialogState();
}

class _EditTaskDialogState extends State<EditTaskDialog> {
  final TextEditingController contentController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final cubit = sl<TaskCubit>();

  @override
  void initState() {
    contentController.text = widget.task.content;
    descriptionController.text = widget.task.description;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.cardBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: BlocConsumer<TaskCubit, TaskState>(
        bloc: cubit,
        listener: (context, state) {
          state.whenOrNull(
            updatedTask: () => Navigator.pop(context),
          );
        },
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    style: IconButton.styleFrom(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      weight: 5,
                      size: 15,
                    ),
                  ),
                ),
                // Content // Title
                AppTextFormField(
                  controller: contentController,
                  inputType: InputType.text,
                  label: context.localization.title,
                ),
                // Description
                AppTextFormField(
                  controller: descriptionController,
                  inputType: InputType.text,
                  isMultline: true,
                  label: context.localization.description,
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    cubit.updateTask(
                      widget.task.copyWith(content: contentController.text, description: descriptionController.text),
                      widget.section,
                    );
                  },
                  child: cubit.state == const TaskState.updatingTask()
                      ? const CircularProgressIndicator.adaptive()
                      : Text(context.localization.save),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
