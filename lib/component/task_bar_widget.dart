import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class TaskBarWidget extends StatelessWidget {
  final Color color;
  const TaskBarWidget({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: const Offset(2,5),
              spreadRadius: 0.1,
              color: Colors.black.withOpacity(0.2),
            )
          ],
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child:  Column(
            children: [
              _taskTop(),
              const SizedBox(height: 10,),
              Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('Navigator issues in the \nmillestone',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),
                  )
              ),
              const SizedBox(height: 15,),
              SizedBox(
                  width: double.infinity,
                  child: _taskBottom())
            ],
          ),
        )
    );
  }

  Widget _taskTop(){
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: 80,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(251,214,221,1)
          ),
          child: const Text('High'),
        ),
        const Spacer(),
        IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_outline,color: Colors.black,)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_rounded,color: Colors.black,)),
      ],
    );
  }

  Widget _taskBottom(){
    return Row(
      children: [
        SizedBox(
          width: 130,
          height: 50,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Positioned(
                  child: Container(
                    width: 40,
                    height: 40,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage('https://www.looper.com/img/gallery/demon-slayer-tanjiros-powers-explained/l-intro-1620401706.jpg'),
                    ),
                  )
              ),
              Positioned(
                  left: 30,
                  child: Container(
                    width: 40,
                    height: 40,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage('https://static.wikia.nocookie.net/jujutsu-kaisen/images/5/5a/Satoru_Gojo_arrives_on_the_battlefield_%28Anime%29.png/revision/latest?cb=20210226205256'),
                    ),
                  )
              ),
              Positioned(
                  left: 60,
                  child: Container(
                    width: 40,
                    height: 40,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage('https://static1.srcdn.com/wordpress/wp-content/uploads/2022/03/demon-slayer-zenitsu-sword.jpg'),
                    ),
                  )
              ),
              Positioned(
                  left: 90,
                  child: Container(
                    width: 40,
                    height: 40,
                    child: const CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Text('+2',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.only(left: 5,top: 5),
          child: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.chat),
          ),
        ),
        const SizedBox(width: 0,),
        Container(
            margin: const EdgeInsets.only(),
            child: const Text('2')
        ),
        Container(
          child: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.add_box_outlined),
          ),
        ),
        const Text('5'),
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.watch_later_outlined),
        ),
        const Text('7 days')
      ],
    );
  }
}


