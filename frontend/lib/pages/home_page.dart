import 'package:flutter/material.dart';
import 'package:frontend/ controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // _buildHeader(),
            const SizedBox(height: 20.0),
            // _buildBody(context),
            const SizedBox(height: 15.0),
            // _buildBottomCardList(),
          ],
        ),
      )),
    );
  }
}
