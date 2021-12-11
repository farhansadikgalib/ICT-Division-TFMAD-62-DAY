import 'package:button_day_62/11-12-21%20Class-40/Provider/Google%20Sign%20In%20Provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class GoogleSignUpButton extends StatelessWidget {
  const GoogleSignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: OutlineButton.icon(
            icon: FaIcon(
              FontAwesomeIcons.google,
              color: Colors.green,
            ),
            label: Text("Sign In with Google",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.green),),
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal:15,vertical: 10 ),

        onPressed: (){

              final provider = Provider.of<GoogleSignInProvider>(context,listen: false);

              provider.logout();


        },

        ),
      );
}
