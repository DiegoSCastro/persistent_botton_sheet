import 'package:flutter/material.dart';
import 'package:persistent_botton_sheet/features/map/components/fixed_bottom_sheet.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: Image.asset(
              'assets/images/img1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          FixedBottomSheet(
            size: size,
          ),
        ],
      ),
    );
  }
}
