import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/src/ui/theme/colors.dart';
import 'package:whatsapp_clone_ui/src/ui/widgets/widgets.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: WhatsAppColors.backgroundColor,
      child: Column(
        children: <Widget>[
          const WhatsappStatus(),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.lock,
                size: 15.0,
                color: WhatsAppColors.white.withOpacity(0.5),
              ),
              const SizedBox(width: 5.0),
              RichText(
                text: TextSpan(
                  text: "Your status updates are ",
                  style: TextStyle(
                    color: WhatsAppColors.white.withOpacity(0.5),
                    fontSize: 12.5,
                    fontWeight: FontWeight.normal,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: "end-to-end encryption",
                      style: TextStyle(
                        color: WhatsAppColors.tabFocusedColor,
                        fontSize: 12.5,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
