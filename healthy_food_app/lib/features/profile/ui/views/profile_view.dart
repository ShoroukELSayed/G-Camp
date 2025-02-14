import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/features/profile/ui/widgets/profile_details.dart';
import 'package:healthy_food_app/features/profile/ui/widgets/settings_option.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  static const String id = 'ProfileView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search), Gap(20)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          spacing: 30,
          children: [
            ProfileDetails(),
            SettingsOption(
              option: 'Dietary Preferences',
              icon: Icons.arrow_forward_ios,
            ),
            SettingsOption(
              option: 'My Orders',
              icon: Icons.arrow_forward_ios,
            ),
            SettingsOption(
              option: 'Addresses',
              icon: Icons.arrow_forward_ios,
            ),
            SettingsOption(
              option: 'Payment Methods',
              icon: Icons.arrow_forward_ios,
            ),
            SettingsOption(
              option: 'Promo Codes',
              icon: Icons.arrow_forward_ios,
            ),
            SettingsOption(
              option: 'Support',
              icon: Icons.arrow_forward_ios,
            ),
            SettingsOption(
              option: 'Log out',
              icon: Icons.logout,
            ),
            SettingsOption(
              option: 'Deleat Account',
              icon: Icons.delete,
            ),
          ],
        ),
      ),
    );
  }
}
