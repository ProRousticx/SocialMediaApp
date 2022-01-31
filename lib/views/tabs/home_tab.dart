import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, itemIndex) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade400, blurRadius: 20, spreadRadius: 0.5)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.asset(
                    "assets/post.jpg",
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const CircleAvatar(
                    foregroundImage: AssetImage("assets/avatar.jpg"),
                  ),
                  title: const Text("ShaderBytes"),
                  subtitle: const Text("posted 1min ago"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_up),
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20));
  }
}
