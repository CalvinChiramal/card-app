import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Card(),
  ));
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Knights Radiant progress',
          style: TextStyle(
            color: Colors.deepOrange[400]
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/omen.jpg'),
                radius: 60,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Calvin',
              style: TextStyle(
                color: Colors.lightBlue[600],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ), 
            SizedBox(height: 30,),
            Text(
              'ORDER',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Windrunners',
              style: TextStyle(
                color: Colors.lightBlue[600],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ), 
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.lightBlue[600],
                ),
                SizedBox(width: 10,),
                Text(
                  'Third Ideal',
                  style: TextStyle(
                    color: Colors.lightBlue[600],
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}