import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_home/core/components/app_text_form_field.dart';
import 'package:take_home/core/di/service_locator.dart';
import 'package:take_home/core/enums/task_priority.dart';
import 'package:take_home/core/extensions/e_build_context.dart';
import 'package:take_home/core/theme/app_colors.dart';
import 'package:take_home/core/utils/extension_util.dart';
import 'package:take_home/features/kanban_board/presentation/cubit/task_cubit/task_cubit.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final _formKey = GlobalKey<FormState>();
  final cubit = sl<TaskCubit>();
  final TextEditingController contentConroller = TextEditingController();
  final TextEditingController descrptionController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController durationController = TextEditingController();
  final TextEditingController durationUnitController = TextEditingController();
  TaskDuration? selectedTaskDuration;
  TaskPriority? selectedTaskPriority;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskCubit, TaskState>(
      bloc: cubit,
      listener: (context, state) {
        state.whenOrNull(
          addedTask: () => Navigator.pop(context),
        );
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    // Create a new task
                    if (_formKey.currentState!.validate()) {
                      cubit.addTask(
                        content: contentConroller.text,
                        description: descrptionController.text,
                        priority: selectedTaskPriority!.index,
                        duration: int.parse(durationController.text),
                        dueDate: dateController.text,
                        durationUnit: selectedTaskDuration!.name,
                      );
                    }
                  },
                  child: cubit.state == const TaskState.addingTask()
                      ? const CircularProgressIndicator.adaptive()
                      : Text(context.localization.save),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Content // Title
                    AppTextFormField(
                      controller: contentConroller,
                      inputType: InputType.text,
                      label: context.localization.title,
                    ),
                    // Description
                    AppTextFormField(
                      controller: descrptionController,
                      inputType: InputType.text,
                      isMultline: true,
                      label: context.localization.description,
                    ),
                    // Priority
                    Row(
                      children: [
                        Flexible(
                          child: DropdownButtonFormField<TaskPriority>(
                            dropdownColor: AppColors.cardBackground,
                            items: [
                              DropdownMenuItem(
                                value: TaskPriority.highest,
                                child: Text(TaskPriority.highest.name.capitalize()),
                              ),
                              DropdownMenuItem(
                                value: TaskPriority.high,
                                child: Text(TaskPriority.high.name.capitalize()),
                              ),
                              DropdownMenuItem(
                                value: TaskPriority.medium,
                                child: Text(TaskPriority.medium.name.capitalize()),
                              ),
                              DropdownMenuItem(
                                value: TaskPriority.low,
                                child: Text(TaskPriority.low.name.capitalize()),
                              ),
                            ],
                            onChanged: (value) {
                              selectedTaskPriority = value;
                              setState(() {});
                            },
                            hint: Text(context.localization.priority),
                          ),
                        ),
                        const SizedBox(width: 10),
                        // Duration unit
                        Flexible(
                          child: DropdownButtonFormField(
                            dropdownColor: AppColors.cardBackground,
                            items: [
                              DropdownMenuItem(
                                value: TaskDuration.day,
                                child: Text(TaskDuration.day.name.capitalize()),
                              ),
                              DropdownMenuItem(
                                value: TaskDuration.minute,
                                child: Text(TaskDuration.minute.name.capitalize()),
                              ),
                            ],
                            onChanged: (value) {
                              selectedTaskDuration = value;
                              setState(() {});
                            },
                            hint: Text(context.localization.durationUnit),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: InkWell(
                            onTap: () {
                              showDatePicker(
                                context: context,
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now().add(const Duration(days: 100)),
                              ).then((value) {
                                if (value != null) {
                                  setState(() {
                                    dateController.text = value.formatDate();
                                  });
                                }
                              });
                            },
                            child: AppTextFormField(
                              controller: dateController,
                              isEnabled: false,
                              label: context.localization.dueDate,
                              inputType: InputType.text,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        // Duration
                        Flexible(
                          child: AppTextFormField(
                            inputType: InputType.number,
                            label: context.localization.duration,
                            controller: durationController,
                          ),
                        ),
                      ],
                    ),
                    // Due Date
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
