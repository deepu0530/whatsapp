import 'package:flutter/material.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          //toolbarHeight: 100,
          backgroundColor: Colors.teal,
          centerTitle: false,
            title: Text("WhatsApp",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),
          actions: [
            IconButton(icon: Icon(Icons.search,color: Colors.white,size: 25,),
                onPressed: (){}),
        IconButton(icon:  Icon(Icons.more_vert,color: Colors.white,size: 25,),
            onPressed: (){}),
          ],
          elevation: 0,
          ),
        body: SingleChildScrollView(
          child:Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.teal,
              ),
            //   //padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
            //   child: Column(
            //     children: [
            //       Row(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text("WhatsApp",style: TextStyle(color: Colors.white,fontSize: 25.0),),
            //           Row(
            //             children: [
            //               Icon(Icons.search,color: Colors.white,size: 25,),
            //               SizedBox(width: 15,),
            //               Icon(Icons.chat,color: Colors.white,size: 25,),
            //               SizedBox(width: 15,),
            //               Icon(Icons.more_vert,color: Colors.white,size: 25,),
            //             ],
            //           )
            //         ],
            //       ),
            //       SizedBox(height: 35,),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.camera_alt_rounded,color: Colors.grey[400],),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("CHATS",style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),),
                              SizedBox(width: 5,),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    "50",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text("STATUS",style: TextStyle(color: Colors.grey[400],fontSize: 16.0,fontWeight: FontWeight.bold),),
                          Text("CALLS",style: TextStyle(color: Colors.grey[400],fontSize: 16.0,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
            ),
            //     ],
            //   ),
            //   ),
                  Chat(
                    image:"assets/images/allu2.jfif",name: "Deepak",innername: "Hi.......  ",time: "9:30 pm ",bgColor:  Colors.green,number: "1",
                  ),
            Chat(image:"assets/images/nature2.jfif",name: "Raju",innername: " How are you",time: "8:45 pm ",bgColor:  Colors.green,number: "5",
            ),
            Chat(image:"assets/images/reji.jfif",name: "Rocking family",innername: "Avinash:Happy birthday to you",time: "Yesterday ",bgColor:  Colors.green,number: "30",
            ),
            Chat(image:"assets/images/baby1.jfif",name: "Harshita",innername: "What are you doing?",time: "23/11/2020 ",bgColor:  Colors.green,number: "2",
    ),
            Chat(image:"assets/images/nani.jfif",name: "Karthik",innername: "Hmmmm",time: "20/11/2020 ",bgColor:  Colors.green,number: "1",
            ),
            Chat(image:"assets/images/cutie.jfif",name: "Rachana",innername: "I am Fine",time: "01/11/2020 ",bgColor:  Colors.green,number: "2",
            ),
            Chat(image:"assets/images/akhil.jfif",name: "Priya",innername: "Bye",time: "30/11/2020 ",bgColor:  Colors.green,number: "1",
            ),
            Chat(image:"assets/images/kajal.jfif",name: "Harsha",innername: "eat",time: "12/11/2020 ",bgColor:  Colors.green,number: "1",
            ),
            Chat(
              image:"assets/images/nature1.jfif",name: "Nani",innername: "Hi monkey  ",time: "2/10/2020 ",bgColor:  Colors.green,number: "1",
            ),
            Chat(
              image:"assets/images/allu2.jfif",name: "Deepak",innername: "Hi.......  ",time: "2/10/2020 ",bgColor:  Colors.green,number: "1",
            ),
            Chat(image:"assets/images/nature2.jfif",name: "Raju",innername: " How are you",time: "30/09/2020 ",bgColor:  Colors.green,number: "5",
            ),
            Chat(image:"assets/images/reji.jfif",name: "Rocking family",innername: "Avinash:Happy birthday to you",time: "12/09/2020 ",bgColor:  Colors.green,number: "30",
            ),
      ],
    ),
    ),
        floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            backgroundColor: Colors.green,
            child: Icon(Icons.message),
            onPressed: (){
              // action on button press
            }
        ),
      ),
    );
  }
}



class Chat extends StatelessWidget {
  const Chat({
    this.name,this.bgColor,this.time,this.number,this.image,this.innername,
    Key key,
  }) : super(key: key);
  //final String image;
  final String name;
  final String image;
  final String innername;
  final Color bgColor;
  final String time;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 24,
        ),
        title: Text(name,
        style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,),),
        subtitle: Text(innername,
        style: TextStyle(color: Colors.black,fontSize: 14
        ),
    ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Text(
              time,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 5,),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: bgColor,
              ),
              child: Center(
                child: Text(
                  number,
                  style: TextStyle(
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





