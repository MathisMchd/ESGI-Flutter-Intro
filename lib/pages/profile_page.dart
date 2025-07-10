import 'package:flutter/material.dart';
import 'package:intro_flutter/component/activity_section_liked.dart';
import 'package:intro_flutter/component/tiles/long_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres'),
      ),
      body: Column(
        children: [
          LongTile(
            title: 'Enregistrement',
            icon: Icons.bookmark_border,
            onTap: () {
              print('Naviguer vers les enregistrements');
            },
          ),
          LongTile(
            title: 'Archive',
            icon: Icons.archive_outlined,
            onTap: () {
              print('Naviguer vers les archives');
            },
          ),
          LongTile(
            title: 'Votre activité',
            icon: Icons.access_time,
            onTap: () {
              print('Naviguer vers l\'activité');
            },
          ),
          LongTile(
            title: 'Notifications',
            icon: Icons.notifications_none,
            onTap: () {
              print('Naviguer vers les notifications');
            },
          ),
          LongTile(
            title: 'Mode sombre',
            icon: Icons.dark_mode_outlined,
            trailing: Switch(
              value: false,
              onChanged: (bool value) {
                print('Mode sombre activé: $value');
              },
            ),
          ),
          LongTile(
            title: 'Se déconnecter',
            onTap: () {
              print('Déconnexion');
            },
            trailing: null,
          ),
        ],
      ),
    );
  }
}
