import 'package:application/provider_models/list_model.dart';
import 'package:application/widgets/app_styles/colors.dart';
import 'package:application/widgets/app_styles/app_styles.dart';
import 'package:application/widgets/first_screen_widgets/first_screen_widgets/buttons_and_text_widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ListTaskWidget extends StatefulWidget {
  const ListTaskWidget({super.key});

  @override
  State<ListTaskWidget> createState() => _FullTaskWidgetState();
}

class _FullTaskWidgetState extends State<ListTaskWidget> {
  @override
  void initState() {
    Provider.of<ListModel>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final providerList = Provider.of<ListModel>(context);
    providerList.returnedModel();
    return providerList.filteredTasks.isNotEmpty
        ? SizedBox(
            height: rh(context) * 160,
            width: rw(context) * 363,
            child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final dateTextEdit = providerList.filteredTasks[index].date;
                  return GestureDetector(
                    onTap: () {
                      Provider.of<ListModel>(context, listen: false)
                          .toggleTaskComplaction(
                              providerList.filteredTasks[index]);
                    },
                    child: Dismissible(
                      key: Key(providerList.filteredTasks[index].id),
                      onDismissed: (direction) {
                        HapticFeedback.mediumImpact();
                        providerList
                            .revomeTask(providerList.filteredTasks[index].id);
                      },
                      direction:
                          providerList.filteredTasks[index].showDeleteIcon
                              ? DismissDirection.endToStart
                              : DismissDirection.none,
                      child: SizedBox(
                        height: rh(context) * 46,
                        child: Row(
                          children: [
                            SizedBox(
                              width: rw(context) * 24,
                              height: rh(context) * 24,
                              child: Checkbox(
                                checkColor: Colors.white,
                                activeColor: AppColors.colorBlue,
                                value: providerList
                                    .filteredTasks[index].isComplate,
                                side: const BorderSide(
                                  width: 1.5,
                                  color: AppColors.colorBlackOpacity04,
                                ),
                                onChanged: (value) {
                                  Provider.of<ListModel>(context, listen: false)
                                      .toggleTaskComplaction(
                                          providerList.filteredTasks[index]);
                                },
                              ),
                            ),
                            SizedBox(
                              width: rw(context) * 11,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      providerList.filteredTasks[index].tittle,
                                      style: TextStyle(
                                        decoration: providerList
                                                .filteredTasks[index].isComplate
                                            ? TextDecoration.lineThrough
                                            : TextDecoration.none,
                                        fontWeight: FontWeight.w500,
                                        fontSize: rh(context) * 16,
                                        color: !providerList
                                                .filteredTasks[index].isComplate
                                            ? AppColors.colorBlack
                                            : AppColors.colorBlackOpacity04,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    DateFormat('dd.MM.yyyy')
                                        .format(dateTextEdit),
                                    style: getStyle(
                                        context: context,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.colorBlackOpacity04),
                                  ),
                                ],
                              ),
                            ),
                            Visibility(
                              visible: providerList
                                  .filteredTasks[index].showDeleteIcon,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: rw(context) * 5,
                                  left: rw(context) * 12,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    providerList.revomeTask(
                                        providerList.filteredTasks[index].id);
                                  },
                                  child: SvgPicture.asset(
                                      "assets/first_screen_images/cross.svg"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  double intDivider = 0;
                  if (providerList.filteredTasks[index].isComplate) {
                    intDivider = rw(context) * 27;
                  }
                  return Padding(
                    padding: EdgeInsets.only(
                        right: intDivider, left: rw(context) * 37),
                    child: Divider(
                      color: AppColors.colorDivider,
                      height: rh(context) * 0,
                    ),
                  );
                },
                itemCount: providerList.filteredTasks.length),
          )
        : const HomeImageWhenTaskEmpty();
  }
}
