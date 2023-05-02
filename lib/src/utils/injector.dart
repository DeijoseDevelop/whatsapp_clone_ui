import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:whatsapp_clone_ui/src/controllers/controllers.dart';
import 'package:whatsapp_clone_ui/src/data/repository/repository.dart';
import 'package:whatsapp_clone_ui/src/data/use_cases/use_cases.dart';

class Injector {
  static List<SingleChildWidget> dependencies = [
    ChangeNotifierProvider(create: (_) => ContactController(
      getContactsUseCase: GetContactsUseCase(
        repository: ApiRepository(),
      ),
    )),
  ];
}
