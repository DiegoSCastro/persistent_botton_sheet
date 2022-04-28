import 'package:flutter/material.dart';
import 'package:persistent_botton_sheet/constants/app_colors.dart';
import 'package:persistent_botton_sheet/constants/app_text_styles.dart';

class FindButton extends StatelessWidget {
  final Color color;
  final String label;
  final String subtitle;
  final IconData prefixIcon;

  const FindButton({
    Key? key,
    required this.color,
    required this.label,
    required this.subtitle,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(
              prefixIcon,
              color: AppColors.white,
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  label,
                  style: AppTextStyles.bodyText2White,
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: AppTextStyles.bodyText1White,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
