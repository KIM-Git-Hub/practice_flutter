import 'package:flutter/material.dart';

//시작 화면 (SplashScreen)
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), (){
      //화면이동
      Navigator.pushReplacementNamed(context, '/main'); //이동해도 시작화면이 안남아있음
    });

    return const Scaffold(
      body: Center(
        child: Text('시작화면 입니다.'),
      ),
    );
  }
}
