import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/views/manage_friends/manage_friends.dart';
import 'package:global/presentation/views/message/message.dart';
import 'package:global/presentation/views/news/news_view.dart';
import 'package:global/presentation/views/profile/proflie_view.dart';
import 'package:global/presentation/views/search_view/search_view.dart';
import 'package:global/presentation/views/setting/setting_view.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 30,),
            Container(
              width: 100.0,
              height: 100.0,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/person.jpg',fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10,),
            const Text('Jennifer',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
            const Text('Jennifer@gmail.com',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
            const SizedBox(height: 70,),
            ListTile(
              onTap: () {
              Get.to(const NewsView());
              },
              leading: const Icon(Icons.home),
              title: const Text('News'),
            ),
            ListTile(
              onTap: () {
                Get.to(const SearchView(),transition: Transition.cupertino);
              },
              leading: const Icon(Icons.search),
              title: const Text('Search'),
            ),
            ListTile(
              onTap: () {
                Get.to(const ManageFriends(),transition: Transition.cupertino);
              },
              leading: const Icon(Icons.people_outline),
              title: const Text('Friends'),
            ),
            ListTile(
              onTap: () {
                Get.to(const MessageView(),transition: Transition.cupertino);
              },
              leading: const Icon(CupertinoIcons.chat_bubble),
              title: const Text('Messages'),
            ),
            ListTile(
              onTap: () {
                Get.to(const ProfileView(),transition: Transition.cupertino);
              },
              leading: const Icon(CupertinoIcons.person),
              title: const Text('Profile'),
            ),
            const Spacer(),
            ListTile(
              onTap: () {
                Get.to(const SettingView(),transition: Transition.cupertino);
              },
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                child: const Text('Terms of Service | Privacy Policy'),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
