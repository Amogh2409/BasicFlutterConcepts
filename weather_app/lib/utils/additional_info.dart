import 'package:flutter/material.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 120,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 6,
          child: Container(
            width: 100,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  
                  Icon(
                    Icons.water_drop,
                    size: 32,
                    color: Colors.blue
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Humidity',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '20%',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}



