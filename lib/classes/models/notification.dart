import 'package:myapp_object_orientation/classes/models/abstract_person_class.dart';

// #Interfaces:
//   A partid da versão 3.0 do DART foram acrescentados __Class Modifiers__, entre eles __INTERFACE__.
//
//   Até a versão 3.0, uma interface e uma abstract class são basicamente a mesma coisa.
abstract interface class Notificacao {
  void enviarNotificacao(ModelPerson person);
}
