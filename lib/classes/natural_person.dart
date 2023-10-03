import 'package:myapp_object_orientation/classes/abstract/abstract_person_class.dart';
import 'package:myapp_object_orientation/enums/enum_lists_docs_states.dart';
import 'package:myapp_object_orientation/enums/notification_method.dart';

class NaturalPerson extends ModelPerson {
  String _surName = "";
  TiposDocumentos _docType = TiposDocumentos.Fornecer;
  String _docNumber = "";

  NaturalPerson(
      String nome,
      String sobrenome,
      String telefone,
      String email,
      String nomeRua,
      String numero,
      String bairro,
      String cep,
      TiposDocumentos tiposDocumentos,
      String numeroDoc,
      Estados estados,
      {String token = "",
      TipoNotificacao tipoNotificacao = TipoNotificacao.Nenhum})
      : super(nome, telefone, email, nomeRua, numero, bairro, cep, estados,
            token: token, tipoNotificacao: tipoNotificacao) {
    _docType = tiposDocumentos;
    _docNumber = numeroDoc;
    _surName = sobrenome;
  }
  void setSurName(String surName) {
    _surName = surName;
  }

  String getSurName() {
    return _surName;
  }

  void setDocType(TiposDocumentos tiposDocumentos) {
    _docType = tiposDocumentos;
  }

  void setDocNumber(String docNumber) {
    _docNumber = docNumber;
  }

  TiposDocumentos getDocType() {
    return _docType;
  }

  String getDocNumber() {
    return _docNumber;
  }

  @override
  String toString() {
    return {
      "Nome": getFirstName(),
      "Sobrenome": _surName,
      "Tipo de Documento": _docType,
      "Número do Documento": _docNumber,
      "Telefone": getPhoneNumber(),
      "e-mail": getEmail(),
      "Token PUSH Notification": getToken(),
      "Endereço": getAddressName(),
      "Número": getAddressNumber(),
      "Bairro": getAddressNeighbourhood(),
      "CEP": getAddressZipCode(),
      "Estados": getState(),
      "Tipo de Notificação": getNotificationType()
    }.toString();
  }
}
