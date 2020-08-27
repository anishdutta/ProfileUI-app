import 'package:flutter/material.dart';
import 'package:flutter_traveler_profile_app/SizeConfig.dart';
import 'FadeAnimation.dart';



class EditProfilePage extends StatefulWidget {
  static String id = 'login_page';

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool isHidden = true;
  void toggleVisibility() {
    setState(() {
      isHidden = !isHidden;
    });
  }
  void initState(){
    super.initState();
    txt.text = 'Anish Dutta';
  }

  String email;
  String password;
  var txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        brightness: Brightness.light,
        backgroundColor: Colors.white70,
        leading: IconButton(

          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.cancel,
            size: 35,
            color: Colors.red,
          ),
        ),
        title: Text('Edit Profile',
        style: TextStyle(
          color: Colors.black87
        ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.check,
              size: 35,

              color: Colors.green,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Column(

                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Container(

                        height: 15 * SizeConfig.heightMultiplier,
                        width: 30 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/profileimg.png"))
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Change Profile Photo',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                      ),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 25,
                        ),
                    FadeAnimation(
                      1.3,
                      TextField(

                      controller: txt,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.teal,
                              fontWeight: FontWeight.bold),
                          focusColor: Colors.teal[500],




                        ),
                      ),
                    ),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                          1.8,
                          TextField(

                            controller: txt,
                            decoration: InputDecoration(
                              labelText: 'Userame',
                              labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold),
                              focusColor: Colors.teal[500],




                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                          2,
                          TextField(

                            decoration: InputDecoration(
                              labelText: 'Bio',
                              labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold),
                              focusColor: Colors.teal[500],




                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                          2.5,
                          TextField(

                            controller: txt,
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold),
                              focusColor: Colors.teal[500],




                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                          3,
                          TextField(

                            controller: txt,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold),
                              focusColor: Colors.teal[500],




                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}