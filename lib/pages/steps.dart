import 'package:flutter/material.dart';

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);

  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    TabController tabController2 = TabController(length: 7, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.white, child: Row(
          children: [
            SizedBox(width:110),
            Text("Steps"),
          ],
        )),
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new_rounded)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFF282f45),
                    Color(0xFF040c25)
                  ]
              )
          ),
        ),
      ),


      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF485c64),
                  Color(0xFF444c54),
                  Color(0xFF343c3c),
                  Color(0xFF18242c),
                ])
        ),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            Card(
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
              elevation: 0,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) , color: Colors.black),
                width: MediaQuery.of(context).size.width*0.9,
                height: 50.0,
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  controller: tabController,
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 43.0),
                  tabs: [
                    Text("Day" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold)),
                    Text("Week" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    Text("Month" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            Expanded(
                child: TabBarView(
                    controller: tabController,
                    children: [
                      Container(
                          child: Column(
                              children: [
                                SizedBox(height: 25.0),
                                TabBar(
                                  indicator: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.orange
                                  ),
                                  controller: tabController2,
                                  isScrollable: true,
                                  labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                                  tabs: [
                                    Text("Sun" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold,fontSize: 20.0)),
                                    Text("Mon" , style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20.0)),
                                    Text("Tue" , style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20.0)),
                                    Text("Wed" , style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20.0)),
                                    Text("Thu" , style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20.0)),
                                    Text("Fri" , style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20.0)),
                                    Text("Sat" , style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20.0))
                                  ],),
                                Expanded(
                                    child: TabBarView(
                                        controller: tabController2,
                                        children:[
                                          Container(
                                            child: Column(
                                              mainAxisAlignment:MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    height: 250,
                                                    width: 250,
                                                    decoration: BoxDecoration(
                                                        color:Color(0xFF282f45) ,
                                                        borderRadius: BorderRadius.circular(125),
                                                        border: Border.all(color: Colors.black,width: 5)),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text("320",style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold,fontSize: 60.0)),
                                                        Text("Steps",style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold,fontSize: 20.0))
                                                      ],
                                                    )
                                                ),
                                                SizedBox(height: 60.0),
                                                Container(
                                                  height: MediaQuery.of(context).size.height*0.13,
                                                  width: MediaQuery.of(context).size.width*0.9,
                                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),border: Border.all(color: Colors.black , width: 5)),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        Column(
                                                            children: [Icon(Icons.timer,size: 50.0,color: Colors.white),Text("40 min",style: TextStyle(fontSize: 20.0,color: Colors.white))]),
                                                        Column(
                                                            children: [Icon(Icons.local_fire_department_outlined,size: 50.0,color: Colors.white),Text("150 Kcal",style: TextStyle(fontSize: 20.0,color: Colors.white))]),
                                                        Column(
                                                            children: [Icon(Icons.run_circle_outlined,size: 50.0,color: Colors.white),Text("5.0 Km",style: TextStyle(fontSize: 20.0,color: Colors.white))]),
                                                      ],
                                                    ),
                                                  ),

                                                )
                                              ],
                                            ),
                                          ),
                                          Text(""),
                                          Text(""),
                                          Text(""),
                                          Text(""),
                                          Text(""),
                                          Text(""),


                                        ]))
                              ])
                      ),
                      Text(""),
                      Text("")
                    ]))

          ],
        ),
      ),

    );
  }
}
