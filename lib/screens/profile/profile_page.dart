import 'package:chefio/gen/assets.gen.dart';
import 'package:chefio/widgets/profile/profile_container.dart';
import 'package:chefio/widgets/profile/tab_view.dart';
import 'package:chefio/utilities/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: [
            Assets.icons.share.image(scale: 2),
          ],
        ),
      ),
      backgroundColor: Kcolor.appBtnGreyColor,
      body: Column(
        children: [
          const ProfileContainer(),
          const SizedBox(height: 10),
          TabView(tabController: tabController),
        ],
      ),
    );
  }
}
