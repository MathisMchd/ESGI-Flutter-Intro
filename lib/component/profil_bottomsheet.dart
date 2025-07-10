import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Profilebottomsheet extends StatelessWidget {
  const Profilebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    void onClosing() {
      debugPrint("Profile BottomSheet is closing.");
    }

    Widget builder(BuildContext context) {
      return Container(
        height: 250,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text('Profile Options'),
             Gap(20),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Edit Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Log Out'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    }
    return BottomSheet(
      onClosing: onClosing,
      builder: builder,
    );
  }
}