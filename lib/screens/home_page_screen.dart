import 'package:flutter/material.dart';
import '../screens/training_details_screen.dart';
import '../models/app_color.dart' as color;
import '../models/training_data.dart';

class HomePageScreen extends StatefulWidget {
  static const routeName = '/home-page';
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  /*
  List info = [];

    _initData() {
      DefaultAssetBundle.of(context).loadString('json/info.json').then((value){
        info = json.decode(value);
      });
    }
  @override
  void initState() {
    super.initState();
    _initData();
  }
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Training', style: TextStyle(fontSize: 30, color: color.AppColor.homePageTitle, fontWeight: FontWeight.w700),),
                //Expanded(child: Container()), OR Spacer()
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios, size: 20, color: color.AppColor.homePageIcons,),),
                IconButton(onPressed: () {}, icon: Icon(Icons.calendar_today_outlined, size: 20, color: color.AppColor.homePageIcons,),),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios, size: 20, color: color.AppColor.homePageIcons,),),
              ],
            ),
            Row(
              children: [
                Text('Your program', style: TextStyle(fontSize: 20, color: color.AppColor.homePageSubtitle, fontWeight: FontWeight.w700),),
                Spacer(),
                TextButton(onPressed: () {
                  Navigator.of(context).pushNamed(TrainingDetailsScreen.routeName);
                }, child: Row(
                  children: [
                    Text('Details', style: TextStyle(fontSize: 20, color: color.AppColor.homePageDetail, fontWeight: FontWeight.w700),),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_forward, size: 20, color: color.AppColor.homePageIcons,),
                  ],
                )),
              ],
            ),
            SizedBox(height: 7),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [color.AppColor.gradientFirst.withOpacity(0.8), color.AppColor.gradientSecond.withOpacity(0.9)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(75),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 10),
                    blurRadius: 10,
                    color: color.AppColor.gradientSecond.withOpacity(0.2),),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Next workout', style: TextStyle(fontSize: 16, color: color.AppColor.homePageContainerTextSmall),),
                    SizedBox(height: 5,),
                    Text('Legs Toning \nand Glutes workout', style: TextStyle(fontSize: 25, color: color.AppColor.homePageContainerTextSmall),),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.timer, size: 20, color: color.AppColor.homePageContainerTextSmall,),
                            SizedBox(width: 10,),
                            Text('60 min', style: TextStyle(fontSize: 16, color: color.AppColor.homePageContainerTextSmall,),),
                          ],
                        ),
                        Spacer(),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(4, 7),
                                  color: color.AppColor.gradientFirst.withOpacity(0.6),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Icon(Icons.play_circle_fill, color: Colors.white, size: 60,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          'images/card1.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                        offset: Offset(8,10),
                        color: color.AppColor.gradientSecond.withOpacity(0.3),
                        ),
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(-1,-5),
                          color: color.AppColor.gradientSecond.withOpacity(0.3),
                        ),
                      ]
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(right: 200, bottom: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            'images/running.jpg',
                          ),
                          fit: BoxFit.fill,
                        ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: EdgeInsets.only(left: 150, top: 50),
                    child: Column(
                      children: [
                        Text(
                          'You are doing amazing',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(height: 10,),
                        RichText(
                          text: TextSpan(
                            text: 'Keep it up\n',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                            children: [
                              TextSpan(
                                text: 'Stick to your plan',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                            ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Area of Exercises',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      color: color.AppColor.homePageTitle,
                  ),
                ),
              ],
            ),
            Expanded(
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView.builder(
                    //itemCount: (info.length.toDouble()/2).toInt(),
                    itemCount: 4,
                      itemBuilder: (ctx, index) {
                      int a = 2*index;
                      int b = 2*index + 1;
                      return Row(
                          children: [
                            Container(
                              height: 170,
                              width: (MediaQuery.of(context).size.width - 90) / 2,
                              margin: EdgeInsets.only(left: 30, bottom: 15, top: 15),
                              padding: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      //info[a]['img']
                                      'images/ex1.jpg',
                                    ),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(5,5),
                                      color: color.AppColor.gradientSecond.withOpacity(0.1),
                                    ),
                                    BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(-5,-5),
                                      color: color.AppColor.gradientSecond.withOpacity(0.1),
                                    ),
                                  ]
                              ),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    // info[a]['text']
                                    'Glues',
                                    style: TextStyle(
                                        fontSize: 20, color:
                                    color.AppColor.homePageDetail
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 170,
                              width: (MediaQuery.of(context).size.width - 90) / 2,
                              margin: EdgeInsets.only(left: 30, bottom: 15, top: 15),
                              padding: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      //info[b]['img']
                                      'images/ex1.jpg',
                                    ),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(5,5),
                                      color: color.AppColor.gradientSecond.withOpacity(0.1),
                                    ),
                                    BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(-5,-5),
                                      color: color.AppColor.gradientSecond.withOpacity(0.1),
                                    ),
                                  ]
                              ),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    // info[b]['text']
                                    'Glues',
                                    style: TextStyle(
                                        fontSize: 20, color:
                                    color.AppColor.homePageDetail
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }
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
