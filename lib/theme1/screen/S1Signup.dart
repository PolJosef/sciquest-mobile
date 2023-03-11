import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sciquest_mobile/main/utils/AppWidget.dart';
import 'package:sciquest_mobile/theme1/utils/T1Colors.dart';
import 'package:sciquest_mobile/theme1/utils/T1Constant.dart';
import 'package:sciquest_mobile/theme1/utils/T1Images.dart';
import 'package:sciquest_mobile/theme1/utils/T1Strings.dart';
import 'package:sciquest_mobile/theme1/utils/T1Widget.dart';

import '../../../main.dart';
const List<String> list = <String>['Academe','National Government Agency','Local Government Unit', 'Micro, Small & Medium Enterprises', 'NGOs', 'Private Sector', 'Student', 'Individuals'];

class S1Signup extends StatefulWidget {
  static var tag = "/S1SignUp";

  @override
  State<S1Signup> createState() => _S1SignupState();
}

class _S1SignupState extends State<S1Signup> {
  List<String> Affil = ['Academe','National Government Agency','Local Government Unit', 'Micro, Small & Medium Enterprises', 'NGOs', 'Private Sector', 'Student', 'Individuals'];
  String? SelAffil = 'Academe';
String? sex;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Observer(
            builder: (_) => SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[ 
                                
                  SizedBox(height: 50),
                  Image.asset(S1_SIProfile, height: 100, width: 100),
                 SizedBox(height: 20),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      formHeading(t1_lbl_register_header),
                    
                    ],
                  ),
                  SizedBox(height: 16),
                  editTextStyle(t1_hint_FName, isPassword: false),
                  SizedBox(height: 16),
                  editTextStyle(t1_hint_MName, isPassword: false),
                  SizedBox(height: 16),
                  editTextStyle(t1_hint_LName, isPassword: false),


    Text (t1_sex),

      RadioListTile(
          title: Text("Male"),
          value: "male", 
          groupValue: sex, 
          onChanged: (value){
            setState(() {
                sex = value.toString();
            });
          },
      ),

      RadioListTile(
          title: Text("Female"),
          value: "female", 
          groupValue: sex, 
          onChanged: (value){
            setState(() {
                sex = value.toString();
            });
          },
      ),


                  SizedBox(height: 16),
                  editTextStyle(t1_email, isPassword: false),
                  SizedBox(height: 16),
                  editTextStyle(t1_phone_no, isPassword: false),
                  SizedBox(height: 16),
                  editTextStyle(t1_hint_address, isPassword: false),
                  SizedBox(height: 16),
                  editTextStyle(t1_age, isPassword: false),
                  SizedBox(height: 16),
                  Text("Affiliation"),
                  SizedBox(height:32 ,
                   child: DropdownButton<String>(
                    value: SelAffil,
                    items: Affil
                      .map((Affil) =>DropdownMenuItem<String>(
                          value: Affil,
                          child: Text(Affil, style: TextStyle(fontSize: 18)),
                      ))
                      .toList(),
                      onChanged: (Affil) => setState(() => SelAffil = Affil),
                      
                  ),
                  ),

                  SizedBox(height: 16),
                  editTextStyle(t1_hint_password, isPassword: true),
                  SizedBox(height: 16),
                  editTextStyle(t1_hint_re_password, isPassword: true),
                  SizedBox(height: 20),
                  
                  Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: shadowButton(t1_lbl_sign_up)),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      text(t1_lbl_already_have_account,
                          textColor: appStore.textSecondaryColor,
                          fontSize: textSizeLargeMedium),
                      SizedBox(width: 8),
                      text(t1_lbl_sign_in,
                          fontFamily: fontMedium, textColor: t1_blue)
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
