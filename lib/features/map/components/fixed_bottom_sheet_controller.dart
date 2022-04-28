import 'package:mobx/mobx.dart';

part 'fixed_bottom_sheet_controller.g.dart';

class FixedBottomSheetController = _FixedBottomSheetController with _$FixedBottomSheetController;

abstract class _FixedBottomSheetController with Store {
  @observable
  bool expanded = true;
  @action
  void toggleExpanded() => expanded = !expanded;
}
