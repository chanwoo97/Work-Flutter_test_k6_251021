import 'screen/my_app_routing.dart';
import 'controller/pd_data/food_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // runApp( MySplash() ); // runApp
  // runApp( MyLoginScreen() ); // runApp
  // runApp( MyMainScreen() ); // runApp
  // runApp( MyAppRouting() ); // runApp
  // runApp( MyApp() ); // runApp
  // runApp( MySplash2() ); // runApp
  runApp(
      MultiProvider( // 다중 프로바이더를 사용하겠다.
        providers: [
          // 서버로부터 데이터 변경을 감지하면 화면으로 데이터를 업데이트 한다. ->
          ChangeNotifierProvider(create: (context) => FoodController())
        ],
        child: const MyAppRouting(),)
  );

} // main()