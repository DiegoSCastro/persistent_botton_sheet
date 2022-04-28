import 'package:flutter/material.dart';
import 'package:persistent_botton_sheet/constants/app_colors.dart';
import 'package:persistent_botton_sheet/constants/app_text_styles.dart';
import 'package:persistent_botton_sheet/models/place.dart';

class PlacesItem extends StatelessWidget {
  final Place place;

  const PlacesItem({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.lightGrey,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Colors.black12,
              offset: Offset(0, 2),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                place.icon,
                size: 16,
              ),
              const SizedBox(width: 6),
              Text(
                '${place.distance}km away',
                style: AppTextStyles.bodyText1,
              )
            ],
          ),
          Text(
            place.label,
            style: AppTextStyles.bodyText2,
          ),
        ],
      ),
    );
  }
}
