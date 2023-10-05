/* 
Implementando a interface de notificação através das classes:
SendNofiticationSMS
SendNofiticationEmail
SendNofiticationPush

Apenas mostrando na tela. Não há contratação de serviços mensageiros de notificação.
 */
import 'package:myapp_object_orientation/classes/models/abstract_person_class.dart';
import 'package:myapp_object_orientation/classes/models/notification.dart';
import 'package:myapp_object_orientation/enums/notification_method.dart';

class SendNofiticationSMS implements Notificacao {
  @override
  void enviarNotificacao(ModelPerson person) {
    print(
        "Enviando Notificacao para ${person.getFirstName()} através do SMS ${person.getPhoneNumber()}.");
  }
}

class SendNofiticationEMAIL implements Notificacao {
  @override
  void enviarNotificacao(ModelPerson person) {
    print(
        "Enviando Notificacao para ${person.getFirstName()} através do email ${person.getEmail()}.");
  }
}

class SendNofiticationPUSH implements Notificacao {
  @override
  void enviarNotificacao(ModelPerson person) {
    print(
        "Enviando Notificacao para ${person.getFirstName()} através de Push System Notification com token: ${person.getToken()}.");
  }
}

class SendingNotification {
  Notificacao? notificacao;

  void notificar(ModelPerson person) {
    switch (person.getNotificationType()) {
      case TipoNotificacao.SMS:
        notificacao = SendNofiticationSMS();
        break;
      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = SendNofiticationPUSH();
        break;
      case TipoNotificacao.EMAIL:
        notificacao = SendNofiticationEMAIL();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(person);
    } else {
      print("Sem notificação");
    }
  }
}
