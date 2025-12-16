import 'package:broadway_infosys/feed_detail_page.dart';
import 'package:broadway_infosys/model/post_model.dart';
import 'package:flutter/material.dart';

class FeedPost extends StatelessWidget {
  final PostModel post;
  const FeedPost({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => FeedDetailPage(title: 'Broadway Infosys '),
          ),
        );
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              // padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(post.userPhoto),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.userName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            post.postDate.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Icon(Icons.more_horiz, color: Colors.white),
                ],
              ),
            ),

            Image.asset(post.photoUrl),
            SizedBox(height: 10),
            Text(
              post.description,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 18,
                    children: [
                      Row(
                        children: [
                          if (post.isPostLiked)
                            Icon(Icons.favorite, color: Colors.white, size: 40)
                          else
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 40,
                            ),
                          if (post.likeCount != 0)
                            Text(
                              post.likeCount.toString(),
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                        ],
                      ),
                      // SizedBox(width: 18),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              // commentCount++;
                              // setState(() {});
                              // print(commentCount);
                            },
                            child: Icon(
                              Icons.comment,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Text(
                            '100',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(width: 18),
                      Icon(Icons.repeat, color: Colors.white, size: 40),
                      // SizedBox(width: 18),
                      Icon(Icons.share, color: Colors.white, size: 40),
                    ],
                  ),
                  Icon(Icons.bookmark, color: Colors.white, size: 40),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Divider(color: Colors.white, height: 20),
            ),
          ],
        ),
      ),
    );
  }
}

// Container
// Row
// Column
// Text
// GestureDetector
// SizedBox
// Padding
// Expanded
// Center

// Buttons
