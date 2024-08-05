import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/util/color_constraints.dart';
import 'package:netflix_clone/util/image_constraints.dart';
import 'package:netflix_clone/view/global_widgets/custom_poster_builder.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstraints.Mainblack,
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildToptenSection(context),
              SizedBox(height: 10),
              _buildPlayButtonSection(),
              SizedBox(height: 15,),
              CustomPosterBuilder(
                title: "Previews",
                isCircle: true,
                imageList: Dummydb.imageList1,
              ),
              CustomPosterBuilder(
                title: "Continue watching for Emenalo",
                imageList: Dummydb.imageList1,
                isvisible: true,

              ),
              CustomPosterBuilder(
                title: "Popular on Netflix",
                imageList: Dummydb.imageList1,
              )


            ],
          ),
        ));
  }

  Row _buildPlayButtonSection() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              children: [
                Icon(
                  Icons.add,
                  size: 24,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'My List',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
            SizedBox(
              width: 42,
            ),
            Container(
              height: 45,
              width: 100,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(196, 196, 196, 1),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      size: 24,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Play',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 41,
            ),
            Column(
              children: [
                Icon(
                  Icons.info,
                  size: 24,
                  color: Colors.white,
                ),
                Text(
                  'info',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            )
          ]);
  }

  Stack _buildToptenSection(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 415,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(ImageConstraints.MainPage_image))),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 24, top: 27),
          height: 415,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: AlignmentDirectional.bottomCenter,
                colors: [Colors.transparent, ColorConstraints.Mainblack]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(ImageConstraints.N_logo)),
                  Text(
                    "Tv shows",
                    style: TextStyle(color: Colors.white, fontSize: 17.2),
                  ),
                  Text(
                    "Movies",
                    style: TextStyle(color: Colors.white, fontSize: 17.2),
                  ),
                  Text(
                    "My List",
                    style: TextStyle(color: Colors.white, fontSize: 17.2),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(ImageConstraints.Top10_icon))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("#2 in Nigeria today",
                      style: TextStyle(color: Colors.white, fontSize: 17.2))
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

