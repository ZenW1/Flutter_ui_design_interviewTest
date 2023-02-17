
import 'package:flutter/material.dart';
import 'package:ui_design_interview/component/task_bar_widget.dart';
import 'package:ui_design_interview/component/task_progess_widget.dart';

class Taskpage extends StatelessWidget {
  const Taskpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
            elevation: 0,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back,color: Colors.black,),
          ),
          title: const Text('Tasks',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w600
          ),
          ),
          toolbarHeight: 80,
          bottom: TabBar(
            unselectedLabelColor: const Color.fromRGBO(188,189,193,1),
            labelColor: Colors.black,
            isScrollable: true,
            indicatorColor: const Color.fromRGBO(117,117,119,1) ,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2,
              indicatorPadding: const EdgeInsets.only(top: 20),

              tabs: [
                _tabbarItem(text: 'Backlog',num: '3'),
                _tabbarItem(text: 'In Progress',num: '3'),
                _tabbarItem(text: 'Reviewing',num: '3')
          ],
          ),
        ),
        body: TabBarView(
            children: [
               _backlogListBuilder(),
               _progressListBuilder(),
               _Reviewing()
        ]),
        backgroundColor: const Color.fromRGBO(247,247,247,1),
      ),
    );
  }

  Widget _tabbarItem({required String text,required String num}){
    return  Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('$text',
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(width: 5,),
          Container(
            alignment: Alignment.center,
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(161,166,170,1)
            ) ,
            child: Text('$num',
              style: const TextStyle(

                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _progressListBuilder(){
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context,index){
        return  Container(
            margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 17),
            child: const TaskProgessWidget(color: Colors.white));
    }
    );
  }

  Widget _backlogListBuilder(){
      return ListView.builder(
          itemCount: 3,
          itemBuilder: (context,index){
            return  Container(
                margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
                child: const TaskBarWidget(color: Colors.white));
          }
      );
  }
  Widget  _Reviewing(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
            height: 150,
            child: Image.asset('assets/imgs/reveiwing.png')),
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: const Text('No Task Yet',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),
          ),
        ),
        const SizedBox(height: 150,)
      ],
    );
  }
}
