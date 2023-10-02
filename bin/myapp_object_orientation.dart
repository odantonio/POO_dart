import 'package:myapp_object_orientation/classes/legal_entity.dart';
import 'package:myapp_object_orientation/classes/natural_person.dart';
import 'package:myapp_object_orientation/enums/enum_lists_docs_states.dart';
import 'package:myapp_object_orientation/enums/notification_method.dart';

void main(List<String> arguments) {
  var pa1 = LegalEntity(
      "obdaOutSorcing",
      "Empresa de Desenvolvimento de Software ME.",
      "(16) 9 9734-1107",
      "Rua Padre Anchieta",
      "19-44",
      "Vila Seabra",
      "17.060-400",
      "028.173.066/0001-83",
      Estados.SP,
      TipoNotificacao.SMS);
  print(pa1);
  var p1 = NaturalPerson(
      "Olavo",
      "D'Antonio",
      "(16) 9 9734-1107",
      "Rua Padre Anchieta",
      "19-44",
      "Vila Seabra",
      "17.060-400",
      TiposDocumentos.RG,
      "28.173.066-0",
      Estados.SP,
      TipoNotificacao.EMAIL);
  print(p1);
}
