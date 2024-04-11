import 'package:auto_route/auto_route.dart';
import 'package:domain_driven_design_note_app/application/notes/notes_bloc.dart';
import 'package:domain_driven_design_note_app/generated/assets.gen.dart';
import 'package:domain_driven_design_note_app/generated/l10n.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_dialogs.dart';
import 'package:domain_driven_design_note_app/presentation/routes/app_router.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/common/app_circular_progress_indicator.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/dashboard/note_card.dart';
import 'package:domain_driven_design_note_app/presentation/widgets/dashboard_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool showOnlyUncompleted = false;

  @override
  void initState() {
    context.read<NotesBloc>().add(const NotesEvent.getAllNotes());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 56),
        child: DashboardAppBar(
          switchIcon: showOnlyUncompleted
              ? Icons.indeterminate_check_box
              : Icons.check_box_outline_blank,
          iconKeyName: showOnlyUncompleted ? 'indeterminate' : 'outlined',
          showNotesCallback: () {
            setState(() {
              showOnlyUncompleted = !showOnlyUncompleted;
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AutoRouter.of(context).push(NoteFormRoute());
        },
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          size: 32,
          color: Colors.white,
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

              if (state.allNotes.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        S.current.lets_start,
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
              } else {
                final notesToShow = showOnlyUncompleted
                    ? state.allNotes
                        .where((note) => note.todos.any((todo) => !todo.isDone))
                        .toList()
                    : state.allNotes;
                return MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  itemBuilder: (context, index) {
                    final note = notesToShow[index];
                    return NoteCard(note: note);
                  },
                  itemCount: notesToShow.length,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
