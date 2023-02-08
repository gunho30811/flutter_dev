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
        appBar: AppBar(),
        body: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width*1,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset('car.jpg', width:MediaQuery.of(context).size.width*0.2,),
              Container(
                width: MediaQuery.of(context).size.width *0.7,
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('캐논 DSLR 100D (단렌즈,충전기 16기가SD 포함)',style: TextStyle()),
                    Text('금호동 3가 끌올 10분전'),
                    Text('120,000원'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                        ),
                        Icon(Icons.favorite),
                        Text('4'),
                      ],
                    ),
                  ],
                )
              ),
            ],
          ),
        )
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
//레이아웃 순서 1. 원본 디자인이 필요하다 (예시 디자인) 2. 예시화면에 네모그리기 3. 바깥 네모부터 하나하나 위젯으로 4.디자인