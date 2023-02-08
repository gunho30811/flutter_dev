import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //App start
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return const Placeholder(); 초기 설정으로 나옴. 혹시 몰라서 주석처리

    return MaterialApp(  //앱 디자인은 위젯 짜집기
      home: Scaffold(
        appBar: AppBar(title: Text('앱임')),
        body: Text('안녕'),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ],
            ),
          )
        ),
      )
    );
  }
}
//글자 위젯    Text('contents')
//이미지 위젯   Image.asset('경로') //'assets/Kevin.png' 인식을 못한다.
//아이콘 위젯   Icon(Icons.item)
//박스 위젯  Container() or SizedBox()
//여러 위젯 가로로 배치 Row( children:[]) , 세로로 배치 Column( children:[])
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly, =>display:flex 랑 비슷(정축 위주로 움직임)
//           crossAxisAlignment: CrossAxisAlignment.center, => 세로+space 정렬
// Scaffold() , appBar: AppBar(), body: Container(), bottomNavigationBar: BottomAppBar()
// Row( children:[mainAxisAlignment: MainAxisAlignment.spaceEvenly])