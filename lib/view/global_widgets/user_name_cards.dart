import 'package:flutter/material.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard({
    super.key,
    required this.name, required this.image,
    this.onCardtap,
  });
  final image;
  final name;
  final void Function()? onCardtap;

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: onCardtap,
      
      child: Column(
        children: [
         Image.asset(image,
          height: 92,),
          Text(name,style: TextStyle(color: Colors.white),)
         ],
      
      ),
    );
  }
}