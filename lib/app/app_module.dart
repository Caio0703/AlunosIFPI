import 'package:alunos_ifpi/app/auth/pages/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module{
  @override
  List<Bind<Object>> get binds => [];
  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [ChildRoute('/', child: (context, args) => LoginPage(),)];
}