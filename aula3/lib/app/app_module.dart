import 'package:aula3/app/app_controller.dart';
import 'package:aula3/app/app_widget.dart';
import 'package:aula3/app/modules/home/home_module.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
    Router('/', module: HomeModule())
  ];
}
