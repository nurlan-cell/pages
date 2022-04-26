import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/elements/search_field.dart';
import 'package:global/presentation/views/search_view/layout/widgets/search_title.dart';

class ManageFriendsBody extends StatelessWidget {
  const ManageFriendsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchField(),
                const SizedBox(
                  height: 30,
                ),
                SearchTitle('Carlos,Ward'),
                SearchTitle('Johnny,Kelly'),
                SearchTitle('Martha,Long'),
                SearchTitle('Rachel,Williamson'),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 8),
                  child: Text(
                    'Earl, Turner',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                SearchTitle('Theresa,Peterson'),
                SearchTitle('Howard,Car'),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 8),
                  child: Text(
                    'Jacqueline, Barnes',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                SearchTitle('Theresa,Peterson'),
                const SizedBox(
                  height: 220,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
