import 'package:designsection/assets_path.dart';
import 'package:flutter/material.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                color: Color(0xFF2567E8),
              ),
              Positioned(child: Image.asset(assetsPath.logo)),
              Positioned(
                top: 60,
                  left: (screenWidth / 2) - 32.5,
                  child: Icon(Icons.fireplace_outlined,size: 65,color: Colors.white,)),
              Positioned(
                  top: 130,
                  left: (screenWidth / 2)-100,
                  child: Text('Sign in to \nyour account' ,textAlign: TextAlign.center,style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),))
            ],
          ),
        ],
      )),
    );
  }
}
