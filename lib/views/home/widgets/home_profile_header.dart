import 'package:flutter/material.dart';
import 'package:short_point/utils/constant.dart';

class HomeProfileHeader extends StatelessWidget {
  const HomeProfileHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120 / screenHeight * size.height,
      padding: EdgeInsets.only(
        left: 32 / screenWidth * size.width,
        top: 15 / screenHeight * size.height,
      ),
      decoration: const BoxDecoration(
        color: Color(0xFF3556AB),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/John.png'),
          ),
          SizedBox(
            width: 20 / screenWidth * size.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, John',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16 / screenWidth * size.width,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 8 / screenHeight * size.height,
              ),
              Text(
                'What are  your plans \nfor today?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25 / screenWidth * size.width,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
