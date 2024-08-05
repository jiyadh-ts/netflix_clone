import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/util/color_constraints.dart';
import 'package:netflix_clone/view/searchscreen/widget/search_screencard.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstraints.Mainblack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            
            decoration: InputDecoration(
              fillColor: ColorConstraints.darkgrey,
              filled: true,
              prefixIcon: Icon(Icons.search,color: ColorConstraints.lightgrey,),
              hintText:"Search for a Show,Movie,genre etc",hintStyle: TextStyle(color:ColorConstraints.lightgrey),
              suffixIcon: Icon(Icons.mic,color:ColorConstraints.lightgrey)
            ),
          ),
          SizedBox(height: 21,),
          Text("Top Searches",style: TextStyle(color: ColorConstraints.MainWhite,fontSize: 27,fontWeight: FontWeight.bold),),
          SizedBox(height: 21,),
          Expanded(child: ListView.separated(itemBuilder: (context,index)=>SearchScreencard(
            imageUrl: Dummydb.searchList[index]['url'],
            title: Dummydb.searchList[index]['title'],
          ),
           separatorBuilder: (context,index)=>Container(
            height: 3,
            color: ColorConstraints.Mainblack,
           ),
            itemCount: 10))
        ],
      ),
    );
  }
}