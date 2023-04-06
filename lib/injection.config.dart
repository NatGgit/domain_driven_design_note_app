// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:domain_driven_design_note_app/application/auth/auth_bloc.dart'
    as _i12;
import 'package:domain_driven_design_note_app/application/notes/add_note_bloc/add_note_form_bloc.dart'
    as _i11;
import 'package:domain_driven_design_note_app/application/notes/notes_bloc.dart'
    as _i10;
import 'package:domain_driven_design_note_app/domain/auth/base_auth_repository.dart'
    as _i6;
import 'package:domain_driven_design_note_app/domain/notes/base_note_repository.dart'
    as _i8;
import 'package:domain_driven_design_note_app/infrastructure/auth/firebase_auth_repository.dart'
    as _i7;
import 'package:domain_driven_design_note_app/infrastructure/core/firebase_injection_module.dart'
    as _i13;
import 'package:domain_driven_design_note_app/infrastructure/notes/firebase_note_repository.dart'
    as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectionModule = _$FirebaseInjectionModule();
    gh.singleton<_i3.FirebaseAuth>(firebaseInjectionModule.firebaseAuth);
    gh.singleton<_i4.FirebaseFirestore>(firebaseInjectionModule.firestore);
    gh.singleton<_i5.GoogleSignIn>(firebaseInjectionModule.googleSignIn);
    gh.lazySingleton<_i6.BaseAuthRepository>(() => _i7.FirebaseAuthRepository(
          gh<_i3.FirebaseAuth>(),
          gh<_i5.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i8.BaseNoteRepository>(
        () => _i9.FirebaseNoteRepository(gh<_i4.FirebaseFirestore>()));
    gh.factory<_i10.NotesBloc>(
        () => _i10.NotesBloc(gh<_i8.BaseNoteRepository>()));
    gh.factory<_i11.AddNoteFormBloc>(
        () => _i11.AddNoteFormBloc(gh<_i8.BaseNoteRepository>()));
    gh.factory<_i12.AuthBloc>(
        () => _i12.AuthBloc(gh<_i6.BaseAuthRepository>()));
    return this;
  }
}

class _$FirebaseInjectionModule extends _i13.FirebaseInjectionModule {}
