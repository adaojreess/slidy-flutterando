import 'package:aula2/app/app_controller.dart';
import 'package:aula2/app/app_widget.dart';
import 'package:aula2/app/pages/home/home_controller.dart';
import 'package:aula2/app/pages/home/home_page.dart';
import 'package:aula2/app/shared/repositores/poke_repository.dart';
import 'package:aula2/app/shared/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController(i.get<PokeRepository>())),
        Bind((i) => PokeRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [Router('/', child: (_, args) => HomePage())];
}
