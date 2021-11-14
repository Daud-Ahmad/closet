import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

             const SizedBox(height: 20.0),

              Image.asset('assets/app_icon_white.png',
              width: 100.0,
              height: 100.0,),

              const SizedBox(height: 30.0),

              const Text('Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),),

              const SizedBox(height: 10.0),

              const Padding(
                padding: EdgeInsets.only(left: 60.0, right: 60.0),
                child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color(0xFFF2F2F2),
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        prefixIcon: Icon(Icons.phone_iphone_outlined,
                        color: Colors.grey,),
                        isDense: true,
                        contentPadding:
                        EdgeInsets.only(left: 0, bottom: 15, top: 15, right: 5),
                        hintText: "Phone Number"),
                  ),

                ),
              ),

              const SizedBox(height: 20.0),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  margin: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(0x0, 0x0, 0x0, 1.0)
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: const Text('Login',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              ),

          const SizedBox(height: 20.0,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
                width: double.infinity,
                height: 50.0,
                child: OutlinedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/sign_up');
                    }, child: const Text('Sign Up',
                style: TextStyle(color: Colors.black,
                fontSize: 18.0),),
                ),
              )
          ),

              const SizedBox(height: 20.0,),

              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/forget_password');
                },
                child: const Text('Forget Password',
                  style: TextStyle(color: Colors.black,
                      fontSize: 15.0),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
