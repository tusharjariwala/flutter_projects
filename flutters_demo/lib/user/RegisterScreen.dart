import 'package:flutter/material.dart';
import 'package:preticaldemo/components/custom_text_field.dart';
import 'package:preticaldemo/components/splash_button.dart';
import 'package:preticaldemo/utils/constant.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = "RegisterScreen";

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController userNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController addressController = new TextEditingController();
  TextEditingController contactNoController = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      backgroundColor: kAppBarColor,
      appBar: AppBar(
        title: Text("Register"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                width: 150,
                padding: const EdgeInsets.all(5.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 5.0,
                    )
                  ],
                  image: DecorationImage(
                    image: AssetImage("assets/demo1.jpg"),
                  ),
                ),
              ),
              Text("Student Demo"),
              //Username
              EditText(
                hintText: "User Name",
                keyBoardType: TextInputType.text,
                password: false,
                textController: userNameController,
                fillColor: Colors.white,
                borderWidth: 1.0,
                onTap: () {},
                readOnly: false,
                borderRadius: 5.0,
                maxLines: 1,
                focusedBorderColor: Colors.grey,
                inputAction: TextInputAction.next,
              ),
              EditText(
                hintText: "Address",
                keyBoardType: TextInputType.text,
                password: false,
                textController: addressController,
                fillColor: Colors.white,
                borderWidth: 1.0,
                onTap: () {},
                readOnly: false,
                borderRadius: 5.0,
                maxLines: 1,
                focusedBorderColor: Colors.grey,
                inputAction: TextInputAction.next,
              ),
              EditText(
                hintText: "ContactNo",
                keyBoardType: TextInputType.visiblePassword,
                password: true,
                textController: contactNoController,
                fillColor: Colors.white,
                borderWidth: 1.0,
                onTap: () {},
                readOnly: false,
                borderRadius: 5.0,
                maxLines: 1,
                focusedBorderColor: Colors.grey,
                inputAction: TextInputAction.next,
              ),

              EditText(
                hintText: "Password",
                keyBoardType: TextInputType.visiblePassword,
                password: true,
                textController: passwordController,
                fillColor: Colors.white,
                borderWidth: 1.0,
                onTap: () {},
                readOnly: false,
                borderRadius: 5.0,
                maxLines: 1,
                focusedBorderColor: Colors.grey,
                inputAction: TextInputAction.next,
              ),
              MaterialSplashButton(
                onTap: () {},
                color: kButtonBackgroundColor,
                height: 55,
                width: width,
                text: "Register",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
