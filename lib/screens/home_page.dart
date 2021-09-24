import 'package:flutter/material.dart';
import 'package:sketchapp_sample/common_widget/custom_raised_button.dart';
import 'package:sketchapp_sample/screens/login_page.dart';
import 'package:sketchapp_sample/utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
            ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: Utils.getScreenHeight(context)/3,),
                Icon(Icons.check_circle_outline_sharp,
                color: Colors.white,
                size: 90,),
                SizedBox(height: Utils.getScreenHeight(context)/60,),
                Text("Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: 34,
                ),),
                SizedBox(height: Utils.getScreenHeight(context)/60,),
                Text("Lorem ipsum dolor sit amet,\n consectetur adipisicing elit.",
                
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),),
                SizedBox(height: Utils.getScreenHeight(context)/5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.keyboard_control_sharp,
                color: Colors.white,
                size: 48,
                ),
                
                  ],
                  
                ),
                Container(width: Utils.getScreenWidth(context)/1.5,
                  child: CustomRaisedButton(
                    text: "Get Started", 
                    color: Colors.white,
                   onPressed:()=> Navigator.of(context).push(
     MaterialPageRoute<void>(
       
       builder: (context)=> LoginPage())
   )
                  
                  
            ),
                ),])
      ),
    );
  }
}
