import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewPasswordScreen extends StatefulWidget {
  const AddNewPasswordScreen({Key? key}) : super(key: key);

  @override
  _AddNewPasswordScreenState createState() => _AddNewPasswordScreenState();
}

class _AddNewPasswordScreenState extends State<AddNewPasswordScreen> {
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

              const Text('OTP Verification',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),),

              const SizedBox(height: 10.0),

              const Padding(
                padding: EdgeInsets.only(left: 50.0, right: 50.0),
                child: Text('Please enter code you received on your email',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 40.0),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color(0xFFF2F2F2),
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        prefixIcon: Icon(Icons.lock_outline,
                          color: Colors.grey,),
                        isDense: true,
                        contentPadding:
                        EdgeInsets.only(left: 0, bottom: 15, top: 15, right: 5),
                        hintText: "New Password"),
                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color(0xFFF2F2F2),
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        prefixIcon: Icon(Icons.lock_outline,
                          color: Colors.grey,),
                        isDense: true,
                        contentPadding:
                        EdgeInsets.only(left: 0, bottom: 15, top: 15, right: 5),
                        hintText: "Confirm New Password"),
                  ),

                ),
              ),

              const SizedBox(height: 40.0),

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
                    child: const Text('Confirm',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
