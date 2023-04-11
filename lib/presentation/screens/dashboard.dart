import 'package:domain_driven_design_note_app/application/notes/notes_bloc.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_dialogs.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/app_circular_progress_indicator.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/dashboard_app_bar.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/note_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    context.read<NotesBloc>().add(const NotesEvent.getAllNotes());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DashboardAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<NotesBloc>().add(NotesEvent.addNote(Note(
              text: 'test', color: Colors.white, timestamp: DateTime.now())));
        },
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 4,
          ),
          child: BlocConsumer<NotesBloc, NotesState>(
            listener: (context, state) {
              if (state.failure != null) {
                AppDialogs.showErrorDialog(
                  context: context,
                  message: state.failure!.message,
                );
              }
            },
            builder: (context, state) {
              if (state.isSubmitting) {
                return const AppCircularProgressIndicator();
              }

              if (state.notes.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Let\'s start adding some notes!',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      Assets.images.rocket
                          .image(width: MediaQuery.of(context).size.width / 3),
                      const SizedBox(
                        height: 64,
                      ),
                    ],
                  ),
                );
              }
              return MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                itemBuilder: (context, index) {
                  final note = state.notes[index];
                  return NoteCard(note: note);
                },
                itemCount: state.notes.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
