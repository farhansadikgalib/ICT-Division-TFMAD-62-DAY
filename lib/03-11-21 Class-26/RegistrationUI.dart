


import 'package:flutter/material.dart';

class RegistrationUI extends StatefulWidget {
  const RegistrationUI({Key? key}) : super(key: key);

  @override
  _RegistrationUIState createState() => _RegistrationUIState();
}

class _RegistrationUIState extends State<RegistrationUI> {

  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.greenAccent,

        body: Center(
          child: Column(


            children: [

              SizedBox(height: 30,),
              Text("Registration Here",style: TextStyle(fontSize: 30),),

              Form(child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Column(

                  children: [

                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Enter Your Name'

                      ),

                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: 'Enter Your Address'

                      ),

                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelText: 'Enter Your phone number'

                      ),

                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Enter Your Email Address'

                      ),

                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Enter Your Password'
                      ),

                    ),

                    Row(

                      children: [

                        Text("Gender"),

                        Row(

                          children: [

                            Radio(value: 1, groupValue: _value, onChanged:(valuex) {
                              setState(() {


                                valuex = _value;

                              });

                            }),

                            Text("Male")


                          ],

                        ),
                        Row(

                          children: [

                            Radio(value: 2, groupValue: _value, onChanged:(valuex) {
                              setState((


                                  ) {

                                valuex = _value;


                              });

                            }),

                            Text("Female")


                          ],

                        ),


                      ],
                    ),


                    DropdownButtonFormField(
                        hint: Text("Enter Your Status"),
                        onChanged: (value){
                          setState(() {
                            print(value);
                          });

                        },
                        items: [

                      DropdownMenuItem(child: Text("Married"),value: 'married',),
                      DropdownMenuItem(child: Text("Devorced"),value: 'devorced',),
                      DropdownMenuItem(child: Text("Complecated"),value: 'complecated',),
                      DropdownMenuItem(child: Text("Bekar"),value: 'bekar',),


                    ]),

                    SizedBox(height: 30,),

                    RaisedButton(onPressed: (){},child: Text("Sign Up Here",style: TextStyle(color: Colors.white),),color: Colors.red,)




                  ],


                ),
              ))


            ],

          ),
        ),
        


      ),
    );
  }
}
