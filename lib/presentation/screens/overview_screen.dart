import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/custom_drawer.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/lists/persons_list.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overview'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
          )
        ],
      ),
      drawer: const CustomDrawer(),
      body: PersonsList(),
    );
  }
}
