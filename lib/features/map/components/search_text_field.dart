import 'package:flutter/material.dart';
import 'package:persistent_botton_sheet/constants/app_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: AppColors.blue,
        ),
        hintText: 'To where',
        iconColor: AppColors.blue,
        contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}
