import 'package:flutter/material.dart';
import 'package:web_loca/constants.dart';

class CommonNavigationBar extends StatelessWidget {
  const CommonNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 52,
            child: Image.asset('assets/images/loca.png'),
          ),
          // Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: const <Widget>[
          //     _NavBarItem('Trang chủ', isSelected: true,),
          //     SizedBox(
          //       width: 60,
          //     ),
          //     _NavBarItem('Về chúng tôi'),
          //   ],
          // )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  final bool isSelected;

  const _NavBarItem(this.title, {this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        color: isSelected ? colorPrimaryDark : Colors.black87,
        fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
      ),
    );
  }
}
