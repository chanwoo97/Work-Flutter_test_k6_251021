import 'package:flutter/material.dart';

void main() {
  runApp( MyApp() ); // runApp
} // main()

// 위젯을 분리 해보기.
// 1) 스테이트리스 위젯 -> 정적화면 예시) 나무간판
// 2) 상태를 관리하는 스테이트 풀 위젯 -> 동적화면, 상태에 따라서 화면표기. 예시) 점수가 표시되는 간판
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body : SizedBox(
              width : double.infinity,
              child : Column ( // Flex 세로방향으로 나란히 배치 비슷
                mainAxisAlignment : MainAxisAlignment.center,
                children: [
                  Text('오늘 점심 뭐 먹지'),
                  TextButton(
                    // 클릭 시 실행할 함수
                    onPressed: () {},
                    // 스타일 지정
                    style: TextButton.styleFrom(
                      // 주색상 지정
                      foregroundColor: Colors.red,
                    ),
                    // 버튼에 넣을 위젯
                    child: Text('텍스트 버튼'),
                  ),
                ],
              )
          )

      ),
    );
  }

}