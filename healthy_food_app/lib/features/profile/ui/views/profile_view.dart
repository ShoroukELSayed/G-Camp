import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthy_food_app/features/auth/ui/views/login_view.dart';
import 'package:healthy_food_app/features/profile/data/settings_option_model.dart';
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
              settingsOptionModel: SettingsOptionModel(
                option: 'Dietary Preferences',
                icon: Icons.arrow_forward_ios,
              ),
            ),
            SettingsOption(
              settingsOptionModel: SettingsOptionModel(
                option: 'My Orders',
                icon: Icons.arrow_forward_ios,
              ),
            ),
            SettingsOption(
              settingsOptionModel: SettingsOptionModel(
                option: 'Addresses',
                icon: Icons.arrow_forward_ios,
              ),
            ),
            SettingsOption(
              settingsOptionModel: SettingsOptionModel(
                option: 'Payment Methods',
                icon: Icons.arrow_forward_ios,
              ),
            ),
            SettingsOption(
              settingsOptionModel: SettingsOptionModel(
                option: 'Promo Codes',
                icon: Icons.arrow_forward_ios,
              ),
            ),
            SettingsOption(
              settingsOptionModel: SettingsOptionModel(
                option: 'Support',
                icon: Icons.arrow_forward_ios,
              ),
            ),
            SettingsOption(
              settingsOptionModel: SettingsOptionModel(
                option: 'Log out',
                icon:Icons.logout,
                onTap: () {
                Navigator.pushNamed(context, LoginView.id);
              },
              ),
            ),
            SettingsOption(
              settingsOptionModel: SettingsOptionModel(
                option: 'Deleat Account',
                icon: Icons.delete,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
