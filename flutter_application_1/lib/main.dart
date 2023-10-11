
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Row(
            children: [
              Icon(
                Icons.person,
                size: 50,
              ),
              Text('AHOM TECNOLOGIES', style: TextStyle(color: Colors.black87))
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('HOME' , style: TextStyle(color: Colors.grey),),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('ABOUT US', style: TextStyle(color: Colors.grey)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('OUR SERVICES', style: TextStyle(color: Colors.grey)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('PRIVACY POLICIES', style: TextStyle(color: Colors.grey)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('conditions', style: TextStyle(color: Colors.grey)),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('CONTACT US'),
            )
          ],
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          elevation: 0,
        ),
        body:  Container(
            width: double.infinity,
            height: 1200,
            child: ListView(
              children: [
                Container(
                  height: 700,
                  width: double.infinity,
                  decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/gr.jpg'),fit: BoxFit.cover)),
            
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahom technologies',
                              style: TextStyle(fontSize: 60),
                            ),
                            SizedBox(
                                width: 400,
                                child: Text(
                                    'There is no such thing as a boring projects and building features in an innovation world full of adventures delight your customer  make a great first impression drive everything with a cutomer focus be postive be procative ofer A SEAMLESS EXPERIENCE, EXCCED CUTOMER NEEDS AND EXPEC',
                                    style: TextStyle(fontSize: 20,color: Colors.black87))),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('visit now'),
                            )
                          ],
                        ),
                      //
                      ]),
                ),
             
             Container(
              height: 800,
              width: double.infinity,
             // color: Colors.amber,
              child:  GridView.count(crossAxisCount: 3,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/one.jpg'),fit: BoxFit.cover))),
        ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/hallo.jpg'),fit: BoxFit.cover))),
         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/three.jpg'),fit: BoxFit.cover))),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/four.jpg'),fit: BoxFit.cover))),
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/five.jpg'),fit: BoxFit.cover))),
            )

      ],)
      
    ,
             ),
             Container(
              height: 800,
              width: double.infinity,
             color: Colors.amber,
              child:  Text('WE BUILD ANY TYPE OF TECHNOLOGY' ,style: TextStyle(fontFamily:AutofillHints.addressCityAndState,fontSize: 40),)
              
             
             )
              ],
            )),
        );
  }
}