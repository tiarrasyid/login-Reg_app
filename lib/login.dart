import 'package:flutter/material.dart';
import 'package:login_app/create_account.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle,
              color: Colors.grey,
              size: 150,
            ),
            Text(
              "Welcome Back",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Sign to continue",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 15)),
            SizedBox(
              height: 60,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Material(
                elevation: 5,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(7)),
                child: Theme(
                  data: Theme.of(context).copyWith(
                      colorScheme: ThemeData()
                          .colorScheme
                          .copyWith(primary: Color.fromRGBO(1, 186, 112, 1))),
                  child: const TextField(
                    style: TextStyle(color: Colors.green),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        labelText: ('EMAIL'),
                        labelStyle:
                            TextStyle(fontSize: 15, color: Colors.grey)),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Material(
                elevation: 5,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(7)),
                child: Theme(
                  data: Theme.of(context).copyWith(
                      colorScheme: ThemeData()
                          .colorScheme
                          .copyWith(primary: Color.fromRGBO(1, 186, 112, 1))),
                  child: const TextField(
                    style: TextStyle(color: Colors.green),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                        labelText: ('PASSWORD'),
                        labelStyle:
                            TextStyle(fontSize: 15, color: Colors.grey)),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password ?",
                      style: TextStyle(
                          color: Color.fromRGBO(1, 186, 112, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: 360,
              height: 60,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have account?'),
                // horizontalSpaceTiny,
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => Register()));
                  },
                  child: Text(
                    style: TextStyle(
                      color: Color.fromRGBO(1, 186, 112, 1),
                    ),
                    'Create an new account',
                    // style: TextStyle(color: kcPrimaryColor),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
