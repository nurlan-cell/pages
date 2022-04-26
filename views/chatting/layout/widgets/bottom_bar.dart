
import 'package:global/helper/import_helper.dart';

class BottomBarWidget extends StatelessWidget {
  final TextEditingController controller;

  BottomBarWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 2.0,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 20.0,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                textInputAction: TextInputAction.send,
                controller: controller,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    suffixIcon: Icon(
                      Icons.attach_file_outlined,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Type your message here….",
                    hintStyle: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ),
          ),
         SizedBox(width: 5,),
          CircleAvatar(
            radius: 18,
            child: Center(
              child: IconButton(
                icon: const Icon(
                  Icons.mic,
                  size: 20,
                  color: Colors.white,
                ),
                color: Theme.of(context).primaryColor,
                onPressed: () {},
              ),
            ),
          ),
        SizedBox(width: 4,),
          CircleAvatar(
            radius: 18,
            child: IconButton(
              icon: const Icon(
                Icons.send_sharp,
                size: 18,
                color: Colors.white,
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
