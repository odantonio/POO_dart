import 'package:myapp_object_orientation/classes/legal_entity.dart';
import 'package:myapp_object_orientation/classes/natural_person.dart';
import 'package:myapp_object_orientation/enums/enum_lists_docs_states.dart';
import 'package:myapp_object_orientation/enums/notification_method.dart';
import 'package:myapp_object_orientation/exceptions/person_exception.dart';
import 'package:myapp_object_orientation/services/send_notification.dart';

void main(List<String> arguments) {
  var pa1 = LegalEntity(
      "obdaOutSorcing",
      "Empresa de Desenvolvimento de Software ME.",
      "(16) 9 9734-1107",
      "obdaOutSorcing@obdaoutsourcing.com",
      "Rua Padre Anchieta",
      "19-44",
      "Vila Seabra",
      "17.060-400",
      "028.173.066/0001-83",
      Estados.SP,
      token: "153432",
      tipoNotificacao: TipoNotificacao.EMAIL);
  print(pa1);

  var p1 = NaturalPerson(
      "Olavo",
      "D'Antonio",
      "(16) 9 9734-1107",
      "odantonio@aol.com",
      "Rua Padre Anchieta",
      "19-44",
      "Vila Seabra",
      "17.060-400",
      TiposDocumentos.RG,
      "28.173.066-0",
      Estados.SP,
      tipoNotificacao: TipoNotificacao.SMS);
  print(p1);
  SendingNotification enviar = SendingNotification();
  enviar.notificar(p1);
  enviar.notificar(pa1);
}
