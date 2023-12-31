import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //List listHello = ['홍드로이드', '김지영', '김애옹', '레츠고'];
  // TextEditingController idController = TextEditingController();
  //String msg = '이곳에 입력값이 없데이트 됩니다.';
  // ValueNotifier<int> counter = ValueNotifier<int>(0); //초기값이 0

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('메인화면'),),
      drawer: Drawer(child: ListView(children: [
        DrawerHeader(child: Text('헤더영역')),
        ListTile(title: Text('홈화면'), onTap: () {

        },),
        ListTile(title: Text('메인 화면'), onTap: () {

        },),
        ListTile(title: Text('서브 화면'), onTap: () {

        },),
      ],),),
      body: Column(
        children: [
          TextButton(onPressed: () {
            Navigator.pushNamed(context, '/sub', arguments: 'hello'); //화면이동 뿐만 아니라 정보도 넘겨줄수 잇음
          }, child: Text('텍스트버튼')),


          /*  TextField(
            controller: idController, //사용자가 텍스트 필드에 입력하는 값을 받아낼 수 있더
            decoration: InputDecoration(labelText: '아이디를 입력해 주세용'),
          )*/
          /* ElevatedButton(onPressed: () {

            counter.value = 30;


            // 클릭시 동장 구현
           /* setState(() {
              //위젯 업데이트
              //setState 밖에 써둬도 업데이트는 되는데 아예 전체를 업데이트 해버리기 때문에 효율적으로 쓸려면 알잘딱 하자
             msg = idController.text.toString();
            });*/

          }, child: Text('아이디입력값 가져오기')),
          ValueListenableBuilder<int>(valueListenable: counter, builder: (context, value, child) {
            return Text('Count: $value' );
          },),*/
          //Text(msg, style: TextStyle(fontSize: 30),)
        ],
      ),

      /* body: ListView.builder(
          itemBuilder: (context, index) {
            //
            return ListTile(
              title: Text('${listHello[index]}'),
              subtitle: Text('서브타이틀'),
            ); //목록구성
          },
          itemCount: listHello.length,
        )*/

      /*body: Column(
        children: [
          Container(
            width: 200,
            height: 100, margin: EdgeInsets.all(30),
            child: ElevatedButton(
              onPressed: () {
                //클릭되었을때 동작하고 싶은 액션
                print('버튼이 클릭되었습니다');
              },
              child: Text('눌러보세요'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.black,
                  elevation: 20),
            ),
          )
        ],
      )*/

      /*body: Center(
          //정가운데 정렬

          child: Column(
            //Center 위젯의 자식
            mainAxisAlignment: MainAxisAlignment.center,
            //위젯내에서 사용, 수직축 정렬(가운대로)
            crossAxisAlignment: CrossAxisAlignment.start,
            //가로축 정렬
            children: [
              //Colum 자식 위젯을 수직으로 쌓아 올리는 역할 ex)아래 텍스트
              Text('반갑습니다'), Text('저는 김재영입니다'), Text('안녕안녕'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //Row 가로로 위젯을 쌓아올림
                  Text('안녕'), Text('가로방향'), Text('가로방향')
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 2, child: Text('김재영')),
                  Expanded(child: Text('김재영')),
                  Text('김재영')
                  //Expanded (비율?관리)위젯의 공간을 확장 flex로 조절 // flex를 안넣어도 기본적으로 1씩 부여
                ],
              ),

              Container(
                width: 300,
                height: 100,
                margin: EdgeInsets.only(left: 30, top: 30),
                alignment: Alignment.center,
                child: Text('고양이조아'),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(
                // 컨테이너의 하위격 /색깔x
                child: Text(
                  '강아지도조아',
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                width: 300,
              ),
              //image
              Row(
                children: [
                  Image.asset('assets/cat.png', width: 100, height: 100,),
                  Icon(Icons.search, size: 100,)
                ],
              )
            ],
          ),
        )*/
    );
  }
}
