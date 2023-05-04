import 'package:domain_driven_design_note_app/application/auth/auth_bloc.dart';
import 'package:domain_driven_design_note_app/generated/assets.gen.dart';
import 'package:domain_driven_design_note_app/generated/l10n.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardAppBar extends StatelessWidget with PreferredSizeWidget {
  final void Function()? showNotesCallback;
  final IconData switchIcon;
  //this is needed bcs otherwise AnimatedSwitcher does not understand that the icon has changed
  final String iconKeyName;

  const DashboardAppBar({
    super.key,
    required this.showNotesCallback,
    required this.switchIcon,
    required this.iconKeyName,
  });

  @override
  Size get preferredSize => const Size(double.infinity, 56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      title: Text(
        S.current.your_notes,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      leading: TextButton(
        onPressed: () {
          context.read<AuthBloc>().add(const AuthEvent.signOut());
        },
        child: Assets.images.exit.image(color: AppColors.appBlue),
      ),
      actions: [
        InkResponse(
          onTap: showNotesCallback,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (child, animation) => ScaleTransition(
              scale: animation,
              child: child,
            ),
            child: Icon(
              switchIcon,
              color: AppColors.appBlue,
              size: 28,
              key: Key(iconKeyName),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
