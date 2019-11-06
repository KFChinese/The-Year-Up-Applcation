import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_YUApp/UI/SecondScreen.dart';
import'package:flutter_YUApp/UI/login.dart';
import'package:flutter_YUApp/UI/feedbackScreen.dart';
import'package:flutter_YUApp/UI/courses.dart';
import'package:flutter_YUApp/UI/deliverables.dart';
import'package:flutter_YUApp/UI/internshipservices.dart';
import'package:flutter_YUApp/UI/announcements.dart';
import'package:flutter_YUApp/UI/refferral.dart';
import'package:flutter_YUApp/UI/userprofile.dart';
import'package:flutter_YUApp/UI/settings.dart';
//import'package:flutter_YUApp/UI/contacts.dart';


class MainUI extends StatefulWidget {
  @override
  _MainUIState createState() => _MainUIState();
}
Future navigateToSecondScreen(context) async {

}
//MyADP Script 
_launchURL1() async {
  const url = "https://my.adp.com/";
  if (await canLaunch(url)) {
    await launch(url,forceSafariVC: false);
  } else {
    throw 'Could not launch $url';
  }
} 
// Outlook Script
_launchURL2() async {
  const url = "https://login.live.com";
  if (await canLaunch(url)) {
    await launch(url,forceSafariVC: true,universalLinksOnly: true);
  } else {
    throw 'Could not launch $url';
  }
} 
//Zoom Launcher 
_Zoom() async {
  const url = "https://login.live.com";
  if (await canLaunch(url)) {
    await launch(url,forceSafariVC: true,universalLinksOnly: true);
  } else {
    throw 'Could not launch $url';
  }
} 
//Slack
_slack() async {
  const url = "https://slack.onelink.me/FQG3?af_sub1=%2Flp%2Fthree&af_slk_web_endpoint=%2Flp%2Fthree&af_slk_web_visitor_uid=.dg1qqqivxtlk4odiqxdpyln4y&utm_source=google&utm_medium=ppc&utm_campaign=d_ppc_google_us_en_brand-hv&utm_term=%2Bslack&cvosrc=ppc.google.%2Bslack&pid=google_ppc&c=d_ppc_google_us_en_brand-hv&af_keywords=%2Bslack";
  if (await canLaunch(url)) {
    await launch(url,forceSafariVC: true,universalLinksOnly: true);
  } else {
    throw 'Could not launch $url';
  }
} 
//Contract
_contract() async {
  const url = "https://tinyurl.com/y45upa74";
  if (await canLaunch(url)) {
    await launch(url,forceSafariVC: true,universalLinksOnly: true);
  } else {
    throw 'Could not launch $url';
  }
} 
//YUPro
_yupro() async {
  const url = "http://yupro.com/";
  if (await canLaunch(url)) {
    await launch(url,forceSafariVC: true,universalLinksOnly: true);
  } else {
    throw 'Could not launch $url';
  }
} 

_Office365() async {
  const url = "http://TinyURL.com/yyr86ovk";
  if (await canLaunch(url)) {
    await launch(url,forceSafariVC: true,universalLinksOnly: true);
  } else {
    throw 'Could not launch $url';
  }
} 

_linkedin() async {
  const url = "http://linkedin.com";
  if (await canLaunch(url)) {
    await launch(url,forceSafariVC: true,universalLinksOnly: true);
  } else {
    throw 'Could not launch $url';
  }
} 
class _MainUIState extends State<MainUI> {
  
  var scaffoldKey = GlobalKey<ScaffoldState>();

  bool isExpanded = false;
  double _height;
  double _width;
  @override
  void initState() {
    super.initState();
  }

Future<void> getApps() async {
  }



  void expand() {
    setState(() {
      isExpanded ? isExpanded = false : isExpanded = true;
    });
  }



  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;


    return Scaffold(
      
      key: scaffoldKey,

      drawer: _drawer(),
     
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        height: _height,
        width: _width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              
              clipShape(),
              
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 0,), // Delete -> bottom: 40),
               
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    
                    Text('Applets',style: TextStyle(fontWeight: FontWeight.bold,fontSize: (16))), // Bolds and Makes 16px Font
                  ],
                ),
              ),
              Divider(),
              expandList(),// List for Applets ; Will change later -LC

              
            ],
          ),
        ),
      ),
    );
  }


  Widget _drawer() {
    
        return Drawer(
          
           
          child: ListView(
            
                children: <Widget>[
                  
                  
                  
                  //Opacity(
                    //opacity: 0.75,
                    
                    new Container(

                     

                      height: _height / 6,
                      padding: EdgeInsets.only(top: _height / 20),

                    decoration: BoxDecoration(
                        
                        gradient: LinearGradient(
                          colors: [Colors.yellowAccent[200], Colors.blueAccent],
                        ),
                        
                      ),
                      
                      child: ListTile(
                        
                        leading: CircleAvatar(
                         /* child: Icon(
                            Icons.person,
                            size: 40,
                            color: Colors.black,
                          ),
                          radius: 30,*/
                          
                            
                          
                            child: 
                            InkWell(
                              onTap:(){
                                   // _launchURL1();
                                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => userprofile()),
                    );
                                  
                                   //print("This Worked!");
                                   
                                  } ,
                            ),
                              //child: new Image.asset("assets/images/logo.png",height: 250,width: 250,)),
                            backgroundImage: ExactAssetImage('assets/images/profile-s.jpg'),
                            radius: 30,
                            
                          backgroundColor: Colors.white,
                        ),
                        
                        title: Text("Studious Student"),
                        subtitle: Text("340 Points | L&D Student",style: TextStyle(fontSize: 13),),
                      ),
                      
                    ),

                 // ),

          Divider(),
            Center( 
                  child: Text("Learning & Development",style: TextStyle(fontSize: 13)),

                        ),

                           InkWell(
                                  onTap:(){
                                   // _launchURL1();
                                  } ,
                                  child: ListTile(
                      leading: Icon(Icons.school),
                      title: Text("Courses"),
                    ),
                  ),
                  InkWell(
                                  onTap:(){
                                   // _launchURL1();
                                  } ,
                                  child: ListTile(
                      leading: Icon(Icons.move_to_inbox),
                      title: Text("Deliverables"),
                    ),
                  ),

                InkWell(
                                  onTap:(){
                                  //  _launchURL1();
                                  } ,
                                  child: ListTile(
                      leading: Icon(Icons.class_),
                      title: Text("Extra Learning"),
                    ),
                  ),

                  Divider(),  // Divides the Appdrawer and Makes #Beauty
                     
                     Center( 
                  child: Text("Services",style: TextStyle(fontSize: 13)),

                        ),
                  
                  InkWell(
                                  onTap:(){


                                  },
                                  child: ListTile(
                      leading: Icon(Icons.help_outline),
                      title: Text("Internship Services"),
                    ),
                  ),



                  InkWell(
                                  onTap: (){
                                      

                                  },
                                  
                                  child: ListTile(
                      leading: Icon(Icons.announcement),
                      
                      title: Text("Announcements"),
                    ),
                  ),
InkWell(
                                  onTap:(){
                                    
                                  } ,
                                  child: ListTile(
                      leading: Icon(Icons.network_cell),
                      title: Text("Social Media Outreach"),
                    ),
                  ),
                    
                  
                InkWell(
                                  onTap:(){
                                    
                                  } ,
                                  child: ListTile(
                      leading: Icon(Icons.help),
                      title: Text("Extra Services"),
                    ),
                  ),
                
                Divider(),
            Center( 
                  child: Text("Other",style: TextStyle(fontSize: 13)),

                        ),

                        InkWell(
                                  onTap:(){
                                   // _launchURL1();
                                  } ,
                                  child: ListTile(
                      leading: Icon(Icons.attach_money),
                      title: Text("Refer A Friend"),
                    ),
                  ),
                  
                  InkWell(
                                  onTap:(){
                                    //_launchURL1();

                                     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FeedbackScreen()),
                    );
                                  } ,
                                  child: ListTile(
                      leading: Icon(Icons.insert_comment),
                      title: Text("Feedback"),
                    ),
                  ),

                InkWell(
                                  onTap:(){
                                    //_launchURL1();

                                    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Year Up Demo"),
          content: new Text("Created with ❤️ By Larry Chiem. \n LCA We the best in the bay!",
          
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          
        );
      },
    );
                                  } ,
                                  child: ListTile(
                      leading: Icon(Icons.info_outline),
                      title: Text("About"),
                    ),
                  ),
                  InkWell(
                  onTap:(){/*
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => settings()),
                    );*/
                                  } ,
                                  
                                  child: ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                  ),
                  InkWell(
                  onTap:(){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                                  } ,
                                  child: ListTile(
                      leading: Icon(Icons.lock),
                      title: Text("Log Out"),
                    ),
                  ),

            ],
          ),
    );
    
  }


// Main Top Page
  Widget clipShape() {
    return Stack(
      
      children: <Widget>[
          Center(
                      child: new Image.asset(
                  'assets/images/logo.png',
                  height:(_height / 3)+20,
                  fit: BoxFit.scaleDown,
                ),
          ),

            
        Container(

            margin: EdgeInsets.only(left: 20, right: 20, top: _height / 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: WillPopScope(
                      onWillPop: () async {
                        return false;
                      },
                                          child: GestureDetector(
                          onTap: () {
                            scaffoldKey.currentState.openDrawer();
                          },
                          child: Image.asset(
                            'assets/images/menubutton.png',
                            height: _height / 50,
                          )),
                    ),
                  ),
                ),


//Email (Pushes to Outlook.com)
                Opacity(
                  opacity: 0.5,
                  child: GestureDetector(
                    onTap: (){
                      _launchURL2();
                    },
                      child: Icon(Icons.email, color: Colors.black,size: _height/30,)),
                  ),
              ],
            )),


      ],
    );
  }


//Default Home Page List 
  Widget expandList() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: AnimatedCrossFade(
        firstChild: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 4,
          children: <Widget>[
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    //Navigator.of(context).pushNamed(ELECTRONICS_ITEM_LIST);
                    //print('Routing to Electronics item list');
                    _contract();
                  },
                  child: Image.asset(
                    'assets/images/gadget.png',
                    height: _height / 12,
                    width: _width / 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Contract",
                    style: TextStyle( fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      _slack();
                      //Navigator.of(context).pushNamed(PROPERTIES_ITEM_LIST);
                      print('Routing to Slack');
                    },
                    child: Image.asset(
                      'assets/images/house.png',
                      height: _height / 12,
                      width: _width / 12,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Slack",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                        _yupro();
                      
                    },
                    child: Image.asset(
                      'assets/images/job.png',
                      height: _height / 12,
                      width: _width / 12,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "YUPRO",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      _Office365();
                      print('Routing to Furniture item list');
                    },
                    child: Image.asset(
                      'assets/images/sofa.png',
                      height: _height / 12,
                      width: _width / 12,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Office 365",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){

                    print('Routing to Cars item list');
                  },
                  child: Image.asset(
                    'assets/images/car.png',
                    height: _height / 12,
                    width: _width / 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Zoom",
                    style: TextStyle( fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    //Navigator.of(context).pushNamed(BIKES_ITEM_LIST);
                    
                 _linkedin();
                    print('Routing to Bikes item list');
                  },
                  child: Image.asset(
                    'assets/images/bike.png',
                    height: _height / 12,
                    width: _width / 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Linkedin",
                    style: TextStyle( fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                      
                      
                    },
                    child: Image.asset(
                      'assets/images/smartphone.png',
                      height: _height / 12,
                      width: _width / 12,
                    )),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "Contacts",
                    style: TextStyle( fontSize: 13),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    //Navigator.of(context).pushNamed(PETS_ITEM_LIST);
                    //print('Routing to Pets item list');
                    _launchURL1();
                  },
                  child: Image.asset(
                    'assets/images/pet.png',
                    height: _height / 12,
                    width: _width / 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Flexible(
                  child: Text(
                    "MyADP",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
          ],
        ),
        secondChild: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 4,
        ),
        crossFadeState:
        isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: kThemeAnimationDuration,
      ),
    );
  }


  
}



