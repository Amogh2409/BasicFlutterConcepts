import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/utils/additional_info.dart';
import 'package:weather_app/utils/hourly_forcast_cards.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.black,
            ),
            onPressed: () {
              print('Refresh');
            },
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    Text('26 °C',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        )),
                        Icon(Icons.wb_sunny, size: 64, color: Colors.orange,),
                        SizedBox(height: 16,),
                        Text('Sunny', style: TextStyle(fontSize: 24),),
                  
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Hourly Forecast',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              
                children: [
                  HourlyForcastCard(),
                  HourlyForcastCard(),
                  HourlyForcastCard(),
                  HourlyForcastCard(),
                  HourlyForcastCard(),
                  HourlyForcastCard()

                
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Additional Info',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AdditionalInfo(),
                AdditionalInfo(),
                AdditionalInfo(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
