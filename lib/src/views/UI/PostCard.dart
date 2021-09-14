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
          Padding(
            padding: EdgeInsets.zero,
            child: 
              ListTile(
                leading: Text(
                  post.user.accessInfos.username + " .",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ),
          Padding(
            padding: EdgeInsets.zero,
            child: ListTile(
              leading: Text(
                post.caption,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.favorite,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.comment,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.share,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
