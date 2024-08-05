import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/util/color_constraints.dart';
import 'package:netflix_clone/view/coming_soon_screen/new_arrivalcard.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstraints.Mainblack,
        appBar: AppBar(
          backgroundColor: ColorConstraints.Mainblack,
          leading: Padding(
            padding: const EdgeInsets.all(
               12,
            ),
            child: CircleAvatar(
radius: 5,              backgroundColor: ColorConstraints.red,
              child: Icon(
                Icons.notifications,
                color: ColorConstraints.MainWhite,
                size: 19,
              ),
            ),
          ),
          titleSpacing: 0,
          title: Text(
            "Notifications",
            style: TextStyle(
                color: ColorConstraints.MainWhite,
                fontWeight: FontWeight.bold,
                fontSize: 17),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only( top: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: 
                    List.generate(2,(index)=>Container(
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 12),
                
                      height: 65,
                      decoration: BoxDecoration(border: Border.all(color: Colors.transparent),
                       color: ColorConstraints.darkgrey,
                
                      ),
                      child: Row(
                        children: [
                          Image.network(fit: BoxFit.cover,"https://th.bing.com/th?id=OIP.fS7drXelAzXScI8AZCpW0QHaKX&w=211&h=295&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
                          height: 55,width: 113,),
                          SizedBox(width: 30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("New Arival",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorConstraints.MainWhite.withOpacity(1)
                              ),),
                               Text("BATTLESHIP",style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: ColorConstraints.MainWhite.withOpacity(.83)
                              ),),
                               Text("NOV 6",style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: ColorConstraints.MainWhite.withOpacity(.43)
                              ),),
                            ],
                          )
                
                        ],
                      ),
                    ))
                  
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)=>                NewArrivalCard(
                    Title: Dummydb.commingsoondata[index]["title"],
                    image: Dummydb.commingsoondata[index]["image"],
                    description: Dummydb.commingsoondata[index]["text"],
                    date: Dummydb.commingsoondata[index]["date"],
                  )
, separatorBuilder: (context,index)=>SizedBox(height:17), itemCount: Dummydb.commingsoondata.length),
              ],
            ),
          ),
        
        )
          
      ),
    );
  }
}
