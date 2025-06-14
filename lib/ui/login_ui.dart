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
          SizedBox(
            height: 866,
            child: Stack(
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  color: Color(0xFF2567E8),
                ),
                Positioned(child: Image.asset(assetsPath.logo,fit: BoxFit.cover,)),
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
                      color: Colors.white
                ),)),
                Positioned(
                  top: 300,
                    left: 40,
                    child: Container(
                  height: 400,
                  width: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2), // Shadow color
                            spreadRadius: 1, // How much the shadow spreads
                            blurRadius: 9,   // How soft the shadow is
                            offset: Offset(2, 4), // X and Y offset
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: Container(
                                height: 48,
                                width: 279,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[200]
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Icon(Icons.login),
                                    ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,shadowColor: Colors.transparent),onPressed: (){}, child: Text('Continue to Google',style: TextStyle(color: Colors.black),))
                                  ],
                                ),
                              ),
                            ),
                            Text('or Login With')
                          ],
                        ),
                      ),
                ))
              ],
            ),
          ),
        ],
      )),
    );
  }
}
