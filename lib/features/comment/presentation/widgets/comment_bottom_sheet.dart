import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_home/core/di/service_locator.dart';
import 'package:take_home/core/extensions/e_build_context.dart';
import 'package:take_home/features/comment/presentation/cubit/comment_cubit.dart';

class CommentBottomSheet extends StatefulWidget {
  final String taskId;
  const CommentBottomSheet({super.key, required this.taskId});

  @override
  State<CommentBottomSheet> createState() => _CommentBottomSheetState();
}

class _CommentBottomSheetState extends State<CommentBottomSheet> {
  final cubit = sl<CommentCubit>();
  final TextEditingController contentController = TextEditingController();
  @override
  void initState() {
    cubit.getAllComment(widget.taskId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentCubit, CommentState>(
      bloc: cubit,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              TextFormField(
                controller: contentController,
                decoration: InputDecoration(
                  suffixIcon: cubit.state == const CommentState.addingComment()
                      ? const CircularProgressIndicator.adaptive()
                      : TextButton(
                          onPressed: () {
                            cubit.addComment(widget.taskId, contentController.text);
                            contentController.text = '';
                          },
                          child: Text(context.localization.save),
                        ),
                  hintText: context.localization.addAComment,
                ),
              ),
              cubit.state == const CommentState.loading()
                  ? const CircularProgressIndicator.adaptive()
                  : cubit.comments.isEmpty
                      ? Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(context.localization.noCommentsAvaialble),
                        )
                      : Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: ListView.builder(
                              itemCount: cubit.comments.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("- ${cubit.comments[index].content}"),
                                );
                              },
                            ),
                          ),
                        ),
            ],
          ),
        );
      },
    );
  }
}
