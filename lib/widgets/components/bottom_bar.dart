import 'package:chefio/gen/assets.gen.dart';
import 'package:chefio/screens/notification/notification_screen.dart';
import 'package:chefio/screens/profile/profile_page.dart';
import 'package:chefio/utilities/colors.dart';
import 'package:chefio/widgets/bottomBar/modal_scan_sheet.dart';
import 'package:chefio/widgets/bottomBar/selected_item.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  static const String id = '/bottomBar';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    const NotificationScreen(),
    const ProfilePage(),
  ];

  onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Kcolor.appGreenColor,
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            context: context,
            builder: (BuildContext context) {
              return const ModalScanSheet();
            },
          );
        },
        child: Assets.icons.scan.image(scale: 2),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    selectedItem(
                      onTap: () {
                        onItemTapped(0);
                      },
                      icon: Assets.icons.home.image(
                        scale: 2,
                        color: _selectedIndex == 0
                            ? Kcolor.appGreenColor
                            : Kcolor.textGrey,
                      ),
                      title: 'Home',
                      index: 0,
                      selected: _selectedIndex,
                    ),
                    selectedItem(
                      onTap: () {
                        onItemTapped(1);
                      },
                      icon: Assets.icons.edit.image(
                        scale: 2,
                        color: _selectedIndex == 1
                            ? Kcolor.appGreenColor
                            : Kcolor.textGrey,
                      ),
                      title: 'Upload',
                      selected: _selectedIndex,
                      index: 1,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    selectedItem(
                      onTap: () {
                        onItemTapped(2);
                      },
                      icon: Assets.icons.notification.image(
                        scale: 2,
                        color: _selectedIndex == 2
                            ? Kcolor.appGreenColor
                            : Kcolor.textGrey,
                      ),
                      title: 'Notification',
                      index: 2,
                      selected: _selectedIndex,
                    ),
                    selectedItem(
                      onTap: () {
                        onItemTapped(3);
                      },
                      icon: Assets.icons.profile.image(
                        scale: 2,
                        color: _selectedIndex == 3
                            ? Kcolor.appGreenColor
                            : Kcolor.textGrey,
                      ),
                      title: 'Profile',
                      index: 3,
                      selected: _selectedIndex,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
