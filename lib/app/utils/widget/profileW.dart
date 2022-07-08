import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/app/utils/widget/stye/AppColors.dart';
import 'package:get/get.dart';
class ProfileW extends StatelessWidget {
  const ProfileW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: 
    !context.isPhone? Row(
      children:[
    Expanded(
      child: ClipRRect(
           child: CircleAvatar(backgroundColor: Colors.amber, radius: 150,
           foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg',
           ),
           ),
      ),
    ),
    // SizedBox(width: 20,),
    Expanded
    (flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
      Text('Alicia Jasmin', style: TextStyle(color: AppColors.primaryText, fontSize: 30,
                             ),
                             ),
                             Text('alicia@gmail.com', style: TextStyle(color: AppColors.primaryText, fontSize: 15,
                             ),
                             ),
                             
      ],
      ),
    ), 
             ],
       ):Column(
      children:[
    ClipRRect(
         child: CircleAvatar(backgroundColor: Colors.amber, radius: 100,
         foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg',
         ),
         ),
    ),
    SizedBox(height: 20,),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
      Text('Alicia Jasmin', style: TextStyle(color: AppColors.primaryText, fontSize: 30,
                             ),
                             ),
                             Text('alicia@gmail.com', style: TextStyle(color: AppColors.primaryText, fontSize: 15,
                             ),
                             ),
                             
      ],
      ),
    ), 
             ],
       ),
        
       
    );
  }
}

