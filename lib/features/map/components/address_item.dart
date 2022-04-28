import 'package:flutter/material.dart';
import 'package:persistent_botton_sheet/constants/app_colors.dart';
import 'package:persistent_botton_sheet/constants/app_text_styles.dart';
import 'package:persistent_botton_sheet/models/address.dart';

class AddressItem extends StatelessWidget {
  final Address address;
  const AddressItem({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Icon(
                Icons.alarm,
                color: AppColors.blue,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      address.label,
                      style: AppTextStyles.bodyText2,
                    ),
                    Text(
                      address.completeAddress,
                      style: AppTextStyles.bodyText1Grey,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_upward,
                color: AppColors.blue,
              ),
            ],
          ),
        ),
        Divider(
          height: 0,
        ),
      ],
    );
  }
}
