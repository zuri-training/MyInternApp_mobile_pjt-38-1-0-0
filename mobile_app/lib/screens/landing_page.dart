import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app/screens/sign__up_emp-page.dart';
import 'package:mobile_app/screens/sign_in.dart';
import 'package:mobile_app/screens/sign_up _stu-page_2.dart';
import 'package:mobile_app/screens/sign_up.dart';
import 'package:mobile_app/util/general_use.dart';

class GeneralGroup extends StatefulWidget {
  const GeneralGroup({Key? key}) : super(key: key);

  @override
  _GeneralGroupState createState() => _GeneralGroupState();
}

Color themeColor = Color.fromARGB(255, 0, 83, 135);

class _GeneralGroupState extends State<GeneralGroup> {
  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.

    if (choice.title == "Login") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignIn()),
      );
    } else if (choice.title == "Sign up") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignUp()),
      );
    } else if (choice.title == "Student") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignUpStu2()),
      );
    } else if (choice.title == "Employer") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignUpEmp2()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            leading: PopupMenuButton<Choice>(
              child: ElevatedButton(
                  onPressed: null,
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  style: ElevatedButton.styleFrom(onSurface: Colors.white)),
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return choicesMenuOptions.map((Choice choice) {
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              },
            ),
            actions: <Widget>[
              //
              PopupMenuButton<Choice>(
                child: ElevatedButton(
                    onPressed: null,
                    child: SignInMenuImage(),
                    style: ElevatedButton.styleFrom(onSurface: Colors.white)),
                onSelected: _select,
                itemBuilder: (BuildContext context) {
                  return choices.map((Choice choice) {
                    return PopupMenuItem<Choice>(
                      value: choice,
                      child: Text(choice.title),
                    );
                  }).toList();
                },
              ),
            ],
            backgroundColor: Colors.white,
            toolbarHeight: 62.0,
            title: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: LandingPageMyInternLogo(40.0, 40.0),
                ),
                Text(
                  "MyIntern",
                  style: TextStyle(color: color),
                ),
              ],
            )),
        body: ListView(
          children: [
            //part 1
            RemoteMeetingPana(1, 1),
            //RemoteMeetingPana(20, 18),
            //part 2
            Container(
                height: 177.0,
                color: Color.fromARGB(255, 203, 243, 240),
                child: Column(
                  children: [
                    Text(
                      "Find temporary jobs",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.w800),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "with ",
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "MyIntern",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w800,
                            color: themeColor,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 14.0),
                      child: Text(
                        "We connect you with employers and help you",
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                    Container(
                      child: Text(
                        "find jobs that fit your schedule.",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                    ),
                    ElevatedButton(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(212.0, 40.0),
                          onSurface: themeColor,
                          primary: themeColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ))
                  ],
                )),
            Container(
              color: Color.fromARGB(255, 245, 247, 251),
              height: 486.0,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 17.0,
                    ),
                    child: Text(
                      "How it works",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(127, 46, 196, 182),
                            borderRadius:
                                BorderRadius.all(Radius.circular(60.0)),
                          ),
                        ),
                        Container(
                          color: Color.fromARGB(255, 0, 83, 135),
                          height: 2,
                          width: 100,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(127, 46, 196, 182),
                            borderRadius:
                                BorderRadius.all(Radius.circular(60.0)),
                          ),
                        ),
                        Container(
                          color: Color.fromARGB(255, 0, 83, 135),
                          height: 2,
                          width: 100,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(127, 46, 196, 182),
                            borderRadius:
                                BorderRadius.all(Radius.circular(60.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 24.0,
                          ),
                          child: Text(
                            "For Students",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: themeColor,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 24.0,
                          ),
                          child: Text(
                            "Create a free account",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(
                              top: 20.0,
                            ),
                            child: Column(
                              children: [
                                Text(
                                    "MyIntern is where employers hire students"),
                                Text(
                                    "of tertiary institutions looking for temporary"),
                                Text("or part-time jobs."),
                              ],
                            )),
                        Container(
                          margin: EdgeInsets.only(
                            top: 28.0,
                          ),
                          child: Text(
                            "Fill out your profile",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(
                              top: 20.0,
                            ),
                            child: Column(
                              children: [
                                Text(
                                    "You’ll receive personalized job recommendations"),
                                Text(
                                    "and get recruited by employers who want to hire"),
                                Text(" students like you."),
                              ],
                            )),
                        Container(
                          margin: EdgeInsets.only(
                            top: 28.0,
                          ),
                          child: Text(
                            "Apply to the right jobs for you",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(
                              top: 20.0,
                            ),
                            child: Column(
                              children: [
                                Text(
                                    "Learn about jobs and employers through reviews"),
                                Text("from other students."),
                              ],
                            )),
                      ],
                    ),
                    margin: EdgeInsets.only(top: 12.0),
                    height: 400.0,
                    width: 313,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 8,

                          offset: Offset(0, 8), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //part 3
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20.0,
                    width: 313,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                    ),
                  ),
                  Container(
                    height: 20.0,
                    width: 313,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                    ),
                  )
                ],
              ),
              height: 220.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.none, image: AssetImage('images/image-29.jpg')),
              ),
            ),
            //part 4
            Container(
              color: Color.fromARGB(255, 245, 247, 251),
              height: 800.0,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 24.0,
                          ),
                          child: Text(
                            "For Employers",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: themeColor,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Container(
                              child: LandingScreenPart4Image1(80, 80),
                            )),
                            Expanded(
                                child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 24.0,
                                    ),
                                    child: Text(
                                      "Describe your ideal candidate",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 20.0, left: 10.0),
                                      child: Text(
                                          "Tell us what you need. Use our simple form, add images and publish your requirements in a few clicks.")),
                                ],
                              ),
                            )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              child: LandingScreenPart4Image2(60, 100),
                            )),
                            Expanded(
                                child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 24.0,
                                    ),
                                    child: Text(
                                      "Recruit diverse talent from anywhere in the country",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                        top: 20.0,
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                              "Chat with students in real time. "),
                                          Text(
                                              "Browse their previous projects or experience. "),
                                          Text(
                                              "You can also search, filter and invite students according to skills, ratings and other preferences."),
                                        ],
                                      )),
                                ],
                              ),
                            )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              child: LandingScreenPart4Image3(60, 100),
                            )),
                            Expanded(
                                child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 24.0, right: 30),
                                    child: Text(
                                      "Secure payment",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                        top: 20.0,
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                              "Chat, share attachments and view project progress conveniently in your dedicated workspace."),
                                          Text(
                                              "Release the payment when you’re happy with the end result."),
                                        ],
                                      )),
                                ],
                              ),
                            )),
                          ],
                        ),
                      ],
                    ),
                    height: 750.0,
                    width: 313,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 8,

                          offset: Offset(0, 8), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //part 5
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 17.0,
                    ),
                    child: Text(
                      "Choose your role",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(127, 46, 196, 182),
                            borderRadius:
                                BorderRadius.all(Radius.circular(60.0)),
                          ),
                        ),
                        Container(
                          color: Color.fromARGB(255, 0, 83, 135),
                          height: 2,
                          width: 100,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(127, 46, 196, 182),
                            borderRadius:
                                BorderRadius.all(Radius.circular(60.0)),
                          ),
                        ),
                        Container(
                          color: Color.fromARGB(255, 0, 83, 135),
                          height: 2,
                          width: 100,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(127, 46, 196, 182),
                            borderRadius:
                                BorderRadius.all(Radius.circular(60.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //part 5
            Container(
              color: Color.fromARGB(255, 245, 247, 251),
              height: 550.0,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        LandingScreenPart6Image1(400, 300),
                        Container(
                          margin: EdgeInsets.only(
                            top: 24.0,
                          ),
                          child: Text(
                            "Student",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                            width: 250.0,
                            margin: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Looking for a temporary or part-time job? We have a range of jobs perfect to help you gain necessary skills.",
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 24.0),
                            child: ElevatedButton(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(212.0, 50.0),
                                  onSurface: Colors.black,
                                  primary: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ))),
                      ],
                    ),
                    height: 530.0,
                    width: 313,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 8,

                          offset: Offset(2, 2), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 245, 247, 251),
              height: 550.0,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        LandingScreenPart6Image2(400, 300),
                        Container(
                          margin: EdgeInsets.only(
                            top: 24.0,
                          ),
                          child: Text(
                            "Employer",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                            width: 250.0,
                            margin: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Looking to hire a temporary or part-time talent? Post a Job Ad and find amazing students to work with your company!",
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 24.0),
                            child: ElevatedButton(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(212.0, 50.0),
                                  onSurface: Colors.black,
                                  primary: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ))),
                      ],
                    ),
                    height: 530.0,
                    width: 313,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 8,

                          offset: Offset(2, 2), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// This app is a stateful, it tracks the user's current choice.

class Choice {
  const Choice(this.title);

  final String title;
}

const List<Choice> choices = const <Choice>[
  const Choice('Login'),
  const Choice('Sign up'),
];

const List<Choice> choicesMenuOptions = const <Choice>[
  const Choice('Student'),
  const Choice('Employer'),
];
