import 'package:flutter/material.dart';
import 'package:sketchapp_sample/common_widget/custom_raised_button.dart';
import 'package:sketchapp_sample/common_widget/custom_textField.dart';
import 'package:sketchapp_sample/utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: Utils.getScreenHeight(context),
        width: Utils.getScreenWidth(context),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [.01,.5,3 ],
              colors: [
                Colors.tealAccent.shade400,
                Colors.blue.shade300,
                Colors.purple.shade100
              ]),
              
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Utils.getScreenHeight(context)/4,),
              Icon(Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 90,),
                   SizedBox(height: Utils.getScreenHeight(context)/50,),
              Text("Log in to your account",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
        
              ),)  ,
        
              SizedBox(height: Utils.getScreenHeight(context)/20,),
              CustomTextField(text: "Phone,email or username"),
              SizedBox(height: Utils.getScreenHeight(context)/100,),
               CustomTextField(text: "Password",
               keyboardType: TextInputType.number,),
               SizedBox(height: Utils.getScreenHeight(context)/30,),
              Container(
                width: Utils.getScreenWidth(context)/1.2,
                child: CustomRaisedButton(
                  text: "Log in", 
                  color: Colors.white, 
                  onPressed: (){}),
              ),
                SizedBox(height: Utils.getScreenHeight(context)/60,),
                TextButton(
                  onPressed: (){}, 
                  child: Text("Create a new account",
                  style: TextStyle(
                    color: Colors.white
                  ),))
        
        
            ],
          ),
        ),
      ),
    );
  }
}
