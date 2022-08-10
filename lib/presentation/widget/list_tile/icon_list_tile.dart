import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swim/service/theme_service.dart';

class IconListTile extends StatelessWidget {
  const IconListTile({
    Key? key,
    this.title,
    this.trailingText,
    this.trailing,
    this.onPressed,
  }) : super(key: key);
  final String? title;
  final String? trailingText;
  final Widget? trailing;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, _) {
        return ListTile(
          title: Row(
            children: [
              if (title != null) Text(title!),
              const Spacer(),
              if (trailingText != null)
                Text(
                  trailingText!,
                  style: themeService.small.copyWith(
                    color: themeService.hintColor,
                  ),
                ),
            ],
          ),
          trailing: trailing,
          onTap: onPressed,
        );
      },
    );
  }
}
