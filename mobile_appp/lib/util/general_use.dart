import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

Color color = Colors.blueAccent;
final String assetName = 'images/myInternLogo.svg';
final String assetName1 = 'images/Remote-meeting-pana.svg';
final String assetName2 = 'images/landing-screen-image-29.svg';
final String landingScreenPart4Image1 = 'images/LandingScreenPart4Image1.svg';

class LandingScreenImagE29 extends StatelessWidget {
  LandingScreenImagE29(this.width, this.height);
  final double width;
  final double height;
  final Widget svg = SvgPicture.asset(assetName2, semanticsLabel: 'Acme Logo');
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.0,
      height: 300.0,
      child: svg,
    );
  }
}

class RemoteMeetingPana extends StatelessWidget {
  RemoteMeetingPana(this.width, this.height);
  final double width;
  final double height;
  final Widget svg = SvgPicture.asset(assetName1, semanticsLabel: 'Acme Logo');
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 203, 243, 240),
      width: 15.0,
      height: 300.0,
      child: svg,
    );
  }
}
class LandingScreenPart4Image1 extends StatelessWidget {
  LandingScreenPart4Image1(this.width, this.height);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(

      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.none,
            image: AssetImage('images/LandingScreenPart4Image1.png')),

      ),
    );
  }
}
class LandingScreenPart4Image2 extends StatelessWidget {
  LandingScreenPart4Image2(this.width, this.height);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(

      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.none,
            image: AssetImage('images/LandingScreenPart4Image2.jpg')),

      ),
    );
  }
}
class LandingScreenPart4Image3 extends StatelessWidget {
  LandingScreenPart4Image3(this.width, this.height);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(

      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.none,
            image: AssetImage('images/LandingScreenPart4Image3.jpg')),

      ),
    );
  }
}
class LandingScreenPart6Image1 extends StatelessWidget {
  LandingScreenPart6Image1(this.width, this.height);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(

      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/LandingScreenPart6Image1.jpg')),

      ),
    );
  }
}
class LandingScreenPart6Image2 extends StatelessWidget {
  LandingScreenPart6Image2(this.width, this.height);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(

      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/LandingScreenPart6Image2.jpg')),

      ),
    );
  }
}
class LandingPageMyInternLogo extends StatelessWidget {
  LandingPageMyInternLogo(this.width, this.height);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(

      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/LandingPageMyInternLogo.png')),

      ),
    );
  }
}

class MainLogoImage extends StatelessWidget {
  MainLogoImage(this.width, this.height);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/myInternLogocCrcle.jpg')),
        borderRadius: BorderRadius.all(Radius.circular(60.0)),
      ),
    );
  }
}

class LandingScreenLogoImage extends StatelessWidget {
  LandingScreenLogoImage(this.width, this.height);
  final double width;
  final double height;
  final Widget svg = SvgPicture.asset(assetName,
      fit: BoxFit.contain, semanticsLabel: 'Acme Logo');
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: svg,
    );
  }
}

class GoogleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.0,
      height: 15.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('images/google-logo.jpg')),
        borderRadius: BorderRadius.all(Radius.circular(60.0)),
      ),
    );
  }
}

class image29 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370.0,
      height: 212.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('images/image-29.jpg')),
      ),
    );
  }
}

class AppleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.0,
      height: 15.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('images/login-apple.png')),
      ),
    );
  }
}

class SsoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.0,
      height: 15.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('images/login-sso.png')),
      ),
    );
  }
}

class SignInMenuImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 20.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('images/ic_round-login.png')),
      ),
    );
  }
}

Container CustomCircle({required Color color}) {
  return Container(
    height: 8.0,
    width: 8.0,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    ),
  );
}

Column TextFormColumn({
  required String label,
  required String hintText,
  obscure,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      Container(
        child: TextField(
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0Xff444150),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              )),
          obscureText: obscure != true ? false : true,
          keyboardType: TextInputType.visiblePassword,
        ),
        margin: EdgeInsets.only(top: 8.0),
        height: 48.0,
      ),
    ],
  );
}

Container buildDropDownColumn({required String hintText}) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          height: 48.0,
          width: 175.0,
          child: DropdownButtonFormField(
            icon: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.black,
            ),
            items: null,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0))),
          ),
        ),
      ],
    ),
  );
}

RichText signUpRichText() {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
        text: 'By signing up, you are agreeing to our',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: Color(0Xff444150),
        ),
        children: [
          TextSpan(
            text: ' Terms & Conditions ',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0Xff2EC4B6),
            ),
          ),
          TextSpan(
            text: '\nand',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0Xff444150),
            ),
          ),
          TextSpan(
            text: ' Privacy Policy ',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0Xff2EC4B6),
            ),
          ),
        ]),
  );
}