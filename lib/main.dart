import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("Drawer Header"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("My Portfollio App"),
        leading: Icon(
          Icons.menu,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                    child: ClipRRect(                      borderRadius:BorderRadius.circular(70),
                      child: Image.asset("assets/images/appstore.png"),
                    )
                ),
                SizedBox(width: 30,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text("Kishan Upadhyay",style: TextStyle(fontSize: 25),),
                    Text("Developer")
                  ],
                )
              ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[Icon(Icons.school),
                      SizedBox(width: 10,),
                      Text("Lovely Professional University",style: TextStyle(fontSize: 20),)],
                  ),
                  Row(
                    children: <Widget>[Icon(Icons.computer_rounded),
                      SizedBox(width: 10,),
                      Text("Projects",style: TextStyle(fontSize: 20),)],
                  ),
                  Row(
                    children: <Widget>[Icon(Icons.location_pin),
                      SizedBox(width: 10,),
                      Text("Varansi U.P.",style: TextStyle(fontSize: 20),)],
                  ),
                  Row(
                    children: <Widget>[Icon(Icons.email),
                      SizedBox(width: 10,),
                      Text("kishanup789@gmail.com",style: TextStyle(fontSize: 20),)],
                  ),
                  Row(
                    children: <Widget>[Icon(Icons.phone),
                      SizedBox(width: 10,),
                      Text("6307997224",style: TextStyle(fontSize: 20),)],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Text(
                "I am a passionate Developer and curious about learning new things recently i am looking for flkutter internship .",
                 style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30,),
            Text("This is made By Kishan")
          ],
        ),
      ),
    );
  }
}
