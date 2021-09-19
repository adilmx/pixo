import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixo/src/models/Post.dart';

class PostCard extends StatelessWidget {
  final Post post;
  PostCard({required this.post});
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                post.user.avatar,
              ),
            ),
            title: Text(post.user.accessInfos.username,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text(
              'Marrakech',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Image.asset(
            post.picture,
          ),
          SizedBox(
            width: double.infinity,
            child: Container(
              child: Text(
                post.user.accessInfos.username + " .",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
          ),
          SizedBox(
            width: double.infinity,
            child: Container(
                child: Text(
                post.caption,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                ),
                tooltip: 'Favorite',
                color: Colors.red[400],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.comment,
                ),
                tooltip: 'Comment',
                color: Colors.grey[800],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                ),
                tooltip: 'Share',
                color: Colors.grey[800],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
