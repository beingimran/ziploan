import 'package:flutter/material.dart';
import 'package:zip/components/constant.dart';
import 'package:zip/components/validations.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _signInKey = GlobalKey<FormState>();
  bool checkedValue = true;
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Stack(children: [
        Container(
          width: size.width,
          decoration: BoxDecoration(color: BrandColorOrange),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * .3,
                ),
                Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                Text(
                  "Welcome to ZipLoan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                Text(
                  "Sign Up / Log in to apply for line of Credit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * .4,
            decoration: BoxDecoration(
                color: BrandColorWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Form(
                    key: _signInKey,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Mobile Number",
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: new BorderSide(),
                          ),
                          fillColor: Colors.grey),
                      controller: _controller,
                      keyboardType: TextInputType.number,
                      validator: Validators().validatedMobile,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "OTP will sent to this number for verification",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CheckboxListTile(
                    checkColor: Colors.green,
                    activeColor: Colors.white,

                    title: Text("I accept the terms and conditions"),
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        this.checkedValue = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                  TextButton(
                      onPressed: () {
                        if (_signInKey.currentState!.validate()) {}
                      },
                      child: Container(
                        height: 50,
                        width: size.width * .9,
                        decoration: BoxDecoration(
                            color: BrandColorOrange,
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                            child: Text(
                          "Continue",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        )),
                      ))
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
