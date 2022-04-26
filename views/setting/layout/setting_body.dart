import 'package:global/helper/import_helper.dart';
import 'package:global/presentation/elements/app_button.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 80,
                width: 70,
                child: const Center(
                    child: Icon(
                  Icons.person,
                  size: 40,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Baitleuov',
                      style: TextStyle(
                        fontSize: 18,
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: const [
                        Icon(
                          Icons.circle,
                          size: 12,
                          color: Colors.green,
                        ),
                        Text(
                          'Online',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
              ),
            ],
          ),
           const SizedBox(height: 30,),
           AppButton(name: 'Search', onTapped: (){}),
          const SizedBox(height: 30,),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  _getSettingWidget('Notifications', Icons.notifications),
                  const SizedBox(height: 20,),
                  _getSettingWidget('Setting', Icons.settings),
                  const SizedBox(height: 20,),
                  _getSettingWidget('Email', Icons.email_outlined),
                  const SizedBox(height: 20,),
                  _getSettingWidget('Languages', Icons.language),
                  const SizedBox(height: 20,),
                  _getSettingWidget('Quit', Icons.logout),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
  Widget _getSettingWidget(String text,IconData icon){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon),
            const SizedBox(width: 15,),
            Text(text,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
          ],
        ),
        const Icon(Icons.navigate_next_sharp),
      ],
    );
  }
}
