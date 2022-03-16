import 'package:flutter/material.dart';
import '../models/app_color.dart' as color;

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Training', style: TextStyle(fontSize: 30, color: color.AppColor.homePageTitle, fontWeight: FontWeight.w700),),
                //Expanded(child: Container()),
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
                TextButton(onPressed: () {}, child: Row(
                  children: [
                    Text('Details', style: TextStyle(fontSize: 20, color: color.AppColor.homePageDetail, fontWeight: FontWeight.w700),),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_forward, size: 20, color: color.AppColor.homePageIcons,),
                  ],
                )),
              ],
            ),
            SizedBox(height: 20),
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
                            child: Icon(Icons.play_circle_fill, color: Colors.white, size: 60,)),
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
