import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            controller: searchController,
            onChanged: (value) {
              print(value);
            },
            decoration: InputDecoration(
                hintText: "Search anyone...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {

                  },
                  leading: const CircleAvatar(
                    foregroundImage: AssetImage("assets/avatar.jpg"),
                  ),
                  title: const Text("ShaderBytes"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person_add_alt_1),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
