import 'package:flutter/material.dart';

class QuizManagerScreen extends StatelessWidget {
  const QuizManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab 예제'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: '홈'),
              Tab(icon: Icon(Icons.star), text: '즐겨찾기'),
              Tab(icon: Icon(Icons.settings), text: '설정'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('홈 페이지')),
            Center(child: Text('즐겨찾기 페이지')),
            Center(child: Text('설정 페이지')),
          ],
        ),
      ),
    );
  }
}
