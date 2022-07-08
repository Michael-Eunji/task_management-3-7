import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management/app/routes/app_pages.dart';
import 'package:task_management/app/utils/widget/ProfileW.dart';
import 'package:task_management/app/utils/widget/header.dart';
import 'package:task_management/app/utils/widget/myTask.dart';
import 'package:task_management/app/utils/widget/sideBar.dart';
import 'package:task_management/app/utils/widget/stye/AppColors.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
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
      
   Row(
     
      children: [
        
      GestureDetector(
    onTap: (){
      Get.defaultDialog(title: 'Sign Out',
      content: Text('Are you sure want to sign out?'),
      cancel: ElevatedButton(onPressed: ()=> Get.back(), child: Text('Cancel'),),
      confirm: ElevatedButton(onPressed: ()=>Get.toNamed(Routes.LOGIN), child: Text('Sign Out'),),
      );
    },
    child: Row(
      children: [
        const Text('Sign Out', style: TextStyle(color: Colors.grey,fontSize: 18),),
        const SizedBox(width: 5,),
       const Icon(Icons.logout_outlined,color: Colors.grey,size: 30,),
      ],
    ),
      ),
              ],
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              ProfileW(),
               Text('My Task', style: TextStyle(color: AppColors.primaryText, fontSize: 30,
                                     ),
                                     ),
                                          SizedBox(),
              SizedBox(height: 200,child: myTask() ,),
            ],),
          ),
          ),
          
          ]),
        ),
      ],
      ),
    );
  }
}

