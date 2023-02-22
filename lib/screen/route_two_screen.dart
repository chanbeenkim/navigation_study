import 'package:flutter/material.dart';
import 'package:navigation_study/layout/main_layout.dart';
import 'package:navigation_study/screen/route_three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(
      title: 'Route Two',
      children: [
        Text(
          'arguments: ${arguments}',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              '/three',
              arguments: 999,
            );
          },
          child: Text('Push Named'),
        ),
        ElevatedButton(
          onPressed: () {
            // 바로 전 라우트를 지워서 전으로 이동 1 - 2 - 3 - 1 순으로
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => RouteThreeScreen(),
              ),
            );
          },
          child: Text('Push Replacement'),
        ),
        ElevatedButton(
          onPressed: () {
            // pushReplacement Named 버전
            Navigator.of(context).pushReplacementNamed(
              '/three',
            );
          },
          child: Text('Push ReplacementNamed'),
        ),
        ElevatedButton(
          // 지금 생각에는 처음 페이지로 이동 버튼으로 유용할듯
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
                '/three', (route) => route.settings.name == '/');
          },
          child: Text('Push Named And Remove Until'),
        ),
      ],
    );
  }
}
