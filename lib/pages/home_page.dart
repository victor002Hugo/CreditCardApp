import 'package:cartao_credito/controllers/offsetController.dart';
import 'package:cartao_credito/controllers/pageController.dart';
import 'package:cartao_credito/widgets/itemPage.dart';
import 'package:cartao_credito/widgets/myAppBar.dart';
import 'package:cartao_credito/widgets/painel_top.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              MyAppBar(),
              PanelTop(),
              PageView(
                onPageChanged: (index) {
                  Provider.of<PageControllerApp>(context, listen: false)
                      .setPageIndex(index);
                },
                controller: _pageController,
                children: <Widget>[
                  ItemPage(
                    imageURL:
                        'https://us.123rf.com/450wm/grebeshkovmaxim/grebeshkovmaxim1805/grebeshkovmaxim180500202/100769321-colorful-smooth-gradient-color-background-design-for-your-project-design-.jpg?ver=6',
                  ),
                  ItemPage(
                    imageURL:
                        'https://ak5.picdn.net/shutterstock/videos/1018020805/thumb/1.jpg',
                  ),
                  ItemPage(
                    imageURL:
                        'https://i.pinimg.com/736x/5c/ee/af/5ceeafdc811d2269821fb03df29374ff.jpg',
                  ),
                ],
              )
            ],
          ),
        ),
        create: (BuildContext context) => OffsetController(_pageController),
      ),
    );
  }
}
