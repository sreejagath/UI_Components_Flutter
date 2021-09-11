import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return 
      MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      
      );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            child: Text('Click for entering Page with Basic UI Components'),
          ),
        ),
      );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>
            [ Text('Here used Layout widgets , Row and column'),
              Row(
              children: [
                Icon(Icons.star, size: 50, color: Colors.red),
                Icon(Icons.star, size: 50, color: Colors.red),
                Icon(Icons.star, size: 50, color: Colors.red),
                Icon(Icons.star, size: 50, color: Colors.red),
                Icon(Icons.star, size: 50, color: Colors.red),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child:Text('Click to Go Back'),
                ),
                SizedBox(height: 20,),
                Text('Used Sized Box'),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                  child:Text('Click to go to next page'),
                )
              ],
            ),
          ]
          )
        ]
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/image.jpg'),
              
            )
          ),
          Column(
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child:Text('Click to Go Back'),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForthPage()));
                  },
                  child:Text('Click to go to next page'),
                )
              ],
            ),
        ],
      ),
    );
  }
}

class ForthPage extends StatelessWidget {
  const ForthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child:Text('Click for alert !'),
              onPressed:(){
                showDialog<Widget>(context: context,
                 builder: (BuildContext context)=>AlertDialog(
                   title:const Text('Alert Dialog'),
                   content:const Text('This is alert dialog'),
                   actions: <Widget>[
                     TextButton(onPressed: (){
                       Navigator.pop(context);
                     }, child: Text('OK')),
                     TextButton(onPressed: (){
                       Navigator.pop(context);
                     }, child: Text('Cancel')),
                   ]

                 )) ;

              }
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child:Text('Click for SnackBar !'),
              onPressed:(){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('This is SnackBar'),
                  action: SnackBarAction(
                    label: 'OK',
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ));
              }
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child:Text('Back Page !'),
              onPressed: (){
                Navigator.pop(context);
              }

            ),
            
            
          ],
        ),
        ],
      ),
    );
  }
}