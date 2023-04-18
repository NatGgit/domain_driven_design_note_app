import 'package:domain_driven_design_note_app/application/notes/add_note_cubit/note_form_cubit.dart';
import 'package:domain_driven_design_note_app/application/notes/notes_bloc.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_dialogs.dart';
import 'package:domain_driven_design_note_app/presentation/routes/app_router.gr.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/note_form/add_todo_widget.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/note_form/form_app_bar.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/note_form/note_color_picker_widget.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/note_form/note_text_field_widget.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/note_form/note_title_field_widget.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/note_form/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteFormScreen extends StatefulWidget {
  final Note? noteToEdit;
  const NoteFormScreen({super.key, this.noteToEdit});

  @override
  State<NoteFormScreen> createState() => _NoteFormScreenState();
}

class _NoteFormScreenState extends State<NoteFormScreen> {
  late final bool isEdit;
  late final TextEditingController titleController;
  late final TextEditingController textController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    isEdit = widget.noteToEdit != null;
    titleController = TextEditingController(text: widget.noteToEdit?.title);
    textController = TextEditingController(text: widget.noteToEdit?.text);
    if (isEdit) {
      context.read<NoteFormCubit>().changeTitle(widget.noteToEdit!.title);
      context.read<NoteFormCubit>().changeText(widget.noteToEdit!.text);
      context.read<NoteFormCubit>().changeColor(widget.noteToEdit!.color);
      context.read<NoteFormCubit>().addAllTodos(widget.noteToEdit!.todos);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NotesBloc, NotesState>(
      listener: (context, state) {
        if (state.failure != null) {
          AppDialogs.showErrorDialog(
              context: context, message: state.failure!.message);
        } else if (state.isSubmitting) {
          AppDialogs.showProgressDialog(context);
        } else if (!state.isSubmitting) {
          Navigator.popUntil(
              context, (route) => route.settings.name == DashboardRoute.name);
        }
      },
      child: BlocConsumer<NoteFormCubit, NoteFormState>(
        listenWhen: (previous, current) =>
            previous.todos.length != current.todos.length,
        listener: (context, state) {
          if (state.todos.length == AppConstants.maxTodosNumber) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Todos number limit reached'),
                backgroundColor: AppColors.appBlue,
                duration: Duration(seconds: 3),
              ),
            );
          }
        },
        builder: (context, state) {
          final todoAddingEnabled =
              state.todos.length < AppConstants.maxTodosNumber;
          return Scaffold(
            backgroundColor: AppColors.appYellow,
            appBar: FormAppBar(
              isEdit: isEdit,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  widget.noteToEdit != null
                      ? context
                          .read<NotesBloc>()
                          .add(NotesEvent.editNote(widget.noteToEdit!.copyWith(
                            title: titleController.text,
                            text: textController.text,
                            color: state.noteColor!,
                            todos: state.todos,
                          )))
                      : context.read<NotesBloc>().add(NotesEvent.addNote(
                          context.read<NoteFormCubit>().state));
                  context.read<NoteFormCubit>().clear();
                }
              },
            ),
            body: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          NoteTitleFieldWidget(
                              titleController: titleController),
                          const SizedBox(
                            height: 16,
                          ),
                          NoteTextFieldWidget(textController: textController),
                        ],
                      ),
                    ),
                    const NoteColorPickerWidget(),
                    TodoList(
                      todos: state.todos,
                    ),
                    AddTodoWidget(todoAddingEnabled: todoAddingEnabled),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
