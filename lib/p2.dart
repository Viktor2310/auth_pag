
import 'package:flutter/material.dart';

import 'global_theme.dart';


class start extends StatelessWidget {
  const start({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: const Color(0xFFecebf1),width: 2)); //Скругление

    const linkTextStyle= TextStyle(fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0079D0)
    );// цвет текста

    return MaterialApp(


      theme: globalThem(),

      home: Scaffold(

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
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 100,),
              const SizedBox(width: 2000,height: 84, child:Image(image: AssetImage('assets/colo.png')),), //картинка
              SizedBox(height: 20,),
              const Text('Введите логин в виде 10 цифр номера телефона',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Color.fromRGBO(0,0,0,0.6) ),), //text color
              SizedBox(height: 20,),
              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFdceFF1),
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  labelText: '+7',
                ),
              ),
              SizedBox(height: 20,),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFdceff1),
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  labelText: '*****',
                ),
              ),
              SizedBox(height: 28,),
              //кнопка
              SizedBox(width:154,height: 42,child:
              ElevatedButton(onPressed:() {
                Navigator.pushNamed(context,'/calca1');

              } ,
                child: Text('Войти'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0079D0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                ),
              )
              ),
              SizedBox(height: 30,),
              //ссылки
              InkWell(child: const Text('Регистрация', style: linkTextStyle, ),
                  onTap:() {
                    Navigator.pushNamed(context, '/reg');
                  } ),
              //   SizedBox(height: 20,),
              // InkWell(child: Text('Забыли пароль',style: linkTextStyle,),onTap:() {} ),


            ],),
          ),
        ),
      ),
    );
  }
}

