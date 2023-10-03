import 'package:myapp_object_orientation/classes/abstract/abstract_person_class.dart';
import 'package:myapp_object_orientation/enums/enum_lists_docs_states.dart';
import 'package:myapp_object_orientation/enums/notification_method.dart';

class LegalEntity extends ModelPerson {
  String _razaoSocial = "";
  String _docNumber = "";

  LegalEntity(
      String nome,
      String razaoSocial,
      String telefone,
      String nomeRua,
      String numero,
      String bairro,
      String cep,
      String numeroDoc,
      Estados estados,
      TipoNotificacao tipoNotificacao)
      : super(nome, telefone, nomeRua, numero, bairro, cep, estados,
            tipoNotificacao) {
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
      "Nome": getFirstName(),
      "Razão Social": _razaoSocial,
      "Tipo de Documento": "CNPJ",
      "Número do Documento": _docNumber,
      "Telefone": getPhoneNumber(),
      "Endereço": getAddressName(),
      "Número": getAddressNumber(),
      "Bairro": getAddressNeighbourhood(),
<<<<<<< HEAD
      "CEP": getAddressZipCode(),
      "Estado": getState(),
      "Tipo de Notificação": getNotificationType()
=======
      "CEP": getAddressZipCode()
>>>>>>> 45be59b69b6a666c3aee1d82f3aa130460259e07
    }.toString();
  }
}
