import 'package:flutter/material.dart';
import 'package:flutter_app/state_movie_app/logics/movie_logic.dart';
import 'package:flutter_app/state_movie_app/models/movie_model.dart';
import 'package:provider/provider.dart';

class StateFavoritePage extends StatefulWidget {
  const StateFavoritePage({Key? key}) : super(key: key);

  @override
  State<StateFavoritePage> createState() => _StateFavoritePageState();
}

class _StateFavoritePageState extends State<StateFavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Favorite Page"),
    );
  }

  Widget _buildBody() {
    List<MyMovieModel> favoriteList = context.watch<MovieLogic>().favoriteList;

    return ListView.builder(
      itemCount: favoriteList.length,
      itemBuilder: (context, index) {
        return _buildItem(favoriteList[index]);
      },
    );
  }

  Widget _buildItem(MyMovieModel item) {
    return Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          if (direction == DismissDirection.endToStart) {
            context.read<MovieLogic>().removeFromList(item);
          }
        },
        child: Card(
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
                // remove item from favorite
                context.read<MovieLogic>().removeFromList(item);
              },
              icon: const Icon(Icons.remove_circle),
            ),
          ),
        ));
  }
}
