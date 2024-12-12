import 'package:flutter/material.dart';
import 'package:social_food_app/components/circle_image.dart';
import 'package:social_food_app/models/post.dart';

class FriendPostListView extends StatelessWidget {
  FriendPostListView({super.key, required this.friendPost});

  final List<Post> friendPost;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Social Chef",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        ListView.separated(
          shrinkWrap: true,
          primary: false,
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 16,
            );
          },
          itemCount: friendPost.length,
          itemBuilder: (context, index) {
            final post = friendPost[index];
            //TODO: Construir Tarjeta de post

            return FriendPost(
              post: post,
            );
          },
        )
      ],
    );
  }
}

class FriendPost extends StatelessWidget {
  const FriendPost({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleImageWidget(
                imageProvider: AssetImage(post.profileImageUrl),
                radius: 28,
              ),
              SizedBox(
                width: 8,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                // Text("${post.id}",

                Text(post.comment,
                    style: Theme.of(context).textTheme.bodyLarge),

                Text(
                  '${post.timestamp} minutes ago',
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ])
            ],
          ),
          Center(
            child: Image(
                width: 300,
                image:
                    AssetImage("assets/magazine_pics/" + post.foodPictureUrl)),
          ),
        ],
      ),
    );
  }
}
