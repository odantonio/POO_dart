/* 
Interfaces:
  A partid da versão 3.0 do DART foram acrescentados Class Modifiers, entre eles INTERFACE.

  Até a versão 3.0, uma interface e uma abstract class são basicamente a mesma coisa.
*/
import 'package:myapp_object_orientation/classes/abstract/abstract_person_class.dart';

abstract interface class Notificacao {
  void enviarNotificacao(ModelPerson person);
}
