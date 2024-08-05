import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/util/color_constraints.dart';
import 'package:netflix_clone/util/image_constraints.dart';
import 'package:netflix_clone/view/bottom_navBar_screen/bottom_navbar_screen.dart';
import 'package:netflix_clone/view/global_widgets/user_name_cards.dart';
import 'package:netflix_clone/view/main_page/main_page.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorConstraints.Mainblack,
      appBar: AppBar(
      backgroundColor:ColorConstraints.Mainblack,
        centerTitle: true,
        title:  Image.asset(ImageConstraints.LOGO,width: 138,height: 37.2,),

        actions: [Icon(Icons.edit,size: 24,color: Colors.white,)],
      ),
      body: Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: Dummydb.userList.length+1,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          mainAxisExtent: 121,
          mainAxisSpacing: 22,
          crossAxisSpacing: 25
          ), 
        itemBuilder:(context,index)=>
        index<Dummydb.userList.length?
        UserNameCard(
          name:Dummydb.userList[index]["name"] ,
          image:Dummydb.userList[index]["imageUrl"] ,
          onCardtap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavbarScreen()));
          },
        ):
        Container(
          child: UserNameCard(name: "Add", image: ImageConstraints.Add_Button,
          onCardtap: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("This Function is not available right now")));
          },
          ),
        //      child:   Column(
        //        children: [
        //  Image.asset(ImageConstraints.Add_Button,
        //         height: 92,),
        //                     Text("ADD",style: TextStyle(color: Colors.white),)
        
        //        ],
        //      ),
        )
        ),
      )
    );
  }
}

