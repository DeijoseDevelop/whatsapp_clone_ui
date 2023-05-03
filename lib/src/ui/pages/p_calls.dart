import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/src/ui/theme/colors.dart';
import 'package:whatsapp_clone_ui/src/ui/widgets/w_custom_text.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: WhatsAppColors.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          _HeaderCalls(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: CustomText(text: "Recent"),
          ),
          _ListCalls(),
        ],
      ),
    );
  }
}

class _HeaderCalls extends StatelessWidget {
  const _HeaderCalls();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        highlightColor: WhatsAppColors.white.withOpacity(0.2),
        onTap: () {},
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: WhatsAppColors.tabFocusedColor,
            radius: 30,
            child: Transform.rotate(
              angle: -10.2,
              child: const Icon(
                Icons.link,
                color: WhatsAppColors.white,
              ),
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: CustomText(
              text: "Create call link",
              color: WhatsAppColors.white,
              fontWeight: FontWeight.normal,
              fontSize: 20.0,
            ),
          ),
          subtitle: CustomText(
            text: "Share a link for your Whatsapp call",
            color: WhatsAppColors.white.withOpacity(0.5),
            fontWeight: FontWeight.normal,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}

class _ListCalls extends StatelessWidget {
  const _ListCalls();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const <Widget>[
          CallsItems(
            name: "Deiver Vazquez",
            date: "April 29, 10:35 PM",
            image: "assets/1.jpg",
          ),
          CallsItems(
            name: "Eduardo CAR III",
            date: "April 24, 12:24 PM",
            image: "assets/2.jpg",
          ),
          CallsItems(
            name: "A mi mama",
            date: "April 28, 10:55 PM",
            image: "assets/3.jpg",
          ),
          CallsItems(
            name: "A mi papa",
            date: "April 21, 10:34 PM",
            image: "assets/4.jpg",
          ),
          CallsItems(
            name: "Angie",
            date: "April 26, 05:35 PM",
            image: "assets/5.jpg",
          ),
        ],
      ),
    );
  }
}

class CallsItems extends StatelessWidget {
  const CallsItems({
    required this.name,
    required this.date,
    required this.image,
    super.key,
  });

  final String name;
  final String date;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          highlightColor: WhatsAppColors.white.withOpacity(0.2),
          onTap: () {},
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 30,
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: CustomText(
                text: name,
                color: WhatsAppColors.white,
                fontWeight: FontWeight.normal,
                fontSize: 20.0,
              ),
            ),
            subtitle: Row(
              children: <Widget>[
                const Icon(
                  Icons.north_east,
                  size: 15,
                  color: WhatsAppColors.tabFocusedColor,
                ),
                const SizedBox(width: 5.0),
                CustomText(
                  text: date,
                  color: WhatsAppColors.white.withOpacity(0.5),
                  fontWeight: FontWeight.normal,
                  fontSize: 15.0,
                ),
              ],
            ),
            trailing: const Icon(
              Icons.call,
              color: WhatsAppColors.tabFocusedColor,
            ),
          ),
        ),
      ),
    );
  }
}
