import 'package:flutter/material.dart';
import 'package:flutter_app/state_movie_app/logics/movie_logic.dart';
import 'package:provider/provider.dart';

import '../constants/movie_list_constant.dart';
import '../models/movie_model.dart';

class StateMoviePage extends StatefulWidget {
  const StateMoviePage({Key? key}) : super(key: key);

  @override
  State<StateMoviePage> createState() => _StateMoviePageState();
}

class _StateMoviePageState extends State<StateMoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Home Page"),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
      itemCount: myMovieList.length,
      itemBuilder: (context, index) {
        return _buildItem(myMovieList[index]);
      },
    );
  }

  Widget _buildItem(MyMovieModel item) {
    bool isFavorite = context.watch<MovieLogic>().isFavorite(item);

    return Card(
      child: ListTile(
        leading: SizedBox(
          width: 100,
          height: 100,
          child: Image.network(
            item.image,
            fit: BoxFit.cover,
          ),
        ),
        title: Text("${item.title}"),
        trailing: IconButton(
          onPressed: () {
            if (isFavorite) {
              context.read<MovieLogic>().removeFromList(item);
            } else {
              context.read<MovieLogic>().addToList(item);
            }
          },
          icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border_outlined),
          color: Colors.pink,
        ),
      ),
    );
  }
}
