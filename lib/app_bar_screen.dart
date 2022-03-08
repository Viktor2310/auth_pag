import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  State<AppBarScreen> createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = TextButton.styleFrom(primary:  Theme.of(context).colorScheme.onPrimary); //Стиль кнопки
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Пицца"),
          actions:<Widget> [
            IconButton(onPressed: (){}, icon: const Icon(Icons.local_pizza)),
            IconButton(
                tooltip: "Связаться с нами",
                onPressed: (){}, icon: const Icon(Icons.phone)),
            IconButton(
                tooltip: "Время до готовности заказа",
                onPressed: (){}, icon: const Icon(Icons.add_alert_rounded)),
            TextButton(
                onPressed: (){},
                child: const Text("Войти в профиль"),
              style: buttonStyle,

            ), //Кнопка
          ],
        ),
        body: Center(child: Text('Контент')),
      ),
    );
  }
}
