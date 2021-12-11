import 'package:button_day_62/11-12-21%20Class-40/Provider/Google%20Sign%20In%20Provider.dart';
import 'package:button_day_62/11-12-21%20Class-40/Widgets/SignUpWidget.dart';
import 'package:button_day_62/11-12-21%20Class-40/Widgets/loginWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class GoogleLoginPage extends StatefulWidget {
  const GoogleLoginPage({Key? key}) : super(key: key);

  @override
  _GoogleLoginPageState createState() => _GoogleLoginPageState();
}

class _GoogleLoginPageState extends State<GoogleLoginPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Google Login"),
        centerTitle: true,
      ),
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),

        child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot){
              final provider = Provider.of<GoogleSignInProvider>(context);

              if(provider.isSigningIn){

                return buildLoading();

              }else if(snapshot.hasData){
                return LoggedInWidget();

              }



              else{

                return SignUpWidget();

              }


            }),

      ),
    );
  }

  Widget buildLoading() => Stack(

    children: [

      Center(child: CircularProgressIndicator())
    ],

  );


}
