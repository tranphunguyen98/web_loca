import 'package:flutter/material.dart';
import 'package:web_loca/constants.dart';
import 'package:web_loca/widgets/centered_view.dart';
import 'package:web_loca/widgets/intro_widget.dart';
import 'package:web_loca/widgets/navigation_bar.dart';

enum SizeOfScreen { large, medium, small }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SizeOfScreen sizeOfScreen = SizeOfScreen.large;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 940) {
            sizeOfScreen = SizeOfScreen.large;
          } else if (constraints.maxWidth > 480) {
            sizeOfScreen = SizeOfScreen.medium;
          } else {
            sizeOfScreen = SizeOfScreen.small;
          }
          return Column(
            children: [
              CenteredView(
                padding: EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: sizeOfScreen != SizeOfScreen.small ? 60.0 : 24.0,
                ),
                child: CommonNavigationBar(),
              ),
              if (sizeOfScreen == SizeOfScreen.large)
                _largeScreenContent()
              else if (sizeOfScreen == SizeOfScreen.medium)
                _mediumScreenContent()
              else
                _smallScreenContent(),
              Text('© 2022 Loca Inc. All rights reserved.')
            ],
          );
        }),
      ),
    );
  }

  Widget _largeScreenContent() {
    return Container(
      color: colorPrimary,
      child: CenteredView(
        padding: EdgeInsets.symmetric(vertical: 80, horizontal: 60),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const IntroWidget(),
              ],
            ),
            SizedBox(width: 32),
            Expanded(
              child: Center(
                  child: Image.asset(
                'assets/images/iphone.png',
                width: 240,
              )),
            )
          ],
        ),
      ),
    );
  }

  Widget _mediumScreenContent() {
    return Container(
      color: colorPrimary,
      child: CenteredView(
        padding: EdgeInsets.symmetric(vertical: 80, horizontal: 60),
        child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntroWidget(
                  sizeOfScreen: sizeOfScreen,
                ),
              ],
            ),
            SizedBox(height: 32),
            Image.asset(
              'assets/images/iphone.png',
              width: 280,
            )
          ],
        ),
      ),
    );
  }

  Widget _smallScreenContent() {
    return Container(
      color: colorPrimary,
      child: CenteredView(
        padding: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntroWidget(
                  sizeOfScreen: sizeOfScreen,
                ),
              ],
            ),
            SizedBox(height: 32),
            Image.asset(
              'assets/images/iphone.png',
              width: 180,
            )
          ],
        ),
      ),
    );
  }
}

class CallToAction extends StatelessWidget {
  final String title;

  CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 31, 229, 146),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class StoreItem extends StatelessWidget {
  final Widget icon;
  final String text;

  const StoreItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      width: 140,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [icon, SizedBox(width: 8), Text(text)],
      ),
    );
  }
}
