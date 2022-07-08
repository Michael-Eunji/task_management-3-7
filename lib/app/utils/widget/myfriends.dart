import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/app/routes/app_pages.dart';
import 'package:task_management/app/utils/widget/stye/AppColors.dart';

class MyFriends extends StatelessWidget {
  const MyFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:Column 
          (
            children: [
              Row(
                children: [
                    Text('My Friends', style: TextStyle(color: AppColors.primaryText, fontSize: 30,
                    ),
                    ),
                    Spacer(),
                     GestureDetector(
                       onTap: ()=> Get.toNamed(Routes.FRIENDS),
                       child: Text('more', style: TextStyle(color: AppColors.primaryText, fontSize: 15,
                                         ),
                                         ),
                     ),
                    Icon(Icons.forward, color: AppColors.primaryText)
                ],
                    ),
                     SizedBox(height: 20,
                      ),
                      SizedBox(height: 400,child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 8,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:context.isPhone? 2 : 3, crossAxisSpacing: 20, mainAxisSpacing: 20), itemBuilder: (context,index){
                         return Column(children: [
                            ClipRRect(borderRadius: BorderRadius.circular(100),
                 child: CircleAvatar(backgroundColor: Colors.amber, radius: 75,
                 foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg',
                 ),
                 ),
                 ),
                 Text('Alicia Jasmine', style: TextStyle(color: AppColors.primaryText),)
      
                         ],);
                      }),)
            ],
          ),
        ),
      ),
    );
  }
}

