import 'package:button_day_62/11-12-21%20Class-40/Provider/Google%20Sign%20In%20Provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoggedInWidget extends StatelessWidget {
  const LoggedInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = FirebaseAuth.instance.currentUser;

    return Container(
      alignment: Alignment.center,
      child: InkWell(

        onTap: (){

        },

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            Text("Logged In User's Data"),
            SizedBox(height: 30,),

            CircleAvatar(
              maxRadius: 80,
              backgroundImage: NetworkImage(user!.photoURL!),
            ),
            SizedBox(height: 15,),

            Text("User Name: "+ user!.displayName!),

            SizedBox(height: 15,),

            Text("User email: "+ user.email!),

            SizedBox(height: 15,),

            ElevatedButton(onPressed: (){
              final provider = Provider.of<GoogleSignInProvider>(context,listen: false);

              provider.logout();


            }, child: Text("Log out")),





          ],

        ),
      ),


    );
  }
}
