import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:persistent_botton_sheet/constants/app_colors.dart';
import 'package:persistent_botton_sheet/constants/app_text_styles.dart';
import 'package:persistent_botton_sheet/features/map/components/address_item.dart';
import 'package:persistent_botton_sheet/features/map/components/find_button.dart';
import 'package:persistent_botton_sheet/features/map/components/fixed_bottom_sheet_controller.dart';
import 'package:persistent_botton_sheet/features/map/components/places_item.dart';
import 'package:persistent_botton_sheet/features/map/components/search_text_field.dart';
import 'package:persistent_botton_sheet/models/address.dart';
import 'package:persistent_botton_sheet/models/place.dart';

class FixedBottomSheet extends StatelessWidget {
  final Size size;
  FixedBottomSheet({
    Key? key,
    required this.size,
  }) : super(key: key);

  final controller = FixedBottomSheetController();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return AnimatedPositioned(
        duration: const Duration(milliseconds: 600),
        bottom: controller.expanded ? 0 : -size.height * 0.4,
        child: Container(
          height: size.height * 0.95,
          width: size.width,
          decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 16,
                  offset: Offset(0, 4),
                )
              ]),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onTap: controller.toggleExpanded,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 80),
                      height: 6,
                      width: 150,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: SearchTextField(),
                      ),
                      Row(
                        children: const [
                          FindButton(
                            color: AppColors.amber,
                            prefixIcon: Icons.brush,
                            label: 'Find a spot',
                            subtitle: '16 available',
                          ),
                          SizedBox(width: 8),
                          FindButton(
                            color: AppColors.grey,
                            prefixIcon: Icons.brush,
                            label: 'Find a substitute',
                            subtitle: '6 Searching',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Expanded(
                            child: Text(
                              'Recommended places nearby',
                              style: AppTextStyles.headLine1,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            child: Text(
                              '34 spots available nearby',
                              maxLines: 2,
                              style: AppTextStyles.bodyText1Red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Wrap(
                        runSpacing: 6,
                        spacing: 4,
                        children:
                            placesNearbyList.map((place) => PlacesItem(place: place)).toList(),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Recent places',
                        style: AppTextStyles.headLine1,
                      ),
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: recentPlacesList.length,
                        itemBuilder: (context, index) {
                          final Address address = recentPlacesList[index];
                          return AddressItem(address: address);
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
