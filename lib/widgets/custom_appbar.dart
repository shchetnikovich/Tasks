import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tasks/widgets/custom_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String title = 'Tasks';

  const CustomAppBar({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _paddingSize = MediaQuery.of(context).size.width * 0.12;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        _paddingSize,
        _paddingSize,
        _paddingSize,
        _paddingSize / 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w800,
                fontSize: 56,
                color: Theme.of(context).colorScheme.primary),
          ),
          const CustomButton(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}