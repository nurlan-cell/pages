import 'package:global/helper/import_helper.dart';

class SearchTitle extends StatelessWidget {
String text;

SearchTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,style: const TextStyle(fontSize: 16,color: Colors.black45,fontWeight: FontWeight.w500),),
          const Divider(thickness: 1,),
        ],
      ),
    );
  }
}
