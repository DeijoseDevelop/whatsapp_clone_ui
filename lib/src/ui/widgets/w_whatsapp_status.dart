import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/src/ui/theme/colors.dart';
import 'package:whatsapp_clone_ui/src/ui/widgets/widgets.dart';

class WhatsappStatus extends StatelessWidget {
  const WhatsappStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        highlightColor: WhatsAppColors.white.withOpacity(0.2),
        onTap: () {},
        child: ListTile(
          title: const Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: CustomText(
              text: "My status",
              color: WhatsAppColors.white,
              fontWeight: FontWeight.normal,
              fontSize: 20.0,
            ),
          ),
          subtitle: CustomText(
            text: "Tap to add status update",
            color: WhatsAppColors.white.withOpacity(0.5),
            fontWeight: FontWeight.normal,
            fontSize: 15.0,
          ),
          leading: Stack(
            children: <Widget>[
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/1.jpg"),
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: WhatsAppColors.tabFocusedColor,
                  ),
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.add,
                    color: WhatsAppColors.white,
                    size: 22.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
