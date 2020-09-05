import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Card(),
  ));
}

class Card extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  
  int level = 1;

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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              if(level>1) {
                setState(() {
                  level-=1;
                });
              }
            },
            child: Icon(Icons.remove),
            backgroundColor: Colors.grey[800],
          ),
          SizedBox(width: 10,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                level+=1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[800],
          ),
        ]
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
              'Windrunners-$level',
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
