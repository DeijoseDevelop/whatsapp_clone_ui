import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/src/data/models/contact.dart';
import 'package:whatsapp_clone_ui/src/ui/theme/colors.dart';
import 'package:whatsapp_clone_ui/src/ui/widgets/widgets.dart';

class WhatsappContact extends StatelessWidget {
  const WhatsappContact({required this.contact, super.key});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        highlightColor: WhatsAppColors.white.withOpacity(0.2),
        onTap: () {},
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: CustomText(
              text: contact.user,
              color: WhatsAppColors.white,
              fontWeight: FontWeight.normal,
              fontSize: 20.0,
            ),
          ),
          subtitle: CustomText(
            text: contact.briefChat,
            color: WhatsAppColors.white.withOpacity(0.5),
            fontWeight: FontWeight.normal,
            fontSize: 15.0,
          ),
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(contact.imageUrl),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: CustomText(
              text: contact.date,
              color: WhatsAppColors.white.withOpacity(0.5),
              fontWeight: FontWeight.normal,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
