


import 'package:flutter/material.dart';

class RegistrationUI extends StatefulWidget {
  const RegistrationUI({Key? key}) : super(key: key);

  @override
  _RegistrationUIState createState() => _RegistrationUIState();
}

class _RegistrationUIState extends State<RegistrationUI> {

  int _value = 1;

  var nameController = TextEditingController();
  var addressController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var formkey = GlobalKey<FormState>();


  var name,address,phone,email,password;


  _handleSingUpButton(){

    if(formkey.currentState!.validate()){
      formkey.currentState!.save();

      print("Name is: ${this.name}");
      print("Email is: ${this.email}");
      print("Phone is: ${this.phone}");
      print("Address is: ${this.address}");
      print("Password is: ${this.password}");

    }


  }



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

              Form(
                  key: formkey,
                  child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Column(

                  children: [

                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Enter Your Name'

                      ),

                      validator: (value){
                        if(value!.isEmpty){
                          return ("First Enter Your Name Here !");
                        }

                      },

                  onSaved: (val){
                        this.name = val;

                  },


                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: addressController,
                      decoration: InputDecoration(
                          labelText: 'Enter Your Address'

                      ),

                      validator: (value){
                        if(value!.isEmpty){
                          return ("First Enter Your Address Here !");
                        }

                      },

                      onSaved: (val){
                        this.address = val;

                      },

                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: phoneController,
                      decoration: InputDecoration(
                          labelText: 'Enter Your phone number'

                      ),

                      validator: (value){
                        if(value!.isEmpty){
                          return ("First Enter Your Phone Here !");
                        }

                      },
                      onSaved: (val){
                        this.phone = val;

                      },

                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                          labelText: 'Enter Your Email Address'

                      ),

                      validator: (value){
                        if(value!.isEmpty){
                          return ("First Enter Your Email Here !");
                        }

                      },

                      onSaved: (val){
                        this.email = val;

                      },

                    ),
                    TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                          labelText: 'Enter Your Password'
                      ),

                      validator: (value){
                        if(value!.isEmpty){
                          return ("First Enter Your Password Here !");
                        }

                      },

                      onSaved: (val){
                        this.password = val;

                      },

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
                        RaisedButton(
                          onPressed: _handleSingUpButton,
                          child: Text(
                            "Sign Up Here",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.red,
                        )
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
