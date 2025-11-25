import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
    )..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget storyItem(String img) {
    return Container(
      width: 90,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ---------------- STORIES ----------------
            SizedBox(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyItem("https://i.pravatar.cc/150?img=1"),
                  storyItem("https://i.pravatar.cc/150?img=2"),
                  storyItem("https://i.pravatar.cc/150?img=3"),
                  storyItem("https://i.pravatar.cc/150?img=4"),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // ---------------- VIDEO POST ----------------
            Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: const CircleAvatar(
                        backgroundImage: NetworkImage("https://i.pravatar.cc/150")),
                    title: const Text("SanwariyaSeth Pvt. Ltd."),
                    subtitle: const Text("2 hours ago"),
                  ),

                  _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : const SizedBox(height: 200),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.thumb_up_alt_outlined),
                      Icon(Icons.comment_outlined),
                      Icon(Icons.share_outlined),
                    ],
                  ),
                  const SizedBox(height: 10)
                ],
              ),
            ),

            // ---------------- PHOTO POST ----------------
            Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: const CircleAvatar(
                        backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=8")),
                    title: const Text("Dhruv Goyal"),
                    subtitle: const Text("Just now"),
                  ),

                  Image.network(
                    "https://picsum.photos/400/300",
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.thumb_up_alt_outlined),
                      Icon(Icons.comment_outlined),
                      Icon(Icons.share_outlined),
                    ],
                  ),
                  const SizedBox(height: 10)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
