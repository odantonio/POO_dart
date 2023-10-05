import 'package:myapp_object_orientation/classes/models/abstract_person_class.dart';
import 'package:myapp_object_orientation/enums/enum_lists_docs_states.dart';
import 'package:myapp_object_orientation/enums/notification_method.dart';

class LegalEntity extends ModelPerson {
  String _razaoSocial = "";
  String _docNumber = "";

  LegalEntity(
      String nome,
      String razaoSocial,
      String telefone,
      String email,
      String nomeRua,
      String numero,
      String bairro,
      String cep,
      String numeroDoc,
      Estados estados,
      {String token = "",
      TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, telefone, email, nomeRua, numero, bairro, cep, estados,
            token: token, tipoNotificacao: tipoNotificacao) {
    _razaoSocial = razaoSocial;
    _docNumber = numeroDoc;
  }

  void setRazaoSocial(String razaoSocial) {
    _razaoSocial = razaoSocial;
  }

  void setDocNumber(String docNumber) {
    _docNumber = docNumber;
  }

  String getRazaoSocial() {
    return _razaoSocial;
  }

  String getDocNumber() {
    return _docNumber;
  }

  @override
  String toString() {
    return {
      "Nome da Empresa": getFirstName(),
      "Razão Social": _razaoSocial,
      "Tipo de Documento": "CNPJ",
      "Número do Documento": _docNumber,
      "Telefone": getPhoneNumber(),
      "Token PUSH Notification": getToken(),
      "e-mail": getEmail(),
      "Endereço": getAddressName(),
      "Número": getAddressNumber(),
      "Bairro": getAddressNeighbourhood(),
      "CEP": getAddressZipCode(),
      "Estado": getState(),
      "Tipo de Notificação": getNotificationType()
    }.toString();
  }
}
