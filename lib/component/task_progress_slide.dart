import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_interview/component/task_progess_widget.dart';
import 'package:ui_design_interview/view/task_page.dart';

class SlideTaskProgess extends StatelessWidget {
  const SlideTaskProgess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BannerCarousel(
        height: 250,
       margin: const EdgeInsets.only(right: 8,top: 10) ,
       viewportFraction: 0.9,
       borderRadius: 20,
       customizedBanners: [
         InkWell(
           onTap: (){
             Navigator.of(context).push(
               MaterialPageRoute(builder: (context) => const Taskpage())
             );
           },
           child: Container(
             margin: const EdgeInsets.only(right: 9),
               child: const TaskProgessWidget(color: Color.fromRGBO(255,204,209,1),)),
         ),
         Container(
             margin: const EdgeInsets.only(right: 9),
             child: const TaskProgessWidget(color: Color.fromRGBO(191,172,223,1))),
         Container(
             margin: const EdgeInsets.only(right: 9),
             child: const TaskProgessWidget(color: Color.fromRGBO(255,204,209,1),)),
       ],
    );
  }
}
