import 'package:flutter/material.dart';
import 'package:netflix_clone/util/color_constraints.dart';

class CustomPosterBuilder extends StatelessWidget {
  const CustomPosterBuilder({
    this.isCircle=false,
    super.key, 
     this.height=177, 
     this.width=103, 
     required this.title, 
     required this.imageList, 
      this.isvisible=false,
     

  });
  final bool isCircle;
  final double height;
  final double width;
  final String title;
     final List imageList;
     final bool isvisible;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(title,style: TextStyle(
              fontSize: 26.75,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
          ),
          SizedBox(height: 24,),
          SizedBox(
            height: isCircle? width:height,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 12),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
               itemCount: imageList.length,
              itemBuilder: (context,index)=>          Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(imageList[index])),
                    shape: isCircle ? BoxShape.circle:BoxShape.rectangle,
                  
                    ),
                    child: Visibility(
                      visible: isvisible,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height:3,
                            width: 103,
                            color: ColorConstraints.darkgrey,
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 3,
                              width: 35,
                              color: ColorConstraints.red,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            height: 37,
                            width: 103,
                            color: ColorConstraints.Mainblack,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.info_outlined,size: 24,color: ColorConstraints.MainWhite,),
                                Icon(Icons.more_vert,size: 24,color: ColorConstraints.MainWhite,)
                      
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
          
              
               separatorBuilder: (context,index)=>SizedBox(width: 7,)
               ),
          )
                
        ],
      ),
    );
  }
}
