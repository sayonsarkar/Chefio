import 'package:chefio/gen/assets.gen.dart';
import 'package:chefio/utilities/colors.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:chefio/widgets/notification/app_small_btn.dart';
import 'package:chefio/widgets/notification/rich_text.dart';
import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final int index;
  const NotificationTile({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: index == 0
          ? Assets.images.notificationAltImg.image(scale: 2)
          : Assets.images.notificationImage.image(scale: 2),
      title: index == 2
          ? richText()
          : Text(
              index == 0 ? 'John Steve' : 'Dean Winchester',
              style: KTextStyle.boldMainText,
            ),
      subtitle: Text(
        index == 2 ? 'liked your recipe ・ 20 min' : 'Now following you',
        style: KTextStyle.smallGreyText,
      ),
      trailing: index == 0
          ? const AppSmallBtn()
          : index == 1
              ? const AppSmallBtn(
                  color: Kcolor.appBtnGreyColor,
                  width: 120,
                  text: 'Followed',
                  textStyle: KTextStyle.smallGreyText,
                )
              : Assets.images.notificationTrailImg.image(scale: 2),
    );
  }
}
