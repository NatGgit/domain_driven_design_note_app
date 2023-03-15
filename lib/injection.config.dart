// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain_driven_design_note_app/application/auth/auth_bloc.dart'
    as _i8;
import 'package:domain_driven_design_note_app/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i7;
import 'package:domain_driven_design_note_app/domain/auth/i_auth_facade.dart'
    as _i5;
import 'package:domain_driven_design_note_app/infrastructure/auth/firebase_auth_facade.dart'
    as _i6;
import 'package:domain_driven_design_note_app/infrastructure/core/firebase_injection_module.dart'
    as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
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
    gh.singleton<_i4.GoogleSignIn>(firebaseInjectionModule.googleSignIn);
    gh.lazySingleton<_i5.IAuthFacade>(() => _i6.FirebaseAuthFacade(
          gh<_i3.FirebaseAuth>(),
          gh<_i4.GoogleSignIn>(),
        ));
    gh.factory<_i7.SignInFormBloc>(
        () => _i7.SignInFormBloc(gh<_i5.IAuthFacade>()));
    gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(gh<_i5.IAuthFacade>()));
    return this;
  }
}

class _$FirebaseInjectionModule extends _i9.FirebaseInjectionModule {}
