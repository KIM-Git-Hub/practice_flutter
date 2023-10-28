import 'package:flutter/material.dart';

//시작 화면 (SplashScreen)
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), (){
      //화면이동
      Navigator.pushNamed(context, '/main'); //하지만 이동해도 시작화면이 남아있음 쌓인 구조
    });
    return const Scaffold(
      body: Center(
        child: Text('시작화면 입니다.'),
      ),
    );
  }
}
