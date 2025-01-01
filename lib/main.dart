import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:starter_pack/components/appBarComponent.dart';
import 'package:starter_pack/components/drawerComponent.dart';
import 'package:starter_pack/firebase_options.dart';
import 'package:starter_pack/screens/home.dart';


// without firebase
// void main() {
//   return runApp(MyApp());
// }

//with firebase
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: Appbarcomponent(),
        body: Home(),
        drawer: Drawercomponent(),
      ),
      routes: {
        '/detail': (BuildContext context) {return Placeholder();}
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins', useMaterial3: true),
    );
  }
}
