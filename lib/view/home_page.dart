import 'package:flutter/material.dart';
import 'package:ui_design_interview/component/task_progess_widget.dart';
import 'package:ui_design_interview/component/task_progress_slide.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottom(),

      // floatingActionButtonLocation: FloatingActionButtonLocation.endContained
    );
  }

  AppBar _buildAppBar(){
    return AppBar(
      centerTitle: false,
      toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 80,
        leading: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 30),
          child: const CircleAvatar(
             radius: 30,
            backgroundImage: NetworkImage('https://www.looper.com/img/gallery/demon-slayer-tanjiros-powers-explained/l-intro-1620401706.jpg'),
          ),
        ),
        title: Container(
          height: 60,
          child: Column(
            children: [
              const SizedBox(height: 5,),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Text('My task',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24
                ),
                ),
              ),
              const Text('8 tasks today',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),
              )
            ],
          ),
        ),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications),color: Colors.black,)
        ,
        const SizedBox(width: 20),
      ],
    );
  }
  Widget _buildBody(){
    return SingleChildScrollView(
      child: Container(
          margin: const EdgeInsets.symmetric(),
          child: Container(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  alignment: Alignment.centerLeft,
                  child: const Text('Recent Task',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),
                  ),
                ),
                const SizedBox(height: 10,),
                const SlideTaskProgess(),
                _taskStatus()
              ],
            ),
          ),
      ),
    );
  }


  Widget _taskStatus(){
    return Container(
      margin: const EdgeInsets.only(left: 24,right: 24,top: 15),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    _status(icon: Icons.cancel_presentation_outlined,text: 'Back log'),
                    const SizedBox(height: 20),
                    _status(icon: Icons.people,text: 'Reviewing'),
                  ],
                ),
                const SizedBox(width: 15,),
                Column(
                  children: [
                    Container(
                        child: _status2(icon: Icons.restart_alt, text: 'In Progress')
                    ),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.only(bottom: 40),
                        child: _status(icon: Icons.check_box, text: 'Completed')
                    ),
                  ],
                )
              ],
            )
          ],
        ),
    );
  }

  Widget _status({required IconData icon,required text}){
    return Container(
      width: 180,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      decoration: BoxDecoration(
          border: Border.all(width: 1,color: Colors.black.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white
      ),
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(right: 100),
              alignment: Alignment.center,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.black.withOpacity(0.1)),
                color: const Color.fromRGBO(249,255,253,1),
                shape: BoxShape.circle,
              ),
            child: Icon(icon,size: 30,color: const Color.fromRGBO(25,25,65,1),
          )
          ),
          const SizedBox(height: 30),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('$text',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              const Icon(Icons.watch_later_outlined,color: Colors.grey,),
              const SizedBox(width: 5),
              const Text('February,17,2023')
            ],
          ),
        ],
      ),
    );
  }

  Widget _status2({required IconData icon,required String text}){
   return Container(
     width: 180,
     padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
     decoration: BoxDecoration(
         border: Border.all(width: 1,color: Colors.black.withOpacity(0.2)),
         borderRadius: BorderRadius.circular(15),
         color: Colors.white
     ),
     child: Column(
       children: [
         Container(
           margin: const EdgeInsets.only(right: 100),
           alignment: Alignment.center,
           height: 50,
             width: 50,
             decoration: BoxDecoration(
               border: Border.all(width: 1,color: Colors.black.withOpacity(0.1)),
               color: const Color.fromRGBO(249,255,253,1),
               shape: BoxShape.circle,
             ),
             child: Icon(icon,size: 30,color: const Color.fromRGBO(25,25,65,1),
             )
         ),
         const SizedBox(height: 10),
         Container(
           alignment: Alignment.centerLeft,
           child: Text('$text',
             style: const TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w600,
                 color: Colors.black
             ),
           ),
         ),
         const SizedBox(height: 20),
         Row(
           children: [
             const Icon(Icons.watch_later_outlined,color: Colors.grey,),
             const SizedBox(width: 5),
             const Text('February,17,2023')
           ],
         )
       ],
     ),
   );
  }

  Widget _buildBottom(){
    return BottomAppBar(
      height: 100,
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildBottomItem(icon: const Icon(Icons.home_filled,size: 30),text: 'Home'),
          _buildBottomItem(icon: const Icon(Icons.message_outlined,size: 30,),text: 'Message'),
          Container(
            margin: const EdgeInsets.only(top: 5),
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(6,15,64,1)
            ),
            child: const Icon(Icons.add,color: Colors.white,),
          ),
          _buildBottomItem(icon: const Icon(Icons.bookmark_outline,size: 30,),text: 'Save'),
          _buildBottomItem(icon: const Icon(Icons.person_outline),text: 'Profile'),
        ],
      ),
    );
  }
  Widget _buildBottomItem({required Icon icon,required String text}){
    return Container(
      child: Column(
        children: [
          IconButton(onPressed: (){}, icon: icon),
          const SizedBox(height: 1,),
          Text('$text',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(0,9,49,1),
          ),
          )
        ],
      ),
    );
  }
}
