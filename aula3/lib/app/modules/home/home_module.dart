import 'package:aula3/app/shared/utils/constants.dart';
import 'package:aula3/app/modules/home/home_controller.dart';
import 'package:aula3/app/modules/home/home_page.dart';
import 'package:aula3/app/modules/home/repositores/poke_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<PokeRepository>())),
        Bind((i) => PokeRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  List<Router> get routers => [Router('/', child: (_, args) => HomePage())];
}
