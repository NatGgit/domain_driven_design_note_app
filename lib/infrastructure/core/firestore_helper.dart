import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domain_driven_design_note_app/domain/auth/base_auth_repository.dart';
import 'package:domain_driven_design_note_app/injection.dart';

extension FirestoreX on FirebaseFirestore {
  DocumentReference? userDocument() {
    final user = getIt<BaseAuthRepository>().getSignedInUser();
    if (user != null) {
      return FirebaseFirestore.instance.collection('users').doc(user.id.value);
    }
    return null;
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}
