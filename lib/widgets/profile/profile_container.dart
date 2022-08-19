import 'package:chefio/gen/assets.gen.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:chefio/widgets/profile/social_count.dart';
import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Assets.images.profileImage.image(scale: 2),
          const Text(
            'Choirul Syafril',
            style: KTextStyle.mediumMainText,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              socialCount(count: '32', header: 'Recipes'),
              socialCount(count: '782', header: 'Following'),
              socialCount(count: '1287', header: 'Followers'),
            ],
          ),
        ],
      ),
    );
  }
}
