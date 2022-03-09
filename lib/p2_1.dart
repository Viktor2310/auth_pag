
import 'dart:ui';
import 'package:flutter/material.dart';

import 'global_theme.dart';


class reg extends StatelessWidget {
  const reg ({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: const Color(0xFFecebf1),width: 2)); //Скругление


    const StyleText= TextStyle(fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Color.fromRGBO(0,0,0,0.4),
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
          padding: const EdgeInsets.symmetric(horizontal: 50), //отступ
          child: SingleChildScrollView(
            child: Column(children: [

              SizedBox(height: 50,),


              Row (children: const [
                Icon(Icons.local_pizza_outlined),
                Text(' Регистрация',style: TextStyle(fontSize: 25, color: Color.fromRGBO(0,0,0,0.6), fontWeight: FontWeight.bold ),),
              ],
              ),

              const SizedBox(width: 350,height: 20, child:Image(image: AssetImage('assets/image/line1.png')),), //картинка

              SizedBox(height: 10,),

              const Text('Что бы зарегистрироватся введите свой номер телефона и почту',
                  textAlign: TextAlign.center,
                  style:StyleText), //text color


              SizedBox(height: 10,),


              const Center( child: Text('Телефон',
                  style:TextStyle(fontSize: 16, color: Color.fromRGBO(0,0,0,0.6))),//text color
              ),



              SizedBox(height: 5,),


              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFdceFF1),
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  labelText: '+7',
                ),
              ),


              SizedBox(height: 10,),

              const Text('Почта',
                  style:TextStyle(fontSize: 16, color: Color.fromRGBO(0,0,0,0.6))),//text color

              SizedBox(height: 10,),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFdceff1),
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  labelText: '',
                ),
              ),

              SizedBox(height: 20,),

              const Text('Вам придет четырехзначный код, который будет вышим паролем',
                  textAlign: TextAlign.center,
                  style:StyleText), //text color

              SizedBox(height: 10,),

              const Text('Изминить пароль можно будет в личном кабинете после регистрации',
                  textAlign: TextAlign.center,
                  style:StyleText), //text color

              SizedBox(height: 28,),
              //кнопка
              SizedBox(width:154,height: 42,child:
              ElevatedButton(onPressed:() {} ,
                child: Text('Отправить код'),
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

