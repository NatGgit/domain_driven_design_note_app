import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:domain_driven_design_note_app/application/notes/notes_bloc.dart';
import 'package:domain_driven_design_note_app/domain/core/unique_id.dart';
import 'package:domain_driven_design_note_app/domain/notes/base_note_repository.dart';
import 'package:domain_driven_design_note_app/domain/notes/note.dart';
import 'package:domain_driven_design_note_app/domain/notes/note_failures.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNoteRepository extends Mock implements BaseNoteRepository {}

void main() {
  late NotesBloc bloc;
  late MockNoteRepository mockRepo;

  //runs before every test
  setUp(() {
    mockRepo = MockNoteRepository();
    bloc = NotesBloc(mockRepo);
  });

// simplest unit test
  test('test initial values', () {
    expect(
      bloc.state,
      NotesState.initial(),
    );
  });

  group('getAllNotes', () {
    final mockNotes = [
      Note(
        id: UniqueId(),
        text: 'Note 1',
        color: AppColors.appLightBlue,
        timestamp: DateTime.now().subtract(const Duration(seconds: 1)),
      ),
      Note(
        id: UniqueId(),
        text: 'Note 2',
        color: AppColors.appPink,
        timestamp: DateTime.now().subtract(const Duration(seconds: 5)),
      ),
      Note(
        id: UniqueId(),
        text: 'Note 3',
        color: AppColors.appYellow,
        timestamp: DateTime.now().subtract(const Duration(seconds: 10)),
      ),
    ];

    void arrangeRepoReturnsNoteList() {
      when(() => mockRepo.getAllNotes())
          .thenAnswer((invocation) async => Right(mockNotes));
    }

    test('bloc is using note repository', () async {
      arrangeRepoReturnsNoteList();
      bloc.add(const NotesEvent.getAllNotes());
      //this delay is bcs adding event is not asynchronous
      await Future.delayed(const Duration(seconds: 2));
      verify(() => mockRepo.getAllNotes()).called(1);
    });
    test('testing getting notes (success) from bloc the OLD WAY', () async {
      arrangeRepoReturnsNoteList();
      bloc.add(const NotesEvent.getAllNotes());

      expectLater(
          bloc.stream,
          emitsInOrder([
            const NotesState(
              isSubmitting: true,
              allNotes: [],
              failure: null,
            ),
            NotesState(
              allNotes: mockNotes,
              isSubmitting: false,
              failure: null,
            ),
          ]));
    });

    blocTest(
      'testing getting notes (success) from bloc the NEW WAY',
      build: () => NotesBloc(mockRepo),
      act: (bloc) {
        arrangeRepoReturnsNoteList();

        bloc.add(const NotesEvent.getAllNotes());
      },
      expect: () => [
        const NotesState(
          isSubmitting: true,
          allNotes: [],
          failure: null,
        ),
        NotesState(
          allNotes: mockNotes,
          isSubmitting: false,
          failure: null,
        ),
      ],
    );

    blocTest(
      'getNotes - Error',
      build: () => NotesBloc(mockRepo),
      act: (bloc) {
        when(() => mockRepo.getAllNotes()).thenAnswer(
            (invocation) async => const Left(NoteFailure.downloadFailure));

        bloc.add(const NotesEvent.getAllNotes());
      },
      expect: () => [
        const NotesState(
          isSubmitting: true,
          allNotes: [],
          failure: null,
        ),
        const NotesState(
          allNotes: [],
          isSubmitting: false,
          failure: NoteFailure.downloadFailure,
        ),
      ],
    );
  });
}
