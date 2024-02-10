import 'package:flutter/material.dart';
import 'package:instagram/screens/main_screen.dart';
import 'package:instagram/screens/switch_account_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  FocusNode negahban1 = FocusNode();
  FocusNode negahban2 = FocusNode();

  @override
  void initState() {
    super.initState();
    negahban1.addListener(() {
      setState(() {
        
      });
    });
    negahban2.addListener(() {
      setState(() {
        
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          _getImage(),
          _getContainer()
        ],
      )
    );
  }

  Widget _getImage() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: 50,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.orange,
                    Color(0xffF35383)
                  ]
                ),
              ),
              child: Image(
                image: AssetImage(
                  'images/rocket.png',
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }

  Widget _getContainer() {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign in to ',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GB',
                        fontSize: 20
                      ),
                    ),
                    Image.asset('images/mood.png')
                  ],
                ),
                SizedBox(
                  height: 34,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 44),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.amber,
                      fontFamily: 'GB'
                    ),
                    focusNode: negahban1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 15
                      ),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: negahban1.hasFocus ? Colors.pink : Colors.white,
                        fontFamily: 'GB',
                        fontSize: 20
                      ),
                      focusColor: Color(0xffF35383),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xffc5c5c5),
                          width: 3.0
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xffF35383),
                          width: 3.0
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 44),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.amber,
                      fontFamily: 'GB'
                    ),
                    focusNode: negahban2,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 15
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: negahban2.hasFocus ? Colors.pink : Colors.white,
                        fontFamily: 'GB',
                        fontSize: 20
                      ),
                      focusColor: Color(0xffF35383),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xffc5c5c5),
                          width: 3.0
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xffF35383),
                          width: 3.0
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                SizedBox(
                  height: 46,
                  width: 129,
                  child: ElevatedButton(
                    style: 
                        Theme.of(context).elevatedButtonTheme.style,
                    onPressed: () {
                      Navigator.of(context)
                        .push(MaterialPageRoute(
                          builder: (context) => SwitchAccountScreen(),
                        ),
                      );
                    }, 
                    child: Text(
                      'Sign in',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }


  @override
  void dispose() {
    negahban1.dispose();
    negahban2.dispose();
    super.dispose();
  }
}