import 'package:flutter/material.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
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
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Container(
                        height: 60.0,
                        width: 50.0,
                        decoration: const BoxDecoration(
                            color: Color(0xFFF2F2F2),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child: const Center(
                          child: Text('8',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),),
                        ),
                      ),

                    Container(
                      height: 60.0,
                      width: 50.0,
                      decoration: const BoxDecoration(
                          color: Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child: const Center(
                        child: Text('8',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),

                    Container(
                      height: 60.0,
                      width: 50.0,
                      decoration: const BoxDecoration(
                          color: Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child: const Center(
                        child: Text('8',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),

                    Container(
                      height: 60.0,
                      width: 50.0,
                      decoration: const BoxDecoration(
                          color: Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child: const Center(
                        child: Text('8',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),

                    Container(
                      height: 60.0,
                      width: 50.0,
                      decoration: const BoxDecoration(
                          color: Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child: const Center(
                        child: Text('8',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),

                  ],
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
                      Navigator.pushReplacementNamed(context, '/add_new_password');
                    },
                    child: const Text('Verify',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              ),

          const SizedBox(height: 20.0,),

              const Text('Resend Code',
                style: TextStyle(color: Colors.black,
                    fontSize: 15.0),),

            ],
          ),
        ),
      ),
    );
  }
}
