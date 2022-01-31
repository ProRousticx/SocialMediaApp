import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:myprofile/constants/my_styles.dart';
import 'package:readmore/readmore.dart';

class ProfileTab extends StatefulWidget {
  final String uid;
  const ProfileTab({Key? key, required this.uid}) : super(key: key);

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 70,
              foregroundImage: AssetImage("assets/avatar.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: AutoSizeText(
              "Pradeepta Bhattacharya",
              maxLines: 1,
              minFontSize: 16,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: MyStyles.design.titleText(fontColor: Colors.black),
            ),
          ),
          ReadMoreText(
            'Flutter is Google’s mobile UI open source framework to uild high-quality native (super fast) uild high-quality native (super fast) uild high-quality native (super fast) uild high-quality native (super fast) uild high-quality native (super fast) build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
            trimLines: 3,
            style: MyStyles.design.bodyText(fontColor: Colors.grey.shade700),
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                  onPressed: () {},
                  style: MyStyles.design.buttonStyle(),
                  icon: const Icon(Icons.edit, size: 18),
                  label: Text(
                    "Edit",
                    style: MyStyles.design.buttonText(),
                  )),
              TextButton.icon(
                  onPressed: () {},
                  style: MyStyles.design.buttonStyle(),
                  icon: const Icon(Icons.upload, size: 18),
                  label: Text(
                    "Upload",
                    style: MyStyles.design.buttonText(),
                  ))
            ],
          ),
          ListView.separated(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
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
              separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20)),
        ],
      ),
    );
  }
}
