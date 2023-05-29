import 'package:flutter/material.dart';
import 'package:phycare_recruitment/pages/fitness_light.dart';
import 'package:phycare_recruitment/pages/awards_page.dart';
import 'package:phycare_recruitment/pages/profile.dart';
import 'package:phycare_recruitment/pages/training_page.dart';
import 'package:flutter/services.dart';


void main() {
  SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData(fontFamily: "Exo"),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentTab = 0 ;
  final List<Widget>Screens = [
    FitnessLight(),
    Training(),
    Awards(),
    Profile()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = FitnessLight();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageStorage(
          child: currentScreen,
          bucket: bucket
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){} , backgroundColor:Color(0xFFF5F5DC)),

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen = FitnessLight();
                      currentTab = 0;
                    });
                  },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.directions_run, color: currentTab==0 ? Colors.black : Colors.grey),
                          Text("Fitness")
                        ],
                      )),

                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen = Training();
                      currentTab = 1;
                    });
                  },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.model_training, color: currentTab==1 ? Colors.black : Colors.grey),
                          Text("Training")
                        ],
                      )),

                ],
              ),
              Row(
                children: [
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen = Awards();
                      currentTab = 3;
                    });
                  },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.wallet, color: currentTab==3 ? Colors.black : Colors.grey),
                          Text("Awards")
                        ],
                      )),

                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen = Profile();
                      currentTab = 4;
                    });
                  },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person, color: currentTab==4 ? Colors.black : Colors.grey),
                          Text("Profile")
                        ],
                      )),

                ],
              ),
            ],
          ),
        ),

      ),

    );
  }
}




