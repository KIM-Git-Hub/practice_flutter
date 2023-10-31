import 'package:flutter/material.dart';

class SubScreen extends StatelessWidget {
  String msg;

  SubScreen({super.key, required this.msg}); //정보받기

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(  //Scaffold의 상위 영역
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('서브화면'),
            actions: [
              Icon(Icons.account_balance_wallet_outlined),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    '뒤로가기',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
            automaticallyImplyLeading: false /*앱바 화살표 뒤로가기 없애기*/,

            bottom: TabBar(tabs: [
              Tab(text: 'Tab 1',),
              Tab(text: 'Tab 2',),
              Tab(text: 'Tab 3',),
            ],),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Tab 1 Content'),),
              Center(child: Text('Tab 2 Content'),),
              Center(child: Text('Tab 3 Content'),),
            ],
          )


          /*Column(
            children: [
              Center(
                child: Text('서브화면 입니다.$msg'),
              ),
              TextButton(
                  onPressed: () {
                    //현재 스택 제거
                    Navigator.pop(context);
                  },
                  child: Text('뒤로가기')),
            ],
          ),*/
        ));
  }
}
