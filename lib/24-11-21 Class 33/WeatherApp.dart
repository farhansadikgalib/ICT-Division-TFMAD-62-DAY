import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;


class WeatherAppWithAPI extends StatefulWidget {
  const WeatherAppWithAPI({Key? key}) : super(key: key);

  @override
  _WeatherAppWithAPIState createState() => _WeatherAppWithAPIState();
}

class _WeatherAppWithAPIState extends State<WeatherAppWithAPI> {


  var cityname,maintemp,status,min,max,pressure,humidity,windspeed,sunrise,sunset;

  Future getSunriseSunset() async{

    final collectdata = await http.get(Uri.parse('https://api.sunrise-sunset.org/json?lat=36.7201600&lng=-4.4203400'));

    var sunrise_sunsetArray = jsonDecode(collectdata.body);

    setState(() {

      this.sunrise = sunrise_sunsetArray['results']['sunrise'];
      this.sunset = sunrise_sunsetArray['results']['sunset'];

    });


  }



  Future getWeather() async{

    final response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=dhaka&units=metric&appid=5a57dcbf2289448493158ffba84bb1e0'));

    var showData = jsonDecode(response.body);

    setState(() {

      this.cityname = showData['name'];
      this.maintemp = showData['main']['temp'];
      this.status = showData['weather'][0]['main'];
      this.min = showData['main']['temp_min'];
      this.max = showData['main']['temp_max'];
      this.pressure = showData['main']['pressure'];
      this.humidity = showData['main']['humidity'];
      this.windspeed = showData['wind']['speed'];



    });


  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      this.getWeather();
      this.getSunriseSunset();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(

        title: Text("Open Weather",style: TextStyle(color: Colors.black,fontFamily: "azonix"),),
        centerTitle: true,
        backgroundColor: Colors.cyan,

      ),
      body:Column(

        children: [

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              elevation: 10,

              color: Colors.cyan,
              child: Container(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        FaIcon(FontAwesomeIcons.locationArrow),
                        SizedBox(width:10 ,),
                        Text("Your location is ",style: TextStyle(fontFamily: "azonix"),),
                        Text(cityname != null ? cityname.toString():'Coxs Bazar',style: TextStyle(fontFamily: "azonix") )

                      ],

                    ),
                    SizedBox(height: 15,),
                    
                    Text(maintemp != null ? maintemp.toString()+ "\u00B0 C" :'10',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    SizedBox(height: 15,),
                    Text(status != null ? status.toString():'Rainy')




                  ],


                ),


              ),

            ),
          ),

          Expanded(child: ListView(

            padding: EdgeInsets.all(15),

            children: [

              ListTile(

                leading: FaIcon(FontAwesomeIcons.temperatureLow),
                tileColor: Colors.cyan,
                title: Text("Minimum Tempareture"),
                trailing: Text(min != null ? min.toString()+ "\u00B0 C" :'25'),

              ),
              ListTile(
                tileColor: Colors.cyan,

                leading: FaIcon(FontAwesomeIcons.temperatureHigh),
                title: Text("Maximum Tempareture"),
                trailing: Text(max != null ? max.toString()+ "\u00B0 C" :'25'),

              ),
              ListTile(
                tileColor: Colors.cyan,

                leading: FaIcon(FontAwesomeIcons.wpressr),

                title: Text("Pressure"),
                trailing: Text(pressure != null ? pressure.toString() :'25'),

              ),

              ListTile(
                tileColor: Colors.cyan,

                leading: FaIcon(FontAwesomeIcons.accessibleIcon),

                title: Text("Humidity"),
                trailing: Text(humidity != null ? humidity.toString()+ "Pa" :'25'),

              ),

              ListTile(
                tileColor: Colors.cyan,

                leading: FaIcon(FontAwesomeIcons.wind),

                title: Text("Wind Speed"),
                trailing: Text(windspeed != null ? windspeed.toString()+ " km/h" :'25'),

              ),

              ListTile(
                tileColor: Colors.cyan,

                leading: FaIcon(FontAwesomeIcons.cloudSunRain),

                title: Text("Sunrise"),
                trailing: Text(sunrise != null ? sunrise.toString() :'25'),

              ),

              ListTile(
                tileColor: Colors.cyan,

                leading: FaIcon(FontAwesomeIcons.cloudSun),

                title: Text("Sunset"),
                trailing: Text(sunset != null ? sunset.toString() :'25'),

              ),


            ],


          ))





        ],


      ) ,






    );
  }
}
