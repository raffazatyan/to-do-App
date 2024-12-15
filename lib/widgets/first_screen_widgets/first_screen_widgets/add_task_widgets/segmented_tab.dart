import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:application/provider_models/list_model.dart';

import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SegmentedTabWidgets extends StatefulWidget {
  const SegmentedTabWidgets({super.key});

  @override
  State<SegmentedTabWidgets> createState() => _TwoRowWidgetsState();
}

class _TwoRowWidgetsState extends State<SegmentedTabWidgets>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(onTabChanged);
  }

  void onTabChanged() {
    final segmentedProvider = Provider.of<ListModel>(context, listen: false);
    segmentedProvider.segmentedTabCurrentIndex = _tabController.index;
  }

  @override
  void dispose() {
    _tabController.removeListener(onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final segmentedProvider = Provider.of<ListModel>(context, listen: false);
    return SizedBox(
      height: rh(context) * 35,
      width: rw(context) * 326,
      child: Builder(builder: (context) {
        _tabController.index = segmentedProvider.button - 1;
        return SegmentedTabControl(
          controller: _tabController,
          textStyle: getStyle(
              context: context, fontSize: 14, fontWeight: FontWeight.w500),
          indicatorPadding: const EdgeInsets.all(2),
          tabTextColor: AppColors.colorBlackOpacity04,
          indicatorDecoration: BoxDecoration(
            color: const Color.fromRGBO(242, 170, 145, 1),
            borderRadius: BorderRadius.circular(16),
          ),
          barDecoration: BoxDecoration(
            color: AppColors.colorBackgroundCloseButton008,
            borderRadius: BorderRadius.circular(16),
          ),
          tabs: const [
            SegmentTab(
              label: "Work",
            ),
            SegmentTab(
              label: "Meetings",
            ),
            SegmentTab(
              label: "Home",
            ),
          ],
          selectedTabTextColor: AppColors.colorWhite,
        );
      }),
    );
  }
}
