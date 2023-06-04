import 'package:alif_calendar/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.onLeadingTap,
    this.leadingIconPath,
  }) : super(key: key);

  final VoidCallback? onLeadingTap;
  final String? leadingIconPath;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 18, top: 12, bottom: 16, right: 18),
        child: Row(
          children: [
            InkWell(
              onTap: onLeadingTap ?? () => context.router.pop(),
              child:
                  SvgPicture.asset(leadingIconPath ?? Assets.icons.backArrow),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
