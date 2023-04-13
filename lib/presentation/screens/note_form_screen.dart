import 'package:domain_driven_design_note_app/application/notes/add_note_cubit/note_form_cubit.dart';
import 'package:domain_driven_design_note_app/application/notes/notes_bloc.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_dialogs.dart';
import 'package:domain_driven_design_note_app/presentation/routes/app_router.gr.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/form_app_bar.dart';
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
      context.read<NoteFormCubit>().changeTitle(widget.noteToEdit!.title ?? '');
      context.read<NoteFormCubit>().changeText(widget.noteToEdit!.text);
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
      child: BlocBuilder<NoteFormCubit, NoteFormState>(
        builder: (context, formState) {
          return Scaffold(
            backgroundColor: AppColors.appYellow,
            appBar: FormAppBar(
              isEdit: isEdit,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  widget.noteToEdit != null
                      ? context.read<NotesBloc>().add(NotesEvent.editNote(
                          widget.noteToEdit!.copyWith(
                              title: titleController.text,
                              text: textController.text)))
                      : context.read<NotesBloc>().add(NotesEvent.addNote(
                          context.read<NoteFormCubit>().state));
                }
              },
            ),
            body: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: titleController,
                      maxLength: 60,
                      decoration: const InputDecoration(
                        labelText: 'title',
                      ),
                      onChanged: (value) {
                        context.read<NoteFormCubit>().changeTitle(value);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: textController,
                      maxLines: 5,
                      maxLength: 1000,
                      decoration: const InputDecoration(
                        alignLabelWithHint: true,
                        labelText: 'note text',
                      ),
                      onChanged: (value) {
                        context.read<NoteFormCubit>().changeText(value);
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter note text';
                        }
                        return null;
                      },
                    ),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container();
                        }),
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
