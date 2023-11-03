import 'package:flutter/material.dart';
import 'package:short_point/utils/constant.dart';
import 'package:short_point/views/home/widgets/home_profile_header.dart';
import 'package:short_point/views/home/widgets/subscription_section.dart';
import 'package:short_point/views/home/widgets/task_section.dart';
import 'package:short_point/views/task/task_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            HomeProfileHeader(size: size),
            SubscriptionSection(size: size),
            TaskSection(size: size),
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const TaskScreen();
              },
            ),
          );
        },
        child: Container(
          width: 60 / screenWidth * size.width,
          height: 61 / screenHeight * size.height,
          decoration: ShapeDecoration(
            color: const Color(0xFF3556AB),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 2,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Color(0xFF113EB1),
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
