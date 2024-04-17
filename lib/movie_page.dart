import 'package:flutter/material.dart';
import 'package:flutter_app/model/MovieModel.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: const Text("Movie Page"),
      ),
      body: _buildBody(),
      floatingActionButton: _buildFloating(),
    );
  }

  Widget _buildFloating() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.arrow_upward_sharp),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [
        _buildProfilePanel(),
        _buildGridViewBuilder(),
      ],
    );
  }

  Widget _buildProfilePanel() {
    return Container(
      height: 300,
      color: Colors.blue,
    );
  }

  Widget _buildGridViewBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: movieList.length,
      padding: const EdgeInsets.all(5),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1 / 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        return _buildGridItem(movieList[index]);
      },
    );
  }

  Widget _buildGridItem(MovieModel item) {
    return Image.network(
      item.image,
      fit: BoxFit.cover,
    );
  }

  Widget _buildListViewBuilder() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      reverse: false,
      itemCount: movieList.length,
      itemBuilder: (context, index) {
        return _buildItem(movieList[index]);
      },
    );
  }

  Widget _buildItem(MovieModel item) {
    return Container(
      color: Colors.grey[900],
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.maxFinite,
            child: Image.network(item.image, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${item.title}}",
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
