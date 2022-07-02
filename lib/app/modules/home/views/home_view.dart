
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management/app/routes/app_pages.dart';
import 'package:task_management/app/utils/widget/header.dart';
import 'package:task_management/app/utils/widget/myfriends.dart';
import 'package:task_management/app/utils/widget/sideBar.dart';
import 'package:task_management/app/utils/widget/stye/AppColors.dart';

import '../../../utils/widget/upcomingtask.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
   final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
     
      body: SafeArea(
        child: Row(
          children: [
         !context.isPhone?  Expanded(
            flex: 2,
            child:   const SideBar(),
          ): const SizedBox(),
          Expanded(
            flex: 15,
            child: Column(
              children: [
                !context.isPhone? const header(): 
                Container(
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
                   children: [
                     SizedBox(
                       height: Get.height * 0.3,
                       child: 
                      
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                          Text('My Task', style: TextStyle(color: AppColors.primaryText, fontSize: 30,
                                     ),
                                     ),
                                          SizedBox(),
              //mystask
              SizedBox(
                height: 180,
                child: ListView(
                  clipBehavior: Clip.antiAlias
                  ,scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Container(width: 400,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: AppColors.cardBg, ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    children:[
                  ClipRRect(borderRadius: BorderRadius.circular(25),
         child: CircleAvatar(backgroundColor: Colors.amber, radius: 20,
         foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg',
         ),
         ),
         ),
         ClipRRect(borderRadius: BorderRadius.circular(25),
         child: CircleAvatar(backgroundColor: Colors.amber, radius: 20,
         foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg',
         ),
         ),
         ),
         Spacer(),
         Container(
           height: 25,
           width: 80,
           color: AppColors.primaryBg,
           child: Center(child: Text('100 %', style: TextStyle(color: AppColors.primaryText,
           ),
           ),
           ),
         ),
         
                    ],
                    ),
                    Spacer(),
                     Container(
           height: 25,
           width: 80,
           color: AppColors.primaryBg,
           child: Center(child: Text('10 / 10 Task', style: TextStyle(color: AppColors.primaryText,
           ),
           ),
           ),
         ),  
         Text('Pemograman Mobile', style: TextStyle(color: AppColors.primaryText,fontSize: 20),
         ),
         Text('Deadline 2 hari lagi', style: TextStyle(color: AppColors.primaryText,fontSize: 15),
         ),
         ]),
                ),
                Container(width: 400,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: AppColors.cardBg, ),
                 margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    children:[
                  ClipRRect(borderRadius: BorderRadius.circular(25),
         child: CircleAvatar(backgroundColor: Colors.amber, radius: 20,
         foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg',
         ),
         ),
         ),
         ClipRRect(borderRadius: BorderRadius.circular(25),
         child: CircleAvatar(backgroundColor: Colors.amber, radius: 20,
         foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg',
         ),
         ),
         ),
         Spacer(),
         Container(
           height: 25,
           width: 80,
           color: AppColors.primaryBg,
           child: Center(child: Text('100 %', style: TextStyle(color: AppColors.primaryText,
           ),
           ),
           ),
         ),
         
                    ],
                    ),
                    Spacer(),
                     Container(
           height: 25,
           width: 80,
           color: AppColors.primaryBg,
           child: Center(child: Text('10 / 10 Task', style: TextStyle(color: AppColors.primaryText,
           ),
           ),
           ),
         ),  
         Text('Pemograman Mobile', style: TextStyle(color: AppColors.primaryText,fontSize: 20),
         ),
         Text('Deadline 2 hari lagi', style: TextStyle(color: AppColors.primaryText,fontSize: 15),
         ),
         ]),
                ),
                 Container(width: 400,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: AppColors.cardBg, ),
                 margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    children:[
                  ClipRRect(borderRadius: BorderRadius.circular(25),
         child: CircleAvatar(backgroundColor: Colors.amber, radius: 20,
         foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg',
         ),
         ),
         ),
         ClipRRect(borderRadius: BorderRadius.circular(25),
         child: CircleAvatar(backgroundColor: Colors.amber, radius: 20,
         foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg',
         ),
         ),
         ),
         Spacer(),
         Container(
           height: 25,
           width: 80,
           color: AppColors.primaryBg,
           child: Center(child: Text('100 %', style: TextStyle(color: AppColors.primaryText,
           ),
           ),
           ),
         ),
         
                    ],
                    ),
                    Spacer(),
                     Container(
           height: 25,
           width: 80,
           color: AppColors.primaryBg,
           child: Center(child: Text('10 / 10 Task', style: TextStyle(color: AppColors.primaryText,
           ),
           ),
           ),
         ),  
         Text('Pemograman Mobile', style: TextStyle(color: AppColors.primaryText,fontSize: 20),
         ),
         Text('Deadline 2 hari lagi', style: TextStyle(color: AppColors.primaryText,fontSize: 15),
         ),
         ]),
                ),
                 Container(width: 400,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: AppColors.cardBg, ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    children:[
                  ClipRRect(borderRadius: BorderRadius.circular(25),
         child: CircleAvatar(backgroundColor: Colors.amber, radius: 20,
         foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg',
         ),
         ),
         ),
         ClipRRect(borderRadius: BorderRadius.circular(25),
         child: CircleAvatar(backgroundColor: Colors.amber, radius: 20,
         foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg',
         ),
         ),
         ),
         Spacer(),
         Container(
           height: 25,
           width: 80,
           color: AppColors.primaryBg,
           child: Center(child: Text('100 %', style: TextStyle(color: AppColors.primaryText,
           ),
           ),
           ),
         ),
         
                    ],
                    ),
                    Spacer(),
                     Container(
           height: 25,
           width: 80,
           color: AppColors.primaryBg,
           child: Center(child: Text('10 / 10 Task', style: TextStyle(color: AppColors.primaryText,
           ),
           ),
           ),
         ),  
         Text('Pemograman Mobile', style: TextStyle(color: AppColors.primaryText,fontSize: 20),
         ),
         Text('Deadline 2 hari lagi', style: TextStyle(color: AppColors.primaryText,fontSize: 15),
         ),
         ]),
                ),
               
               ],
              
              ),
              ),
            
                         ],
                       ),
                     ),
          !context.isPhone? Expanded(
               child: Row(
                 
                 children: [
                   UpcomingTask(),
                   MyFriends(),
                   
                     
                 ],    
                ),
             ): UpcomingTask(),
              ]),
            ),
            ),
            
            ]),
          ),
        ],
        ),
      ),
    );
  }
}

