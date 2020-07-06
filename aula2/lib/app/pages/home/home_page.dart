import 'package:aula2/app/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Observer(
        builder: (_) {
          if (homeController.pokemons.error != null) {
            return Center(
              child: RaisedButton(
                onPressed: () {
                  homeController.fetchPokemons();
                },
                child: Text('Refresh'),
              ),
            );
          }
          if (homeController.pokemons.value != null) {
            var list = homeController.pokemons.value;

            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (_, index) => ListTile(
                title: Text(list[index].name),
              ),
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
