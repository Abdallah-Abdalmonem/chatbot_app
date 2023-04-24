import 'package:chat_bot/controller/get_posts_controller.dart';
import 'package:chat_bot/core/constant/color.dart';
import 'package:chat_bot/views/widgets/post_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/posts_test_controller.dart';

class PostsScreen extends StatelessWidget {
  PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GetPostsControllerImp controller = Get.put(GetPostsControllerImp());
    return Scaffold(
      backgroundColor: AppColor.body,
      appBar: AppBar(
        elevation: 0,
        title: Text("Posts"),
        backgroundColor: AppColor.appbar,
        actions: [
          IconButton(
              onPressed: () {
                controller.getPosts();
              },
              icon: const Icon(Icons.show_chart))
        ],
      ),
      body: GetBuilder<GetPostsControllerImp>(builder: (e) {
        return ListView.builder(
          itemCount: e.posts.length,
          itemBuilder: (context, index) {
            return itemPost(
                // title: '${a.data!['posts']['data'][index]['message']}',
                title: '${e.posts[index].postsModel[index].message}',
                date: '${e.posts[index].postsModel[index].createdTime}',
                onPress: () {
                  print('object $index');
                });
          },
        );
      }),
    );
  }
}
