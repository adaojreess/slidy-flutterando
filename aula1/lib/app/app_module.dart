import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy/app/pages/home/home_controller.dart';
import 'package:slidy/app/pages/home/home_page.dart';
import 'package:slidy/app/pages/other/other_page.dart';

import 'app_controller.dart';
import 'app_widget.dart';

class AppMudule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/other', child: (_, args) => OtherPage())
      ];

  @override
  Widget get bootstrap => AppWidget();
}
