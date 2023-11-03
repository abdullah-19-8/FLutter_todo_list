import 'package:flutter/material.dart';
import 'package:short_point/views/home/widgets/home_profile_header.dart';
import 'package:short_point/views/home/widgets/subscription_section.dart';
import 'package:short_point/views/home/widgets/task_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeProfileHeader(size: size),
            SubscriptionSection(size: size),
            TaskSection(size: size),
          ],
        ),
      ),
    );
  }
}
