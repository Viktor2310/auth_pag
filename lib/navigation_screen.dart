
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     scaffoldMessengerKey: _messengerKey,
      home: Scaffold(

        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(
                    color:Colors.lightBlueAccent,
                  ),

                     child: Container(
                       height: 200,
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50.0))
                            ),
                          child: Image.network("https://kartinkin.net/uploads/posts/2021-07/1627551561_10-kartinkin-com-p-appetitnaya-pitstsa-yeda-krasivo-foto-13.jpg"),
                        ),
                            const Text("Навигация по пицце",style: TextStyle(fontSize: 16, color: Color.fromRGBO(0,0,0,1), fontWeight: FontWeight.bold ),)
                        ],
                       ),
                     ),
              ),

              ListTile(
                leading: const Icon(Icons.add),
                title: const Text("Регистрация"),
                onTap: (){
                  Navigator.pushNamed(context, '/reg');
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход  в каталог')));
                  //обработчик
                },
              ),
              ListTile(
                leading: const Icon(Icons.two_k),
                title: const Text("Корзина"),
                onTap: (){
                  _messengerKey.currentState!.showSnackBar(
                    const SnackBar(content: Text('Переход  в корзину')));
                  //обработчик
                },
              ),

             const Divider(), //Разделитель
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text("Профиль"),
              ),


              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Настройки"),
                onTap: (){
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход  в настройки')));
                  //обработчик
                },
              ),



            ],
          ),
        ),
        body: Center(child: Text("Содержимое экрана")),
      ),
    );
  }
}
