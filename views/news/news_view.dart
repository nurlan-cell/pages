import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/views/drawer/drawer.dart';
import 'package:global/presentation/views/news/layout/news_body.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class NewsView extends StatefulWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  State<NewsView> createState() => _NewsViewState();
}

final _advancedDrawerController = AdvancedDrawerController();

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.blueGrey,
      controller: _advancedDrawerController,
      animationCurve: Curves.bounceInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      childDecoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),

      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: true,
      drawer: const DrawerScreen(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? CupertinoIcons.back:FontAwesomeIcons.barsStaggered,
                    color: Colors.black,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'News Feed',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: const NewsBody(),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}
