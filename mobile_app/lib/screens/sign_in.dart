import 'package:flutter/material.dart';
import 'package:mobile_app/util/general_use.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(
              children: [
                Center(
                  child: Container(
                    child: MainLogoImage(48.0,48.0),
                    margin: EdgeInsets.only(top: 60.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Welcome back!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Sign in to your account",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  margin: EdgeInsets.only(top: 50.0),
                  height: 48.0,
                  width: 336.0,
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  margin: EdgeInsets.only(top: 16.0),
                  height: 48.0,
                  width: 336.0,
                ),
                Container(
                  child: Container(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Color.fromARGB(255, 46, 196, 182),
                      textColor: Colors.white,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'SIGN IN',
                          textScaleFactor: 0.8,
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    width: 336.0,
                    height: 48.0,
                  ),
                  margin: EdgeInsets.only(top: 18.0),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0, right: 5.0),
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: null,
                    child: Text("Forgot password?",style: TextStyle(  decoration: TextDecoration.lineThrough,),),
                  ),
                ),

                Container(
                  child: Container(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Colors.white,
                      textColor: Colors.black,
                      child: Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GoogleImage(),
                              Container(
                                margin: EdgeInsets.only(left: 12.65),
                                child: Text(
                                  'Sign in with Google',
                                  textScaleFactor: 0.8,
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                            ],
                          )),
                      onPressed: () {},
                    ),
                    width: 336.0,
                    height: 48.0,
                  ),
                  margin: EdgeInsets.only(top: 18.0),
                ),
                Container(
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: Color.fromARGB(255, 33, 150, 243),
                            textColor: Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 2.0),
                                  child: SsoImage(),
                                ),
                                Text(
                                  'Sign in with SSO',
                                  textScaleFactor: 0.8,
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                          width: 160.0,
                          height: 42.0,
                        ),
                        Container(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: Color.fromARGB(255, 51, 51, 51),
                            textColor: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 2.0),
                                  child: AppleImage(),
                                ),
                                Text(
                                  'Sign in with Apple ID',
                                  textScaleFactor: 0.8,
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                          width: 160.0,
                          height: 42.0,
                        ),
                      ],
                    ),
                  ),
                  margin: EdgeInsets.only(top: 17.0),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                        onPressed: null,
                        child: (Text(
                          "Sign up here",
                          style: TextStyle(
                            color: Color.fromARGB(255, 46, 196, 182),
                          ),
                        )),
                      )
                    ],
                  ),
                  //margin: EdgeInsets.only(top: 35.0),
                )
              ],
            )),
      ) ;

  }
}
