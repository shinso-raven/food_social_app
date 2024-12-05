import 'package:flutter/material.dart';
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
    return const Placeholder();
  }
}
