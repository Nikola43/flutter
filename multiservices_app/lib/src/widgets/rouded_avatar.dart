import 'package:flutter/material.dart';

class RoundedAvatar extends StatelessWidget {
  final String url;

  RoundedAvatar({@required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
                offset: Offset(1, 1),
                spreadRadius: 2.0)
          ],
        ),
        child: ClipOval(
          child: FadeInImage(
              placeholder: AssetImage('assets/img/user.png'),
              image: NetworkImage(this.url),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
