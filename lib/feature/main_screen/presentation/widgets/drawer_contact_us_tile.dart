import 'package:flutter/material.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/app_drawer_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerContactUsTile extends StatefulWidget {
  const DrawerContactUsTile({super.key});

  @override
  State<DrawerContactUsTile> createState() => _DrawerContactUsTileState();
}

class _DrawerContactUsTileState extends State<DrawerContactUsTile> {
  bool _isExpanded = false;

  Future<void> _makeCall() async {
    final Uri uri = Uri(scheme: 'tel', path: '');
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    } catch (e) {
      debugPrint('Could not launch call: $e');
    }
  }

  Future<void> _openWhatsApp() async {
    final Uri uri = Uri.parse('https://wa.me/');
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      debugPrint('Could not launch WhatsApp: $e');
    }
  }

  Future<void> _sendEmail() async {
    final Uri uri = Uri(scheme: 'mailto', path: '');
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    } catch (e) {
      debugPrint('Could not launch Email: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AppDrawerTile(
          icon: Icons.support_agent_rounded,
          tileName: context.lang.contactUs,
          onPress: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          child: _isExpanded
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppDrawerTile(
                      padding: const EdgeInsets.only(
                        left: 36,
                        right: 14,
                        top: 1,
                        bottom: 1,
                      ),
                      icon: Icons.phone_outlined,
                      tileName: context.lang.call,
                      onPress: _makeCall,
                    ),
                    AppDrawerTile(
                      padding: const EdgeInsets.only(
                        left: 36,
                        right: 14,
                        top: 1,
                        bottom: 1,
                      ),
                      icon: Icons.chat_bubble_outline,
                      tileName: context.lang.whatsApp,
                      onPress: _openWhatsApp,
                    ),
                    AppDrawerTile(
                      padding: const EdgeInsets.only(
                        left: 36,
                        right: 14,
                        top: 1,
                        bottom: 1,
                      ),
                      icon: Icons.email_outlined,
                      tileName: context.lang.email,
                      onPress: _sendEmail,
                    ),
                  ],
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
