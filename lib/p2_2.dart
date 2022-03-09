import 'package:sliding_switch/sliding_switch.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart';

import 'global_theme.dart';

class calca1 extends StatefulWidget {
  const calca1 ({Key? key}) : super(key: key);

  @override
  _SwState createState() => _SwState();
}
enum sous {hot, sour, cheese}

  class _SwState extends State<calca1> {
  sous? _sous= sous.hot;
  double _pizzaSize=20;
  bool _checked= false;
  double _pizaSize = 40.0;



  void _onCkeckedChange(bool? val)
  {
    setState(() {
      _checked= !_checked;
    });
  }


  void _onSkill(sous? value)
  {
    setState(() {
      _sous = value;
    });
  }



  Widget build(BuildContext context) {

    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: const Color(0xFFecebf1),width: 2)); //Скругление


    const StyleText= TextStyle(fontSize: 18,
      fontWeight: FontWeight.normal,
      color: Color.fromRGBO(0,0,0,1),
    );// цвет текста

    final ButtonStyle buttonStyle = TextButton.styleFrom(primary:  Theme.of(context).colorScheme.onPrimary); //Стиль кнопки

    final _messengerKey = GlobalKey<ScaffoldMessengerState>();

    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      theme: globalThem(),

      home: Scaffold(

        appBar: AppBar(
          title: Text("Пицца"),
          actions:<Widget> [
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


        body: Container(
          //изображение фона
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/fon.jpg"),
                fit: BoxFit.cover, //настройка картинки
              )
          ),
          //изображение фона-
          width:double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal:50), //отступ
          child: SingleChildScrollView(
            child: Column(children: [

              Row(
                children: [
                  Expanded(child: Container( ),
                  ),

                  const SizedBox(width: 232,height: 150,child:Image(image: AssetImage('assets/image/pizza.jpg')),),
                ],
              ), //картинка

              Text(' Калькулятор пиццы',style: TextStyle(fontSize: 28, color: Color.fromRGBO(0,0,0,1), fontWeight: FontWeight.bold ),),

              SizedBox(height: 9,),

              Text(' Выберити параметры:',style: TextStyle(fontSize: 16, color: Color.fromRGBO(0,0,0,1), fontWeight: FontWeight.bold ),),

              SizedBox(height: 10,),
//кнопка выбора

              SizedBox(
                width: 300,
                child: SlidingSwitch(

                  value: false,
                  width: 300,
                  onChanged: (bool value) {
                    print(value);
                  },
                  height : 35,
                  animationDuration : const Duration(milliseconds: 400),
                  onTap:(){},
                  onDoubleTap:(){},
                  onSwipe:(){},
                  textOff : "Обычое тесто",
                  textOn : "Тонкое тесто",
                  colorOn : const Color(0xffFFFFFF),
                  colorOff : const Color(0xffFFFFFF),
                  background : const Color(0xffECEFF1),
                  buttonColor : const Color(0xff0079D0),
                  inactiveColor : const Color(0xff636f7b),
                ),

              ),


              SizedBox(height: 20,),

              Row(
                children: [
                  const Text('Размер:',
                      textAlign: TextAlign.left,
                    style: StyleText),
                ],
              ), //text color

              SizedBox(
                  width: 300,
                  child: SfSlider(
                    min: 40.0,
                    max: 100.0,
                    value: _pizaSize,
                    interval: 20,
                    showTicks: true,
                    showLabels: true,
                    enableTooltip: true,
                    numberFormat: NumberFormat('##.см'),
                    minorTicksPerInterval: 0,
                    stepSize: 20,
                    onChanged: (dynamic value){
                      setState(() {
                        _pizaSize = value;
                      });
                    },
                  )),


              SizedBox(height: 10,),

                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(top:10, left:20),
                      child: const Text('Соус:',
                           style: StyleText),
                    ),

                    RadioListTile <sous>(
                      title: const Text('Острый'),
                      value: sous.hot,
                      groupValue: _sous,
                      onChanged: _onSkill,
                      visualDensity: const VisualDensity(horizontal:0,vertical: -4.0),
                    ),


                    RadioListTile <sous>(
                      title: const Text('Кисло-сладкий'),
                      value: sous.sour,
                      groupValue: _sous,
                      onChanged: _onSkill,
                      visualDensity: const VisualDensity(horizontal:0,vertical: -4.0),
                    ),

                    RadioListTile <sous>(
                       value: sous.cheese,
                      groupValue: _sous,
                      onChanged: _onSkill,
                      title: const Text('Сырный'),
                      visualDensity: const VisualDensity(horizontal:0,vertical: -4.0),
                    ),


              SizedBox(
                width: 300,
                child: Card(
                    elevation: 0,
                    color: Color( 0x99AAF0F0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 20,),
                          child:SizedBox(
                            width: 38,
                            height: 56,
                            child: Image.asset('assets/image/ch1.jpg'),
                          ),
                        ),

                        const Text('Дополнительный сыр',style: TextStyle(fontSize: 16, color: Color.fromRGBO(0,0,0,1),),),
                        Switch(value: _checked, onChanged: _onCkeckedChange),
                      ],
                    )

                ),
              ),

              SizedBox(height: 10,),

              Row(
                children: [
                  const Text('Стоимость:',
                      textAlign: TextAlign.left,
                      style: StyleText),
                ],
              ), //text color

              Text(' 130 рублей',style: TextStyle(fontSize: 28, color: Color.fromRGBO(0,0,0,1), fontWeight: FontWeight.bold ),),


              SizedBox(height: 10,),


              SizedBox(width:154,height: 42,child:
              ElevatedButton(onPressed:() {} ,
                child: Text('Заказать'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0079D0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                ),
              )
              ),

            ],),
          ),
        ),
      ),
    );
  }
}

