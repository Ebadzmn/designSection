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
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.9,
            child: Stack(
              children: [
                Container(
                  height: screenHeight * 0.4,
                  width: double.infinity,
                  color: Color(0xFF2567E8),
                ),
                Positioned(child: Image.asset(assetsPath.logo,fit: BoxFit.cover,)),
                Positioned(
                  top: 60,
                    left: (screenWidth / 2) - 32.5,
                    child: Icon(Icons.fireplace_outlined,size: 65,color: Colors.white,)),
                Positioned(
                    top: screenHeight * 0.16,
                    left: (screenWidth / 2)-100,
                    child: Text('Sign in to \nyour account' ,textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                      color: Colors.white
                ),)),
                Positioned(
                  top: screenHeight * 0.32,
                    left: screenWidth * 0.1,
                    child: Container(
                  height: screenHeight * 0.50,
                  width: screenWidth * 0.8,
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
                                height: screenHeight * 0.05,
                                width: screenWidth * 0.7,
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
                            Text('or Login With'),
                            SizedBox(height: 20,),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 25), // Gives space for the shadow to appear
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2), // Slightly stronger for visibility
                                    blurRadius: 8,
                                    spreadRadius: 1, // Shadow position
                                  )
                                ],
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Enter Email',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 25), // Gives space for the shadow to appear
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2), // Slightly stronger for visibility
                                    blurRadius: 8,
                                    spreadRadius: 1, // Shadow position
                                  )
                                ],
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.remove_red_eye_outlined,size: 20,),
                                  hintText: 'Enter Password',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(

                                    children: [
                                      Icon(Icons.check_box_outline_blank,size:16,),
                                      SizedBox(width: 8,),
                                      Text('Remembar Me?',style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.grey[700]),)
                                    ],
                                  ),
                                  Text('Forget Password?',style: TextStyle(fontSize: 13 ,color: Colors.blue),)
                                ],
                              ),
                            ),



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
