import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/util/general_use.dart';

class SignUpEmp2 extends StatefulWidget {
  const SignUpEmp2({Key? key}) : super(key: key);

  @override
  _SignUpEmp2State createState() => _SignUpEmp2State();
}

class _SignUpEmp2State extends State<SignUpEmp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 70.0,
                    ),
                    Center(
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'images/registerLoading.png',
                              height: 64.0,
                              width: 68.94,
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              'Almost done...',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Already have an account?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0Xff444150),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' Log in',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0Xff2EC4B6),
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomCircle(color: Color(0XffD9D9D9)),
                        SizedBox(
                          width: 12.0,
                        ),
                        CustomCircle(color: Color(0Xff778699))
                      ],
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    TextFormColumn(
                      hintText: 'Email address',
                      label: 'Email',
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    TextFormColumn(
                      label: 'Phone',
                      hintText: '810-123-4567',
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      children: [
                        buildDropDownColumn(hintText: 'Country'),
                        SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 80.0,
                            width: 175.0,
                            child: TextFormColumn(
                              label: 'City',
                              hintText: 'Name of the city',
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    TextFormColumn(
                      label: 'Business name',
                      hintText: 'Name of your business/organization',
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      children: [
                        buildDropDownColumn(
                          hintText: 'Your role',
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 80.0,
                            width: 175.0,
                            child: TextFormColumn(
                              label: 'Office address',
                              hintText: 'Type address here',
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    TextFormColumn(
                      obscure: true,
                      label: 'Password',
                      hintText: '************',
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    TextFormColumn(
                      obscure: true,
                      label: 'Confirm password*',
                      hintText: '',
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Container(
                      height: 48,
                      width: 388.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Color(0Xff2EC4B6)),
                      child: Center(
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Center(
                      child: signUpRichText(),
                    ),
                    SizedBox(
                      height: 24.0,
                    )
                  ]),
            ),
          ),
        ));
  }
}
