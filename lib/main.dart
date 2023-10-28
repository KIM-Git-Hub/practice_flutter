import 'package:flutter/material.dart';
import 'package:practice_project_flutter01/screen/main_screen.dart';
import 'package:practice_project_flutter01/screen/splash_screen.dart';

void main() {
  //플러터 앱은 main() 함수부터 시작
  runApp(const MyApp()); //runApp() 함수에 앱을 시작하면서 화면에 표시할 위젯을 전달한다.
  //처음 runnApp() 함수를 이용해 클래스를 실행할 때, MaterialApp() 함수를 반환해야 한다.
}

class MyApp extends StatelessWidget {
  //MyApp 클래스 StatelessWidget 클래스를 상속받고 있다.
  //MyApp 클래스는 @override를 이용하여 build() 함수를 재정의 한다.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //build() 어떠한 위젯을 만들지 정의하는 함수.
    return MaterialApp(
      //MaterialApp() 함수 :그림을 그리는데 필요한 캔버스
      //title, theme, home 등이 정의되어 있다.
      // title은 앱의 이름, theme은 앱의 테마 색상, home은 앱을 실행할 때 첫 화면의 표시 내용을 지정한다.
      title: 'Flutter Demo',

      //라우트 패턴 나중에 gorouter 써보기
      initialRoute: '/', // 시작 화면 설정
      routes: {
        '/' : (context) => SplashScreen(),
        '/main' : (context) => MainScreen(),
      },
    );
  }
}





/*
//위젯이란 (Widget) 앱의 모든 구성요소를 나타내며,
//화면에 그려지는 모든 것을 위젯으로 표현할 수 있따. 다양한 종류와 계층구조로 구성되어 잇음
//MainScreen 위젯
class MainScreen extends StatelessWidget {
  //StatelessWidget 상태가 없는 위젯 - 한번 생성되면 내부데이터 나 상태를 변경할 수 없고(final/const처럼),
  // UI를 가지기 위한 정보만을 가진다.
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold - Material Design 스타일의 앱을 개발할 때 기본적인 앱의 레이아웃 구조를 정의하고
    // 주요 기본 ui요소를 제공하는 중요한 위젯 / MaterialApp의 하위 개념
    return Scaffold(
      body: Text('안녕하세용개륑'),
      appBar: AppBar(
        title: Text('테스트'),
      ),
    );
  }
}

// Stateful Widget - 상태를 가지는 위젯이며 사용자 상호작용 또는 다른 이벤트에 따라 상태를 변경할 수 있다.
class MainScreen2 extends StatefulWidget {
  const MainScreen2({super.key});

  @override
  State<MainScreen2> createState() => _MainScreen2State();
}

class _MainScreen2State extends State<MainScreen2> {
  var msg = '김재영';
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
      setState(() {
        msg = '김애옹';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(msg),
      appBar: AppBar(
        title: Text('테스트'),
      ),
    );
  }
}*/

