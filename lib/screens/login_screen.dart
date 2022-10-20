import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:line_icons/line_icons.dart';
import 'package:semifinal/component/custom_button.dart';
import 'package:semifinal/component/google_sign_in.dart';
import 'package:semifinal/component/rich_text.dart';
import 'package:semifinal/component/text_field.dart';

import 'package:ionicons/ionicons.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:semifinal/screens/screen2.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: rich_text(),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Sign in',
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xffe46b10),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/1.png"))),
            ),
            Text_Field(
              obscure: false,
              controller: email,
              TypeInput: "Email",
              prefixIcon: const Icon(Icons.email),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: showPassword,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      showPassword ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  prefixIcon: const Icon(LineIcons.doubleCheck),
                  hintText: 'Enter Your Password.',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: 'password',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                  hintStyle: TextStyle(color: Colors.black87, fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                controller: password,
                maxLines: 1,
                maxLength: 40,
                cursorColor: Colors.black,
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "forget_password");
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(
                    color: Color(0xffe46b10), fontStyle: FontStyle.italic),
              ),
            ),
            MyButton(
                onTap: () async {
                  try {
                    var authin = FirebaseAuth.instance;
                    UserCredential user =
                        await authin.signInWithEmailAndPassword(
                            email: email.text, password: password.text);
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Screentwo();
                      },
                    ));
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("sorry invalid email or pass")));
                  }
                },
                text: "Login"),
            Row(
              children: <Widget>[
                Text('Does not have account?'),
                TextButton(
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "sign_up");
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sign in With google account"),
                  IconButton(
                      onPressed: () {
                        GoogleLogin().googlelogin();
                      },
                      icon: Icon(Ionicons.logo_google))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
