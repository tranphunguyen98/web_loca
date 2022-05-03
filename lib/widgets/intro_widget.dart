import 'package:flutter/material.dart';
import 'package:web_loca/home.dart';

class IntroWidget extends StatelessWidget {
  final SizeOfScreen sizeOfScreen;
  const IntroWidget({Key? key, this.sizeOfScreen = SizeOfScreen.large}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeOfScreen != SizeOfScreen.small ? 600 : 360,
      child: Column(
        crossAxisAlignment: sizeOfScreen != SizeOfScreen.large ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Tìm kiếm nhanh chóng Bất Động Sản trên bản đồ thông minh',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: sizeOfScreen == SizeOfScreen.small ? 32 : 36, color: Colors.white, height: 1.0),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Việc đăng tin tìm mua, cần bán, cần cho thuê thực sự đơn giản, nhanh chóng và chính xác. Bất động sản đã được Loca xác thực thông qua bản đồ định vị thông minh do Loca đã số hóa dữ liệu trên Toàn Cầu.',
            style: TextStyle(fontSize: 21, height: 1.5, color: Colors.white),
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: sizeOfScreen != SizeOfScreen.large ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/images/qr.png',
                  width: 120,
                  height: 120,
                ),
              ),
              SizedBox(width: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StoreItem(
                    icon: Icon(
                      Icons.apple,
                      size: 24,
                    ),
                    text: 'App Store',
                  ),
                  SizedBox(height: 32),
                  StoreItem(
                    icon: Image.asset(
                      'assets/images/google_play.png',
                      width: 24,
                      height: 24,
                    ),
                    text: 'Google Play',
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
