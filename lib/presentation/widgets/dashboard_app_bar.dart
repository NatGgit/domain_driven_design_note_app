import 'package:domain_driven_design_note_app/application/auth/auth_bloc.dart';
import 'package:domain_driven_design_note_app/gen/assets.gen.dart';
import 'package:domain_driven_design_note_app/presentation/core/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardAppBar extends StatelessWidget with PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      title: Text(
        'your notes',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      leading: TextButton(
        onPressed: () {
          context.read<AuthBloc>().add(const AuthEvent.signOut());
        },
        child: Assets.images.exit.image(color: AppColors.appBlue),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.indeterminate_check_box,
            color: AppColors.appBlue,
            size: 28,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}
