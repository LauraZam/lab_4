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
      title: 'Lab 4',
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[300]),
      home: const MyHomePage(title: 'Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          "Lab 4: Layout Basics",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/image1.jpg', height: 100, width: 200, fit: BoxFit.scaleDown),
          const SizedBox(height: 16),
          Image.asset('assets/images/image2.jpg', height: 100, width: 200,  fit: BoxFit.fitWidth),
          //BoxFit.fill - Stretches image to given height and width 
          //BoxFit.contain - Entire image visible, may leave empty space [similar to having padding]
          //BoxFit.cover - Fills container, crops extra parts [no stretch, no paddings, but cropping image to fit container]
          //BoxFit.fitWidth - Fits width, height may overflow
          //BoxFit.fitHeight - Fits height, width may overflow
          //BoxFit.none - Original size, no scaling
          //BoxFit.scaleDown - Shrinks image only if needed [to fit container]
          const SizedBox(height: 16),
          Stack(children: [
            Image.asset('assets/images/image1.jpg', height: 200, width: 300, fit: BoxFit.fitHeight),
            Container(height: 200, width: 200, decoration: BoxDecoration(color: Colors.black.withOpacity(0.5))),
            Text('Welcome to Flutter', style: TextStyle(color: Colors.white, fontSize: 22, ),)
          ],),
          const SizedBox(height: 16),
          ElevatedButton(style: 
            ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              fixedSize: const Size(200, 50)
            ), onPressed: () {}, 
            child: Text('Show SnackBar', style: TextStyle(fontSize: 16, color: Colors.white))
          ),
          const SizedBox(height: 16),
          TextButton(style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            fixedSize: const Size(200, 50)
          ),
          onPressed: (){}, 
          child: Text("Go to Second Screen", style: TextStyle(fontSize: 16, color: Colors.green))
          ),
          const SizedBox(height: 16),
          OutlinedButton(style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            fixedSize: const Size(200, 50),
            side: BorderSide(color: Colors.black)
          ),
          onPressed: (){}, 
          child: Text("Go to Second Screen", style: TextStyle(fontSize: 16, color: Colors.black))
          )
        ]
      )),
    );
  }
}
