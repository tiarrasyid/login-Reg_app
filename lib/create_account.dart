import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Expanded(
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        size: 30,
                        color: Color.fromRGBO(1, 186, 118, 1),
                      ))),
              const Expanded(
                child: SizedBox(),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              const Expanded(
                child: SizedBox(),
              ),
            ],
          ),
          const SizedBox(
            height: 33,
          ),
          Text(
            "Create Account",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text("Create a new account",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 15)),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(right: 30, left: 30, top: 25),
            child: Column(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                      colorScheme: ThemeData().colorScheme.copyWith(
                          primary: const Color.fromRGBO(1, 168, 118, 1))),
                  child: TextFormField(
                    style:
                        const TextStyle(color: Color.fromRGBO(1, 168, 118, 1)),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.person_outline),
                        labelText: 'NAME',
                        labelStyle:
                            TextStyle(fontSize: 15, color: Colors.grey[500])),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30, left: 30, top: 25),
            child: Column(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                      colorScheme: ThemeData().colorScheme.copyWith(
                          primary: const Color.fromRGBO(1, 168, 118, 1))),
                  child: TextFormField(
                    style:
                        const TextStyle(color: Color.fromRGBO(1, 168, 118, 1)),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.email),
                        labelText: 'EMAIL',
                        labelStyle:
                            TextStyle(fontSize: 15, color: Colors.grey[500])),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30, left: 30, top: 25),
            child: Column(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                      colorScheme: ThemeData().colorScheme.copyWith(
                          primary: const Color.fromRGBO(1, 168, 118, 1))),
                  child: TextFormField(
                    style:
                        const TextStyle(color: Color.fromRGBO(1, 168, 118, 1)),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.smartphone),
                        labelText: 'PHONE',
                        labelStyle:
                            TextStyle(fontSize: 15, color: Colors.grey[500])),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30, left: 30, top: 25),
            child: Column(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                      colorScheme: ThemeData().colorScheme.copyWith(
                          primary: const Color.fromRGBO(1, 168, 118, 1))),
                  child: TextFormField(
                    style:
                        const TextStyle(color: Color.fromRGBO(1, 168, 118, 1)),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.lock),
                        labelText: 'PASSWORD',
                        labelStyle:
                            TextStyle(fontSize: 15, color: Colors.grey[500])),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30, left: 30, top: 25),
            child: Column(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                      colorScheme: ThemeData().colorScheme.copyWith(
                          primary: const Color.fromRGBO(1, 168, 118, 1))),
                  child: TextFormField(
                    style:
                        const TextStyle(color: Color.fromRGBO(1, 168, 118, 1)),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.lock),
                        labelText: 'CONFIRM PASSWORD',
                        labelStyle:
                            TextStyle(fontSize: 15, color: Colors.grey[500])),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 33,
          ),
          Container(
            width: 350,
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
                "CREATE ACCOUNT",
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
              const Text('Already have a account?'),
              // horizontalSpaceTiny,
              GestureDetector(
                //    onTap: () {
                //      Navigator.push(context,
                //          MaterialPageRoute(builder: (builder) => Register()));
                //    },
                child: Text(
                  style: TextStyle(
                    color: Color.fromRGBO(1, 186, 112, 1),
                  ),
                  'Login',
                  // style: TextStyle(color: kcPrimaryColor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
