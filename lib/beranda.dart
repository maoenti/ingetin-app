import 'package:flutter/material.dart';
import 'package:ingetin/add-task.dart';
import 'package:ingetin/detail-goals.dart';
import 'package:ingetin/edit-task.dart';
import 'package:ingetin/profile.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Color(0xFF97DBAE),
        secondaryHeaderColor: Color(0xFF333333),
        scaffoldBackgroundColor: Color(0xFFF8F7F7),
        //Color priority1Color: const Color(0xFFF4BBBB),

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 24.0, fontFamily: 'Poppins', fontWeight: FontWeight.w700, color: Color(0xFF97DBAE)),
          headline2: TextStyle(fontSize: 24.0, fontFamily: 'Poppins', fontWeight: FontWeight.w700, color: Colors.black),
          headline3: TextStyle(fontSize: 16.0, fontFamily: 'Poppins', fontWeight: FontWeight.w600, color: Colors.black),
          headline4: TextStyle(fontSize: 14.0, fontFamily: 'Poppins', fontWeight: FontWeight.w600, color: Colors.black),
          headline5: TextStyle(fontSize: 14.0, fontFamily: 'Poppins', fontWeight: FontWeight.w600, color: Colors.black),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
          bodyText1: TextStyle(fontSize: 12.0, fontFamily: 'Poppins', color: Color(0xFFA3423C)),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class CustomColor {
  static const Color light_grey = Color(0xFFCCCCCC);
}

class CustomTextStyle {
  static const TextStyle captionText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    color: Color(0xFFA79B9B),
  );

  static const TextStyle whiteCaptionText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    color: Colors.white,
  );

  static const TextStyle blackCaptionText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    color: Colors.black,
  );

  static const TextStyle whiteText = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.w800
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late AnimationController controller;

  List<int> jumlah_container = [1,2,3,4];
  bool isChecked = false;
  double percent = 0.0;

  void _addTask() {
    setState(() {
      Navigator.push(context,MaterialPageRoute(builder: (context) => AddTaskPage()));
    });
  }

  void _editTask() {
    setState(() {
      Navigator.push(context,MaterialPageRoute(builder: (context) => EditTaskPage()));
    });
  }

  void _deleteTask() {
    setState(() {
      Navigator.push(context,MaterialPageRoute(builder: (context) => EditTaskPage())); // ganti jadi delete task
    });
  }

  void _detailGoals() {
    setState(() {
      Navigator.push(context,MaterialPageRoute(builder: (context) => DetailGoalsPage())); // ganti jadi delete task
    });
  }

  void _goToProfile() {
    setState(() {
      Navigator.push(context,MaterialPageRoute(builder: (context) => ProfilePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Judul
            Container(
              padding: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                children:[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Row(
                          children: [
                            Text(
                              '!nget',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Text(
                              'in',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        )
                      ]
                  ),
                  Expanded(child: SizedBox()),
                  IconButton(
                    onPressed: _goToProfile,
                    // icon: CircleAvatar(
                    //   radius: 50.0,
                    //   backgroundImage: AssetImage('assets/images/user.png'),
                    // ),
                    icon: Image.asset('assets/images/user.png')
                  )
                ],
              ),
            ),

            // Judul 'My Goals'
            Container(
              padding: EdgeInsets.only(top:10, left: 20),
              child: Row(
                children:[
                  Text(
                    'My Goals',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            ),

            // Goals
            Container(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              height: 120,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(0),
                children: [
                  ElevatedButton(
                      child: Text(
                        ("Add\nGoals").toUpperCase(),
                        style: CustomTextStyle.whiteText,
                        textAlign: TextAlign.center,
                      ),
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(CustomColor.light_grey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              )
                          )
                      ),
                      onPressed: () => null
                  ),
                  for (var i in jumlah_container)
                    GestureDetector(
                      onTap: _detailGoals,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: Column(

                            children:[
                              Row(
                                children: [
                                  Flexible(
                                    child:Text(
                                      ('Suatu Goals ' + i.toString()),
                                      style: Theme.of(context).textTheme.headline4,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      '7/10 Task',
                                      style: CustomTextStyle.blackCaptionText,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                              Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(100)),
                                    child: LinearProgressIndicator(
                                      minHeight: 8,
                                      color: Color(0xFF595959), //<-- SEE HERE
                                      backgroundColor: Color(0xFFD9D9D9), //<-- SEE HERE
                                      value: 0.7,
                                    ),
                                  )
                              )
                            ]
                        ),
                      ),
                    )

                ],
              ),
            ),


            // Judul 'My Task'
            Container(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Row(
                children:[
                  Text(
                    'My Task',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            ),

            // Task
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 10,left: 20, right: 20),
                child: ListView(
                    padding: EdgeInsets.only(top:10),
                    scrollDirection: Axis.vertical,
                    children: [
                      for (var i in jumlah_container)
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 25),
                          padding: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0,-10),
                                    blurRadius: 0,
                                    color: Color(0xFFA3423C)
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Column(
                              children: [
                                for (var i in jumlah_container)
                                  Container(
                                      padding: EdgeInsets.only(bottom: 7, top: 7),
                                      child: Row(
                                          children: [
                                            Checkbox(
                                                activeColor: Theme.of(context).primaryColor,
                                                checkColor: Colors.black,
                                                value: isChecked,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                }
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        ('Task ' + i.toString()),
                                                        textAlign: TextAlign.start,
                                                        style: Theme.of(context).textTheme.headline5,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        ('Rincian Task ' + i.toString()),
                                                        textAlign: TextAlign.start,
                                                        style: Theme.of(context).textTheme.bodyText1,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        ('22:0' + i.toString()),
                                                        textAlign: TextAlign.start,
                                                        style: CustomTextStyle.captionText,
                                                      ),
                                                      Text(
                                                        (' 4 November'),
                                                        textAlign: TextAlign.start,
                                                        style: CustomTextStyle.captionText,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: _editTask,
                                              icon: Image.asset('assets/images/edit.png')
                                            ),
                                            IconButton(
                                              onPressed: _deleteTask,
                                              icon: Image.asset('assets/images/trash.png')
                                            )
                                          ]
                                      )
                                  ),
                              ]
                          ),
                        ),
                    ]
                ),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        tooltip: 'Add Task',
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
