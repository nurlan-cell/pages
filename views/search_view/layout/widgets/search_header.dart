import 'package:global/helper/import_helper.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text(
                'Search',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black.withOpacity(0.8),
                    fontWeight: FontWeight.w500),
              ),
              const Icon(
                Icons.person_add_alt_1_outlined,
                size: 28,
              ),
            ],
          ),
          const Divider(
            color: Colors.black54,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
