import 'package:flutter/material.dart';
import 'package:mappy/variables.dart';

class UAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;

  const UAppbar({super.key, this.leading});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
    leading: leading,
    title: ValueListenableBuilder(
      valueListenable: titleNotifier,
      builder: (context, value, child) {
        return Text(
          value.toString(),
          // Do not override the style; let it inherit from the theme
        );
      },
    ),
  );
}
