import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.brown,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30,60,30,30 ),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

                Icon(Icons.account_box,size: 40,color: Colors.white,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image(
                  image: AssetImage('images/profile.webp'),
                  width: 50,
                  height:50,
                  fit: BoxFit.cover,
                ),
            ),
            ],
            ),
          SizedBox(height: 20,),
          Container(width: 305,
            child: Text('How many do you need?',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent),),
          ),
            Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: AspectRatio(
                    aspectRatio: 1.0, // This sets the aspect ratio to be square (1:1)
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200.0),
                      child: Image(
                        image: AssetImage('images/cup.webp'),
                        fit: BoxFit.cover,

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text('Cappuccino',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white), ),
                SizedBox(height: 2,),
                Container(width: 250,
                  child: Text('Double esspresso steamed milk,hot milk',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white),
                    textAlign: TextAlign.center,),

                )
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.minusCircle,
                  size: 60,
                  // The correct property is "weight", not "fontWeight"

                  color: Colors.grey,
                ),
              ),Text('1',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
              IconButton(onPressed: (){}, icon: Icon(
                FontAwesomeIcons.plusCircle,
                size: 60,color: Colors.grey,),),
            ], ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),),minimumSize: Size(350, 60),
              ),
              onPressed: (){},
              child: Text('Buy',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),)
          )
        ],),
      ),
    ),),);
}

