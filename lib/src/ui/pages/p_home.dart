import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/src/ui/pages/pages.dart';
import 'package:whatsapp_clone_ui/src/ui/theme/colors.dart';
import 'package:whatsapp_clone_ui/src/ui/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  IconData buttonIcon = Icons.message;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(() {
      setState(() {
        if (_tabController.index == 1) {
          buttonIcon = Icons.camera_alt;
        } else {
          buttonIcon = Icons.message;
        }
      });
    });
  }

  @override
  void dispose() {
    _tabController.removeListener(() {});
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _WhatsappAppBar(_tabController),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          const ChatsPage(),
          const StatusPage(),
          Container(color: Colors.blue),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: WhatsAppColors.tabFocusedColor,
        child: Icon(buttonIcon),
      ),
    );
  }
}

class _WhatsappAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _WhatsappAppBar(this._tabController);

  final TabController _tabController;

  @override
  Size get preferredSize => const Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(
        text: "Whatsapp clone",
        color: WhatsAppColors.white.withOpacity(0.5),
        fontSize: 18,
      ),
      backgroundColor: WhatsAppColors.appBarColor,
      actions: <WhatsappIcon>[
        WhatsappIcon(
          icon: Icons.camera_alt_outlined,
          // right: 20.0,
          color: WhatsAppColors.white.withOpacity(0.5),
          onTap: () {},
        ),
        WhatsappIcon(
          icon: Icons.search,
          // right: 20.0,
          color: WhatsAppColors.white.withOpacity(0.5),
          onTap: () {},
        ),
        WhatsappIcon(
          icon: Icons.more_vert,
          // right: 20.0,
          color: WhatsAppColors.white.withOpacity(0.5),
          onTap: () {},
        ),
      ],
      bottom: TabBar(
        controller: _tabController,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: WhatsAppColors.tabFocusedColor,
        indicatorWeight: 3,
        labelColor: WhatsAppColors.tabFocusedColor,
        unselectedLabelColor: WhatsAppColors.white.withOpacity(0.5),
        tabs: const <Tab>[
          Tab(
            text: 'Chats',
          ),
          Tab(
            text: 'status',
          ),
          Tab(
            text: 'calls',
          ),
        ],
      ),
    );
  }
}
