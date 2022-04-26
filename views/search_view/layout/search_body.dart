import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/elements/app_button.dart';
import 'package:global/presentation/elements/auth_text_field.dart';
import 'package:global/presentation/views/search_view/layout/widgets/search_header.dart';
import 'package:global/presentation/views/search_view/layout/widgets/search_title.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchHeader(),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 8),
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black45,width: 2)),
                      height: 40,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 11),
                          hintText: 'Search',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black45)
                        ),
                      ))),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.8),
                    border: Border.all(color: Colors.black45,width: 2)),
                height: 40,
                child: const Center(
                    child: Text(
                  'Search',
                  style: TextStyle(color: Colors.white),
                )),
              ))
            ],
          ),
        ),
        const SizedBox(height: 30,),
        SearchTitle('Aleksander Kostylev'),
        SearchTitle('Matheiu herbout'),
        SearchTitle('Nikola kovac'),
        SearchTitle('Dmirity sokolov'),
        const SizedBox(height: 30,),
      Container(
        alignment: Alignment.center,
       child: const Text('More...',style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),),
      )
      ],
    );
  }
}
