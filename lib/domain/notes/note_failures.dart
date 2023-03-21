enum NoteFailure {
  downloadFailure(
      message:
          'There was a problem with downloading your notes, please try again'),
  deleteFailure(
      message: 'There was a problem with deleting your note, please try again'),
  noteNotCreated(
      message: 'There was a problem with creating your note, please try again'),
  generalFailure(message: 'Something went wrong');

  const NoteFailure({required this.message});

  final String message;
}
