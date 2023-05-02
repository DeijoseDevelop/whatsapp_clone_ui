import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone_ui/src/controllers/controllers.dart';
import 'package:whatsapp_clone_ui/src/data/models/models.dart';
import 'package:whatsapp_clone_ui/src/ui/theme/colors.dart';
import 'package:whatsapp_clone_ui/src/ui/widgets/widgets.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ContactController controller = context.read<ContactController>();
      controller.getContacts();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ContactController controller = context.watch<ContactController>();
    return Container(
      width: size.width,
      height: size.height,
      color: WhatsAppColors.backgroundColor,
      child: controller.contacts.isEmpty
          ? const Center(child: CircularProgressIndicator.adaptive())
          : ListView.builder(
              primary: false,
              itemCount: controller.contacts.length,
              itemBuilder: (BuildContext context, int index) {
                Contact contact = controller.contacts[index];
                return WhatsappContact(
                  contact: Contact(
                    imageUrl: contact.imageUrl,
                    user: contact.user,
                    briefChat: contact.briefChat,
                    date: contact.date,
                  ),
                );
              },
            ),
    );
  }
}
