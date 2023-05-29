import 'package:flutter/material.dart';
import 'package:phycare_recruitment/pages/steps.dart';




class FitnessLight extends StatefulWidget {
  const FitnessLight({Key? key}) : super(key: key);

  @override
  State<FitnessLight> createState() => _FitnessLightState();
}

class _FitnessLightState extends State<FitnessLight> with SingleTickerProviderStateMixin {
  final maxprogress =100.0;

  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
              colors: [

                Color(0XFF121212),
                Color(0XFF333333),
                Color(0XFF525252),


              ])
        ),
        child: Column(
          children: [
            SizedBox(height: 50.0),
            Row(
              children: [
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.white,
                  child:CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.white,
                  ),
                  shape: CircleBorder(),
                ),
                Spacer(),
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 20.0,
                  ),
                  padding: EdgeInsets.all(12.0),
                  shape: CircleBorder(),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.transparent  , borderRadius: BorderRadius.circular(50) , border: Border.all(width: 5,color: Colors.red)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Heart Rate" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold,color: Colors.white)),
                  Text("120", style: TextStyle(fontSize: 65, fontWeight: FontWeight.bold,color: Colors.white)),
                  Row(mainAxisAlignment: MainAxisAlignment.center
                      ,children:[Text("bpm", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold,color: Colors.white))
                      ,IconButton(onPressed: (){}, icon:Icon(Icons.monitor_heart,color: Colors.white,))]),
                ]),
              ),
            SizedBox(height: 20),
            Container(
              height:MediaQuery.of(context).size.height*0.62,
              child: ListView.custom(childrenDelegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [

                              Color(0XFF382c5a),
                              Color(0XFF514378),
                              Color(0XFF382c5a),


                            ]),
                        borderRadius: BorderRadius.circular(10.0)),
                    height: MediaQuery.of(context).size.height*0.25,
                    width:MediaQuery.of(context).size.width*0.95,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Calories",style: TextStyle(fontSize: 30.0 , color: Colors.white)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*0.20,
                              width: 150,
                              child: Stack(
                                  children: [
                                    Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                                      Text("320",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0,color: Colors.white)),
                                      Text("kcal",style: TextStyle(color: Colors.white))],),),
                                    TweenAnimationBuilder(
                                        tween: Tween(begin: 0.0 , end: 0.4),
                                        duration: Duration(seconds: 4),
                                        builder: (context , value , _)=>SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: CircularProgressIndicator(
                                            value: value,
                                            backgroundColor: Color(0xFFFFB6C1),
                                            color: Colors.pinkAccent,
                                            strokeWidth: 12,
                                          ),
                                        )),

                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [

                          Color(0XFF382c5a),
                          Color(0XFF514378),
                          Color(0XFF382c5a),


                        ]),borderRadius: BorderRadius.circular(10.0)),
                    height: MediaQuery.of(context).size.height*0.25,
                    width:MediaQuery.of(context).size.width*0.95,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Water",style: TextStyle(fontSize: 30.0,color: Colors.white)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*0.20,
                              width: 150,
                              child: Stack(
                                  children: [
                                    Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                                      Text("320",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0,color: Colors.white)),
                                      Text("ml",style: TextStyle(color: Colors.white),)],),),
                                    TweenAnimationBuilder(
                                        tween: Tween(begin: 0.0 , end: 0.4),
                                        duration: Duration(seconds: 4),
                                        builder: (context , value , _)=>SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: CircularProgressIndicator(
                                            value: value,
                                            backgroundColor: Color(0xFFADD8E6),
                                            color: Colors.blueAccent,
                                            strokeWidth: 12,
                                          ),
                                        )),

                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> Steps()));
                    },
                    child: Container(
                      decoration: BoxDecoration(gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [

                            Color(0XFF382c5a),
                            Color(0XFF514378),
                            Color(0XFF382c5a),


                          ]),borderRadius: BorderRadius.circular(10.0)),
                      height: MediaQuery.of(context).size.height*0.25,
                      width:MediaQuery.of(context).size.width*0.95,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Steps",style: TextStyle(fontSize: 30.0,color: Colors.white)),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height*0.20,
                                width: 150,
                                child: Stack(
                                    children: [
                                      Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                                        Text("320",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0,color: Colors.white)),
                                        Text("Steps",style: TextStyle(color: Colors.white))],),),
                                      TweenAnimationBuilder(
                                          tween: Tween(begin: 0.0 , end: 0.4),
                                          duration: Duration(seconds: 4),
                                          builder: (context , value , _)=>SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: CircularProgressIndicator(
                                              value: value,
                                              backgroundColor: Color(0xFFD3D3D3),
                                              color: Colors.blueGrey,
                                              strokeWidth: 12,
                                            ),
                                          )),

                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [

                          Color(0XFF382c5a),
                          Color(0XFF514378),
                          Color(0XFF382c5a),


                        ]),borderRadius: BorderRadius.circular(10.0)),
                    height: MediaQuery.of(context).size.height*0.25,
                    width:MediaQuery.of(context).size.width*0.95,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Sleep",style: TextStyle(fontSize: 30.0,color: Colors.white)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*0.20,
                              width: 150,
                              child: Stack(
                                  children: [
                                    Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                                      Text("8",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0,color: Colors.white)),
                                      Text("Hours",style: TextStyle(color: Colors.white))],),),
                                    TweenAnimationBuilder(
                                        tween: Tween(begin: 0.0 , end: 0.4),
                                        duration: Duration(seconds: 4),
                                        builder: (context , value , _)=>SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: CircularProgressIndicator(
                                            value: value,
                                            backgroundColor: Color(0xFFF2D2BD),
                                            color: Color(0xFFC19A6B),
                                            strokeWidth: 12,
                                          ),
                                        )),

                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                      ],
                    ),
                  ),
                )
              ])),
    );

  }
}
