import 'package:flutter/material.dart';
import 'package:netflix_clone/util/color_constraints.dart';

class SearchScreencard extends StatelessWidget {
  const SearchScreencard({super.key, this.imageUrl, this.title});
final imageUrl;
    final title;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.only(right: 3),
      color: ColorConstraints.darkgrey,
      child: Row(
        children: [
          Image(image: NetworkImage(imageUrl),height: 76,width: 146,fit: BoxFit.cover,),
          SizedBox(width: 7,),
          Text(title,style: TextStyle(color: ColorConstraints.MainWhite),),
          Spacer(),
          Icon(Icons.play_circle_outlined,color: ColorConstraints.MainWhite,)
        ],
      ),
    );
  }
}