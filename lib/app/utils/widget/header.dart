import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/app/routes/app_pages.dart';
import 'package:task_management/app/utils/widget/stye/AppColors.dart';

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: Get.height * 0.1, 
          child: Padding(
            padding: const EdgeInsets.only(left: 40,right: 40,top: 25),
            child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [Text('Task Management',style:TextStyle(fontSize: 20, color: AppColors.primaryText),
    ),
    Text('Manage task made easy with friends',style: TextStyle(fontSize: 15, color: AppColors.primaryText),
    ),
    ],
    ),
            const Spacer(flex: 1,),
            Expanded(
    flex: 1,
    child: TextField(decoration: InputDecoration(filled: true, fillColor: Colors.white,
            contentPadding:  const EdgeInsets.only(left: 40,right: 10), enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.blue),
            ),
            prefixIcon: const Icon(Icons.search, color: Colors.black,
            ),
            hintText: 'Search',

            ),
            ),
            ),
            const SizedBox(width: 20,),
            const Icon(Icons.notifications,color: Colors.grey,size: 30,),
             const SizedBox(width: 20,),
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
          ),
          );
  }
}

