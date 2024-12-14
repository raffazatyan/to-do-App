import 'package:application/provider_models/list_model.dart';
import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DateWidgets extends StatefulWidget {
  const DateWidgets({super.key});

  @override
  State<DateWidgets> createState() => _DateWidgetsState();
}

class _DateWidgetsState extends State<DateWidgets> {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<ListModel>(context);
    return Padding(
      padding: const EdgeInsets.only(
          // top: 0,
          // left: 16,
          // right: 16,
          ),
      child: SizedBox(
        width: rw(context) * 326,
        height: rh(context) * 72,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Date",
              style: getStyle(
                  context: context, fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: GestureDetector(
                onTap: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => SizedBox(
                      height: rh(context) * 220,
                      child: Container(
                        color: Colors.white,
                        child: CupertinoDatePicker(
                          backgroundColor: Colors.white,
                          initialDateTime: dataProvider.initial,
                          onDateTimeChanged: dataProvider.dateFunct,
                          use24hFormat: true,
                          minimumDate: dataProvider.initial,
                          mode: CupertinoDatePickerMode.date,
                        ),
                      ),
                    ),
                  );
                },
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: rh(context) * 40,
                      width: rw(context) * 326,
                      decoration: BoxDecoration(
                        color: AppColors.colorBackgroundCloseButton008,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: rw(context) * 16,
                          ),
                          SvgPicture.asset(
                              "assets/first_screen_images/bx-calendar.svg"),
                          SizedBox(
                            width: rw(context) * 10,
                          ),
                          Text(
                            DateFormat('dd.MM.yyyy')
                                .format(dataProvider.initial),
                            style: getStyle(
                              context: context,
                              fontSize: 16,
                              color: AppColors.colorFullBlack,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
