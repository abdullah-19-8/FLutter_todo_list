import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:short_point/utils/constant.dart';

class ProSection extends StatelessWidget {
  const ProSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.only(
        left: 32 / screenWidth * size.width,
        top: 33 / screenHeight * size.height,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/icons/trophy.svg'),
          SizedBox(
            width: 25 / screenWidth * size.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Go Pro (No Ads)',
                style: TextStyle(
                  color: const Color(0xFF071C55),
                  fontSize: 18 / screenWidth * size.width,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 8 / screenHeight * size.height,
              ),
              Text(
                'No fuss, no ads, for only \$1 a\nmonth',
                style: TextStyle(
                  color: const Color(0xFF0C2971),
                  fontSize: 12 / screenWidth * size.width,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}