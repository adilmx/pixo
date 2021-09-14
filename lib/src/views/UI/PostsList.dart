import 'package:flutter/cupertino.dart';
import 'package:pixo/src/models/AccessInfos.dart';
import 'package:pixo/src/models/Gender.dart';
import 'package:pixo/src/models/Post.dart';
import 'package:pixo/src/models/User.dart';
import 'package:pixo/src/views/UI/PostCard.dart';

class PostsList extends StatelessWidget {
  final Gender gender = Gender(
    "male",
  );
  final AccessInfos accessInfos = AccessInfos(
    "email@email.com",
    "ait.ahmed.adil",
    "12345678",
  );
  late final User user = User(
    "adil",
    "ait ahmed",
    "0601020304",
    "about me",
    gender,
    "1999-09-02",
    "assets/avatars/mx_avatar.jpg",
    accessInfos,
  );
  late final Post post = Post(
      "assets/mx.png",
      "Cats lover <3 I really like the fact that the x loves the most beautiful pet...",
      user);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (var i = 0; i < 10; i++)
          PostCard(
            post: post,
          ),
      ],
    );
  }
}
