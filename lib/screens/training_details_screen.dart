import 'package:flutter/material.dart';
import 'package:workout_app/screens/home_page_screen.dart';
import '../models/app_color.dart' as color;

class TrainingDetailsScreen extends StatefulWidget {
  static const routeName = '/training-details';
  @override
  _TrainingDetailsScreenState createState() => _TrainingDetailsScreenState();
}

class _TrainingDetailsScreenState extends State<TrainingDetailsScreen> {
  /*
  List info = [];

    _initData() {
      DefaultAssetBundle.of(context).loadString('json/videoinfo.json').then((value){
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.AppColor.gradientFirst.withOpacity(0.8),
            color.AppColor.gradientSecond,
          ],
            begin: FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              padding: EdgeInsets.only(top: 25, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.of(context).pushNamed(HomePageScreen.routeName);
                      }, icon: Icon(Icons.arrow_back_ios, size: 20, color: color.AppColor.secondPageIconColor,),),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.info_outline, size: 20, color: color.AppColor.secondPageIconColor,),),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text('Next workout', style: TextStyle(fontSize: 25, color: color.AppColor.secondPageTitleColor),),
                  SizedBox(height: 5,),
                  Text('Legs Toning \nand Glutes workout', style: TextStyle(fontSize: 25, color: color.AppColor.secondPageTitleColor),),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [Colors.white.withOpacity(0.3), Colors.white.withOpacity(0.5)], begin: Alignment.bottomLeft, end: Alignment.topRight),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.timer, color: color.AppColor.secondPageIconColor,),
                            Text('60 min', style: TextStyle(color: color.AppColor.secondPageIconColor, fontSize: 18),),
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [Colors.white.withOpacity(0.3), Colors.white.withOpacity(0.5)], begin: Alignment.bottomLeft, end: Alignment.topRight),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.handyman_outlined, color: Colors.white,),
                            Text('Resistent band, Kettlebell', style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(70),),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text('Steps: ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color.AppColor.circuitsColor),),
                        Spacer(),
                        Row(
                          children: [
                            Icon(Icons.loop, size: 20, color: color.AppColor.loopColor,),
                            Text('3 steps', style: TextStyle(fontSize: 15, color: color.AppColor.setsColor),),
                            SizedBox(width: 30,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}