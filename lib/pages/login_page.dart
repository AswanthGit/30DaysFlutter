import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String loginImage = "assets/images/selfie.svg";
    return Material(
        child: Column(
      children: [
        SvgPicture.asset(
          loginImage,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Welcome',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter your Name', labelText: 'User Name'),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter password', labelText: 'Password'),
              )
            ],
          ),
        ),
        SizedBox(height: 20,),
        ElevatedButton(
          child: Text('Login'),
          style: TextButton.styleFrom(),
          onPressed: ()=>print('Hai Aswanth'),
        ),

      ],
    ));
  }
}
