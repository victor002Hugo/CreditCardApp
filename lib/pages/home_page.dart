import 'package:cartao_credito/widgets/itemPage.dart';
import 'package:cartao_credito/widgets/myAppBar.dart';
import 'package:cartao_credito/widgets/painel_top.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            MyAppBar(),
            PanelTop(),
            PageView(
              controller: _pageController,
              children: <Widget>[
                ItemPage(),
                ItemPage(),
                ItemPage(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
