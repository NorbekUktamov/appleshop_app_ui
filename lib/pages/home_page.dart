import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listitem=[
    'assets/images/ic_image1.jpg',
    'assets/images/ic_image2.jpg',
    'assets/images/ic_image4.jpg',
    'assets/images/ic_image5.jpg',
    'assets/images/ic_image6.jpg',
    'assets/images/ic_image7.jpg',
    'assets/images/ic_image8.jpg',
    'assets/images/ic_image9.jpg',
    'assets/images/ic_image10.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apple Products"),
        centerTitle: true,
        backgroundColor: Colors.orange.shade800,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child:Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.yellow.shade700,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text("7"),
              ),
            ) ,
          )
        ],
      ),
      backgroundColor: Colors.orange.shade800,
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            //#header
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_image1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.01),
                    ],
                  )
                ) ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Lifestyle sale",style: TextStyle(color: Colors.white,fontSize: 35),),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text("Shop now",style: TextStyle(color: Colors.green.shade900),),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            //#body
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children:_listitem.map((item) => cellOfList(item)).toList(),
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.favorite,color:Colors.pink ,size: 40,)
          ],
        ),
      ),

    );
  }
}
