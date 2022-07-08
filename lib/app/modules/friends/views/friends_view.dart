import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management/app/routes/app_pages.dart';
import 'package:task_management/app/utils/widget/header.dart';
import 'package:task_management/app/utils/widget/myfriends.dart';
import 'package:task_management/app/utils/widget/sideBar.dart';
import 'package:task_management/app/utils/widget/stye/AppColors.dart';

import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {
   final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
     
      body: Row(
        children: [
       !context.isPhone?  Expanded(
          flex: 2,
          child:   const SideBar(),
        ): const SizedBox(),
        Expanded(
          flex: 15,
          child: Column(
            children: [
              !context.isPhone? const header(): Container(
                //content //isipage //screen
                padding: EdgeInsets.all(20),
              child: Row(children: [IconButton(onPressed: (){
                _drawerKey.currentState!.openDrawer();
              }, icon: Icon(Icons.menu,color: AppColors.primaryText),
                 ),
                 Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [Text('Task Management',style:TextStyle(fontSize: 20, color: AppColors.primaryText),
    ),
    Text('Manage task made easy with friends',style: TextStyle(fontSize: 15, color: AppColors.primaryText),
    ),
    ],
    ),
    Spacer(),
       const Icon(Icons.notifications,color: Colors.grey,size: 30,
       ),
       SizedBox(width: 5,),
       ClipRRect(borderRadius: BorderRadius.circular(30),
       child: CircleAvatar(backgroundColor: Colors.amber, radius: 25,
       foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg',
       ),
       ),
       ),
              ],
              ),
              ),
          Expanded(child: Container(
           padding: !context.isPhone? EdgeInsets.all(50): EdgeInsets.all(0),
              margin: !context.isPhone? EdgeInsets.all(10): EdgeInsets.all(0),
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: !context.isPhone? BorderRadius.circular(50): BorderRadius.circular(20)
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('People You May Know', style: TextStyle(fontSize: 30, color: AppColors.primaryText
            ),
            ),
             SizedBox(
               height: 200,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 shrinkWrap: true,
                 clipBehavior: Clip.antiAlias,
                 itemCount: 10,
                 itemBuilder: (context, index){
                   return Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Stack(children: [

                        ClipRRect(borderRadius: BorderRadius.circular(50),
                         child: CircleAvatar(backgroundColor: Colors.amber, radius: 100,
                         foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg',
                         ),
                         ),
                         ),
                         Positioned(
                           bottom: 10,
                           left: 55,
                           child: Text('Alicia Jasmin', style: TextStyle(color: Colors.white),
                         ),
                         ),
                         Positioned(
                           bottom: 0,
                           right: 0,
                           child: SizedBox(
                             height: 36,
                             width: 36,
                             child: ElevatedButton(onPressed: (){},
                             style: ElevatedButton.styleFrom(
                               padding: EdgeInsets.zero,
                               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                             ),
                              child: Icon(Icons.add),
                         ),
                           ),
                         ),
                     ],
                     ),
                   );
                 },
               
               ),
             ),
            
            MyFriends()
            ],
            ),
          ),
          ),
          
          ]),
        ),
      ],
      ),
    );
  }
}



