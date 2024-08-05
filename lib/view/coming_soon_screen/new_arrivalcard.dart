import 'package:flutter/material.dart';
import 'package:netflix_clone/util/color_constraints.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({
    Key? key, this.image, this.Title, this.description, this.date,
  }) : super(key: key);
final image;
final Title;
final description;
final date;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            height: 195,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(Icons.notifications, size: 24, color: ColorConstraints.MainWhite),
                    Text(
                      "Remind Me",
                      style: TextStyle(
                        color: ColorConstraints.MainWhite,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 45),
                Column(
                  children: [
                    Icon(Icons.share, size: 24, color: ColorConstraints.MainWhite),
                    Text(
                      "Share",
                      style: TextStyle(
                        color: ColorConstraints.MainWhite,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: TextStyle(fontSize: 11, color: ColorConstraints.MainWhite.withOpacity(.83)),
                ),
                SizedBox(height: 13),
                Text(
                  Title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: ColorConstraints.MainWhite,
                  ),
                ),
                SizedBox(height: 13),
                Text(
                  description,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: ColorConstraints.MainWhite.withOpacity(.83),
                  ),
                ),
                SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Steamy .",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: ColorConstraints.MainWhite,
                      ),
                    ),
                    Text(
                      "Soapy .",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: ColorConstraints.MainWhite,
                      ),
                    ),
                    Text(
                      "Slowburn .",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: ColorConstraints.MainWhite,
                      ),
                    ),
                    Text(
                      "SuspensFul .",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: ColorConstraints.MainWhite,
                      ),
                    ),
                    Text(
                      "Teen .",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: ColorConstraints.MainWhite,
                      ),
                    ),
                    Text(
                      "Mystery .",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: ColorConstraints.MainWhite,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      
    );
  }
}
