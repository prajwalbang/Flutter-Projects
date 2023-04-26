import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import './newPwScreen.dart';

class SendOTPScreen extends StatelessWidget {
  static const routeName = "/sendOTP";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "We have sent an OTP to your mobile no.",
                style: Helper.getTheme(context).headline6,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Please check your mobile no. 9909004155 continue to reset your password",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OTPInput(),
                  OTPInput(),
                  OTPInput(),
                  OTPInput(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(NewPwScreen.routeName);
                  },
                  child: Text("Next"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn't receive? "),
                    Text(
                      "Clear here",
                      style: TextStyle(
                        color: AppColor.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OTPInput extends StatelessWidget {
  const OTPInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 18, left: 20),
            child: Text(
              '*',
              style: TextStyle(fontSize: 45),
            ),
          ),
          TextField(
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ],
      ),
    );
  }
}
